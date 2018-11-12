
namespace CareXP.CMS {

    @Serenity.Decorators.registerClass()
    export class PostsDialog extends Serenity.EntityDialog<PostsRow, any> {
        protected getFormKey() { return PostsForm.formKey; }
        protected getIdProperty() { return PostsRow.idProperty; }
        protected getLocalTextPrefix() { return PostsRow.localTextPrefix; }
        protected getNameProperty() { return PostsRow.nameProperty; }
        protected getService() { return PostsService.baseUrl; }

        protected form = new PostsForm(this.idPrefix);

    }
}