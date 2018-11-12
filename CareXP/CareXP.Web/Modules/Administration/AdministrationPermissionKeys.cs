
using Serenity.Extensibility;
using System.ComponentModel;

namespace CareXP.Administration
{
    [NestedPermissionKeys]
    [DisplayName("Administration")]
    public class PermissionKeys
    {
        [Description("Permissions")]
        public const string Security = "Administration:Security";

        [Description("Languages and Translations")]
        public const string Translation = "Administration:Translation";

        /// <summary>
        ///  Xem log các sự cố của hệ thống
        /// </summary>
        [Description("Log Management")]
        public const string Logs = "Administration:Logs";

        /// <summary>
        ///  Quyên mở rộng của lập trình viên
        /// </summary>
        [Description("Dev Area")]
        public const string Devs = "Administration:Devs";


        public class Tenant
        {
            /// <summary>
            ///    Quyền truy xuất thông tin Tenant ở tren server, nhưng không gửi kết quả về client.
            ///    Phục vụ cho nhóm đối tượng amin của doanh nghiệp.
            /// </summary>
            [Description("[Tenant General]")]
            public const string General = "Administration:Tenant:General";

            /// <summary>
            ///     Quyền Delete ngầm định sẽ bật 2 quyền General và View
            /// </summary>
            [ImplicitPermission(General), ImplicitPermission(View)]
            public const string Delete = "Administration:Tenant:Delete";

            /// <summary>
            ///     Quyền Sửa ngầm định sẽ bật 2 quyền General và View
            /// </summary>
            [Description("Create/Update"), ImplicitPermission(General), ImplicitPermission(View)]
            public const string Modify = "Administration:Tenant:Modify";

            /// <summary>
            ///     Quyền xem
            /// </summary>
            [ImplicitPermission(General)]
            public const string View = "Administration:Tenant:View";
        }

   public class User
        {
            [Description("[User General]")]
            public const string General = "Administration:User:General";

            /// <summary>
            ///     Quyền Delete ngầm định sẽ bật 2 quyền General và View
            /// </summary>
            [ImplicitPermission(General), ImplicitPermission(View)]
            public const string Delete = "Administration:User:Delete";

            /// <summary>
            ///     Quyền Sửa ngầm định sẽ bật 2 quyền General và View
            /// </summary>
            [Description("Create/Update"), ImplicitPermission(General), ImplicitPermission(View)]
            public const string Modify = "Administration:User:Modify";

            /// <summary>
            ///     Quyền xem
            /// </summary>
            [ImplicitPermission(General)]
            public const string View = "Administration:User:View";
        }


        public class Role
         {
             [Description("[Role General]")]
             public const string General = "Administration:Role:General";
 
             /// <summary>
             ///     Quyền Delete ngầm định sẽ bật 2 quyền General và View
             /// </summary>
             [ImplicitPermission(General), ImplicitPermission(View)]
             public const string Delete = "Administration:Role:Delete";
 
             /// <summary>
             ///     Quyền Sửa ngầm định sẽ bật 2 quyền General và View
             /// </summary>
             [Description("Create/Update"), ImplicitPermission(General), ImplicitPermission(View)]
             public const string Modify = "Administration:Role:Modify";

             /// <summary>
             ///     Quyền xem
             /// </summary>
             [ImplicitPermission(General)]
             public const string View = "Administration:Role:View";
         }
 
    }
}
