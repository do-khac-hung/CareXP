namespace CareXP
{
    using Serenity;
    using System;

    /// <summary>
    ///     Model chứa thông tin về tài khoản đang đăng nhập hiện thời
    /// </summary>
    /// <seealso cref="Serenity.IUserDefinition" />
    [Serializable]
    public class UserDefinition : IUserDefinition
    {
        public string Id { get { return UserId.ToInvariant(); } }
        public string DisplayName { get; set; }
        public string Email { get; set; }
        public string UserImage { get; set; }
        public short IsActive { get; set; }
        public int UserId { get; set; }
        public string Username { get; set; }
        public string PasswordHash { get; set; }
        public string PasswordSalt { get; set; }
        public string Source { get; set; }
        public DateTime? UpdateDate { get; set; }
        public DateTime? LastDirectoryUpdate { get; set; }

        /// <summary>
        ///      Sử dụng thêm thông tin TenantID trong quá trình xác thực
        ///      Class này chính là Model, được trả về khi dev hỏi thông tin về tài khoản
        ///      đang đăng nhập hiện thời
        /// </summary>
        /// <see cref="DemoSereneMultiTenants.Administration.UserRetrieveService.GetFirst(System.Data.IDbConnection, Serenity.Data.BaseCriteria)" langword="Hàm sẽ tạo ra dữ liệu đẩy vào class này"/>
        public int TenantId { get; set; }

        public string TenantName { get; set; }

    }
}