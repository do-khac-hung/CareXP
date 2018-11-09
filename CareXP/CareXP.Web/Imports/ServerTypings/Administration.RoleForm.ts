namespace CareXP.Administration {
    export interface RoleForm {
        RoleName: Serenity.StringEditor;
        TenantId: Serenity.LookupEditor;
    }

    export class RoleForm extends Serenity.PrefixedContext {
        static formKey = 'Administration.Role';
        private static init: boolean;

        constructor(prefix: string) {
            super(prefix);

            if (!RoleForm.init)  {
                RoleForm.init = true;

                var s = Serenity;
                var w0 = s.StringEditor;
                var w1 = s.LookupEditor;

                Q.initFormType(RoleForm, [
                    'RoleName', w0,
                    'TenantId', w1
                ]);
            }
        }
    }
}

