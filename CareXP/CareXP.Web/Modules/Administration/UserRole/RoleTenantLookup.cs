using Serenity.ComponentModel;
using Serenity.Data;
using Serenity.Web;
using CareXP.Administration.Entities;
using Serenity;

namespace CareXP.Administration.Scripts
{
    /// <summary>
    ///       dynamic script mới, lấy ra cặp thông tin  RoleId,RoleName, nhưng có lọc theo Tenant hiện thời, phục vụ cho [LookupEditor] mới
    /// </summary>
    /// <remarks>  [LookupEditor]  phải sử dụng đúng tên Key khai báo ở đây </remarks>
    /// /// <remarks>  [Expiration]  Dữ liệu này hết hạn sử dụng ngay lập tức, báo hiệu client phải lấy lại từ Server, không được cache </remarks>
    [LookupScript("Administration.RoleTenant", Expiration = -1)]
    public class RoleTenantLookup: RowLookupScript<RoleRow>
    {
        public RoleTenantLookup()
        {
            IdField = "RoleId";
            TextField = "RoleName";
        }

        protected override void PrepareQuery(SqlQuery query)
        {
            // Lấy tài khoản user hiện thời
            var user = (UserDefinition)Authorization.UserDefinition;
            var fld = Entities.RoleRow.Fields;
            // Lấy ra cặp thông tin ID, Name
            query.Distinct(true).Select(fld.RoleId, fld.RoleName);
            //Và kiểm tra quyền để lọc theo Tenant
            if (!Authorization.HasPermission(PermissionKeys.Tenant.View))
            {
                query.Where(new Criteria(fld.TenantId) == user.TenantId || new Criteria(fld.TenantId) == TenantRow.SHARED_TENANT_ID);

            }

        }
        protected override void ApplyOrder(SqlQuery query)
        { }
    }
}