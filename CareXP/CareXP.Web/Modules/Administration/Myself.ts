namespace CareXP.Authorization {
    export class Myself {

    }
    /// Kiêm tra xem tài khoản hiện thời đăng nhập có quyền xem thông tin Tenant không?
    export function CouldViewTenant(): boolean {
        // Quyền cần kiểm tra
        var RequiredPermissionKey = "Administration:Tenant.View";
        var res = CareXP.Authorization.hasPermission(RequiredPermissionKey);
        //var permissions = CareXP.Authorization.userDefinition.Permissions;
        //permissions[RequiredPermissionKey];
        return res;
    }
}