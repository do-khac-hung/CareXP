
namespace CareXP.CMS {

    @Serenity.Decorators.registerClass()
    export class PostsGrid extends Serenity.EntityGrid<PostsRow, any> {
        protected getColumnsKey() { return 'CMS.Posts'; }
        protected getDialogType() { return PostsDialog; }
        protected getIdProperty() { return PostsRow.idProperty; }
        protected getLocalTextPrefix() { return PostsRow.localTextPrefix; }
        protected getService() { return PostsService.baseUrl; }

        constructor(container: JQuery) {
            super(container);
        }
    }
}