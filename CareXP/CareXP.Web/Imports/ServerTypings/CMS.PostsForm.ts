namespace CareXP.CMS {
    export interface PostsForm {
        TenantId: Serenity.IntegerEditor;
        ModifiedDate: Serenity.DateEditor;
        ModifiedBy: Serenity.IntegerEditor;
        CustomerId: Serenity.IntegerEditor;
        Status: Serenity.StringEditor;
        Vin: Serenity.StringEditor;
        Model: Serenity.StringEditor;
        Subject: Serenity.StringEditor;
        MainContent: Serenity.StringEditor;
        FeatureImage: Serenity.StringEditor;
    }

    export class PostsForm extends Serenity.PrefixedContext {
        static formKey = 'CMS.Posts';
        private static init: boolean;

        constructor(prefix: string) {
            super(prefix);

            if (!PostsForm.init)  {
                PostsForm.init = true;

                var s = Serenity;
                var w0 = s.IntegerEditor;
                var w1 = s.DateEditor;
                var w2 = s.StringEditor;

                Q.initFormType(PostsForm, [
                    'TenantId', w0,
                    'ModifiedDate', w1,
                    'ModifiedBy', w0,
                    'CustomerId', w0,
                    'Status', w2,
                    'Vin', w2,
                    'Model', w2,
                    'Subject', w2,
                    'MainContent', w2,
                    'FeatureImage', w2
                ]);
            }
        }
    }
}

