namespace CareXP
{
    using Serenity.ComponentModel;
    using System;
    using System.Collections.Generic;

    /// <summary>
    ///  Cấu trúc chứa thông tin về người dùng đang đăng nhập hiện thời
    ///  Dữ liệu này sẽ có mặt trong script code được sử dụng trong dynamic script.
    ///  Hãy bổ sung thêm các properties bạn cần vào đây và sử dụng nó ở trong  hàm ở <see cref="CareXP.Administration.Endpoints.UserController"></see>
    /// </summary>
    [ScriptInclude]
    public class ScriptUserDefinition
    {
        public String Username { get; set; }
        public String DisplayName { get; set; }
        public Boolean IsAdmin { get; set; }
        public Dictionary<string, bool> Permissions { get; set; }
        public int TenantId { get; set; }
    }
}