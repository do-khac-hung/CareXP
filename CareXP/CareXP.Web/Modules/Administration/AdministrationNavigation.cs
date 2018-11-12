using Serenity.Navigation;
using MyPages = CareXP.Administration.Pages;
using Administration = CareXP.Administration.Pages;

[assembly: NavigationMenu(9000, "Administration", icon: "fa-desktop")]
[assembly: NavigationLink(9000, "Administration/Exceptions Log", url: "~/errorlog.axd", permission: CareXP.Administration.PermissionKeys.Logs, icon: "fa-ban", Target = "_blank")]
[assembly: NavigationLink(9000, "Administration/Languages", typeof(Administration.LanguageController), icon: "fa-comments")]
[assembly: NavigationLink(9000, "Administration/Translations", typeof(Administration.TranslationController), icon: "fa-comment-o")]
[assembly: NavigationLink(9000, "Administration/Roles", typeof(Administration.RoleController), icon: "fa-lock", Permission = CareXP.Administration.PermissionKeys.Role.General)]
[assembly: NavigationLink(9000, "Administration/User Management", typeof(Administration.UserController), icon: "fa-users", Permission = CareXP.Administration.PermissionKeys.User.General)]
[assembly: NavigationLink(int.MaxValue, "Administration/Tenant", typeof(MyPages.TenantController), icon: null, Permission = CareXP.Administration.PermissionKeys.Tenant.View)]