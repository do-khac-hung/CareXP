

namespace CareXP.Administration.Repositories
{
    using Serenity;
    using Serenity.Data;
    using Serenity.Services;
    using System.Data;
    using MyRow = Entities.RoleRow;

    public class RoleRepository
    {
        private static MyRow.RowFields fld { get { return MyRow.Fields; } }

        public SaveResponse Create(IUnitOfWork uow, SaveRequest<MyRow> request)
        {
            return new MySaveHandler().Process(uow, request, SaveRequestType.Create);
        }

        public SaveResponse Update(IUnitOfWork uow, SaveRequest<MyRow> request)
        {
            return new MySaveHandler().Process(uow, request, SaveRequestType.Update);
        }

        public DeleteResponse Delete(IUnitOfWork uow, DeleteRequest request)
        {
            return new MyDeleteHandler().Process(uow, request);
        }

        public RetrieveResponse<MyRow> Retrieve(IDbConnection connection, RetrieveRequest request)
        {
            return new MyRetrieveHandler().Process(connection, request);
        }

        public ListResponse<MyRow> List(IDbConnection connection, ListRequest request)
        {
            return new MyListHandler().Process(connection, request);
        }

        /// <summary>
        ///     Xử lý sự kiện submit Create/Edit một bản ghi Tenant lên server
        /// </summary>
        private class MySaveHandler : SaveRequestHandler<MyRow> {
            /// <summary>
            ///     Thiết lập các giá trị mặc định trước khi lưu vào db
            /// </summary>
            protected override void SetInternalFields()
            {
                base.SetInternalFields();

                if (IsCreate)
                {
                    var user = (UserDefinition)Authorization.UserDefinition;
                    // Nếu tài khoản không có quyền sửa tenant thì chỉ được phép tạo Role của chính mình
                    if (!Authorization.HasPermission(PermissionKeys.Tenant.Modify)) { 
                        Row.TenantId = user.TenantId;
                    }
                    // Bug: Đăng nhập với tài khoản admin, tạo mới role thuộc Tenant khác. Kêt quả là role đó
                    // vẫn thuộc Tenant của admin. Sửa thì lại được.
                }
            }
        }
        private class MyDeleteHandler : DeleteRequestHandler<MyRow> { }
        private class MyRetrieveHandler : RetrieveRequestHandler<MyRow> { }
        private class MyListHandler : ListRequestHandler<MyRow> { }


    }
}