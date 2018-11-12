namespace CareXP.Authorization {
    export declare let userDefinition: ScriptUserDefinition;

    Object.defineProperty(Authorization, 'userDefinition', {
        get: function () {
            // gọi tới dynamic script <see cref="CareXP.Administration.Endpoints.UserController"/> để có thông tin về user hiện thời
            return Q.getRemoteData('UserData');
        }
    });

    export function hasPermission(permissionKey: string) {
        let ud = userDefinition;
        return ud.Username === 'admin' || !!ud.Permissions[permissionKey];
    }
}