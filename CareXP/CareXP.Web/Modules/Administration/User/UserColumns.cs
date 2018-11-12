
namespace CareXP.Administration.Columns
{
    using Serenity.ComponentModel;
    using System;
    using System.ComponentModel;

    [ColumnsScript("Administration.User")]
    [BasedOnRow(typeof(Entities.UserRow), CheckNames = true)]
    public class UserColumns
    {
        [EditLink, AlignRight, Width(55)]
        public String UserId { get; set; }
        [EditLink, Width(150)]
        public String Username { get; set; }
        [Width(150)]
        public String DisplayName { get; set; }
        [Width(250)]
        public String Email { get; set; }
        [Width(100)]
        public String Source { get; set; }

        /// <summary>
        /// Tên của Tenant tạo ra Role hiện thời
        /// </summary>
        [DisplayName("Db.Administration.Tenant.TenantName"), Width(150), QuickFilter]
        public String TenantName { get; set; }
    }
}
