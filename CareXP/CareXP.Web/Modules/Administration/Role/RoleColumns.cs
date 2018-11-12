
namespace CareXP.Administration.Forms
{
    using Serenity.ComponentModel;
    using Serenity.Data.Mapping;
    using System;
    using System.ComponentModel;

    [ColumnsScript("Administration.Role")]
    [BasedOnRow(typeof(Entities.RoleRow), CheckNames = true)]  //Bởi vì ta không sử dụng thêm trường TenantName truy vấn ở bảng khác, đã có ở RoleRow, nên cứ để CheckName=true
    public class RoleColumns
    {
        [EditLink, DisplayName("Db.Shared.RecordId"), AlignRight]
        public Int32 RoleId { get; set; }
        [EditLink, Width(300)]
        public String RoleName { get; set; }

        /// <summary>
        /// Tên của Tenant tạo ra Role hiện thời
        /// </summary>
        [DisplayName("Db.Administration.Tenant.TenantName"), Width(150), QuickFilter]
        public String TenantName { get; set; }
    }
}