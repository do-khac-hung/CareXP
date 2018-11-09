
namespace CareXP.CMS {
    export class PostsForm extends Serenity.PrefixedContext {
        static formKey = 'CMS.Posts';
    }

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

    [,
        ['TenantId', () => Serenity.IntegerEditor],
        ['ModifiedDate', () => Serenity.DateEditor],
        ['ModifiedBy', () => Serenity.IntegerEditor],
        ['CustomerId', () => Serenity.IntegerEditor],
        ['Status', () => Serenity.StringEditor],
        ['Vin', () => Serenity.StringEditor],
        ['Model', () => Serenity.StringEditor],
        ['Subject', () => Serenity.StringEditor],
        ['MainContent', () => Serenity.StringEditor],
        ['FeatureImage', () => Serenity.StringEditor]
    ].forEach(x => Object.defineProperty(PostsForm.prototype, <string>x[0], {
        get: function () {
            return this.w(x[0], (x[1] as any)());
        },
        enumerable: true,
        configurable: true
    }));
}