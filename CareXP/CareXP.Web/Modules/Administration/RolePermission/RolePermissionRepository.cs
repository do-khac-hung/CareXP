
namespace CareXP.Administration.Repositories
{
    using Serenity;
    using Serenity.Data;
    using Serenity.Services;
    using System;
    using System.Collections.Generic;
    using System.Data;
    using System.Linq;
    using MyRow = Entities.RolePermissionRow;

    public class RolePermissionRepository
    {
        private static MyRow.RowFields fld { get { return MyRow.Fields; } }

        public SaveResponse Update(IUnitOfWork uow, RolePermissionUpdateRequest request)
        {
            Check.NotNull(request, "request");
            Check.NotNull(request.RoleID, "roleID");
            Check.NotNull(request.Permissions, "permissions");

            var roleID = request.RoleID.Value;
            var oldList = new HashSet<string>(
                GetExisting(uow.Connection, roleID, request.Module, request.Submodule)
                .Select(x => x.PermissionKey), StringComparer.OrdinalIgnoreCase);

            var newList = new HashSet<string>(request.Permissions.ToList(), 
                StringComparer.OrdinalIgnoreCase);

            /// Lấy ra các quyền được hiển thị trên giao diện
            var allowedKeys = new UserPermissionRepository().ListPermissionKeys().Entities.ToDictionary(x => x);

            /// Nếu thấy trong danh sách dữ liệu gửi về không có quyền mà được hiện thị trên giao diện
            /// tức là có ai đó trang truy cập trái phép rồi
            if (newList.Any(x => !allowedKeys.ContainsKey(x)))
                throw new AccessViolationException();

            /// Nếu không phải tài khoản Security, mà lại cố tình thay đổi thêm/xóa/ sửa các quyền Adminitration của các Role
            if (!Authorization.HasPermission(PermissionKeys.Security) && newList.Any(x => x.Contains("Administration") ))
            {
                throw new MemberAccessException();
            }

            if (oldList.SetEquals(newList))
                return new SaveResponse();

            foreach (var k in oldList)
            {
                if (newList.Contains(k))
                    continue;

                new SqlDelete(fld.TableName)
                    .Where(
                        new Criteria(fld.RoleId) == roleID &
                        new Criteria(fld.PermissionKey) == k)
                    .Execute(uow.Connection);
            }

            foreach (var k in newList)
            {
                if (oldList.Contains(k))
                    continue;

                uow.Connection.Insert(new MyRow
                {
                    RoleId = roleID,
                    PermissionKey = k
                });
            }

            BatchGenerationUpdater.OnCommit(uow, fld.GenerationKey);
            BatchGenerationUpdater.OnCommit(uow, Entities.UserPermissionRow.Fields.GenerationKey);

            return new SaveResponse();
        }

        private List<MyRow> GetExisting(IDbConnection connection, Int32 roleId, string module, string submodule)
        {
            string prefix = "";
            module = module.TrimToEmpty();
            submodule = submodule.TrimToEmpty();

            if (module.Length > 0)
                prefix = module;

            if (submodule.Length > 0)
                prefix += ":" + submodule;

            return connection.List<MyRow>(q =>
            {
                q.Select(fld.RolePermissionId, fld.PermissionKey)
                    .Where(new Criteria(fld.RoleId) == roleId);

                if (prefix.Length > 0)
                    q.Where(
                        new Criteria(fld.PermissionKey) == prefix |
                        new Criteria(fld.PermissionKey).StartsWith(prefix + ":"));
            });
        }

        public RolePermissionListResponse List(IDbConnection connection, RolePermissionListRequest request)
        {
            Check.NotNull(request, "request");
            Check.NotNull(request.RoleID, "roleID");

            string prefix = "";
            string module = request.Module.TrimToEmpty();
            string submodule = request.Submodule.TrimToEmpty();

            if (module.Length > 0)
                prefix = module;

            if (submodule.Length > 0)
                prefix += ":" + submodule;

            var response = new RolePermissionListResponse();
            
            response.Entities = GetExisting(connection, request.RoleID.Value, request.Module, request.Submodule)
                .Select(x => x.PermissionKey).ToList();

            return response;
        }
    }
}