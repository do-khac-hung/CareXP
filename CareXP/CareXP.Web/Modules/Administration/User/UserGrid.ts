namespace CareXP.Administration {

    @Serenity.Decorators.registerClass()
    export class UserGrid extends Serenity.EntityGrid<UserRow, any> {
        protected getColumnsKey() { return "Administration.User"; }
        protected getDialogType() { return UserDialog; }
        protected getIdProperty() { return UserRow.idProperty; }
        protected getIsActiveProperty() { return UserRow.isActiveProperty; }
        protected getLocalTextPrefix() { return UserRow.localTextPrefix; }
        protected getService() { return UserService.baseUrl; }

        constructor(container: JQuery) {
            super(container);
        }

        protected getDefaultSortBy() {
            return [UserRow.Fields.Username];
        }

       /// Lấy danh sách các cột, thêm/xóa các cột theo nhu cầu
        protected getColumns() {
            var columns = super.getColumns();

            // Có quyền xem Tenant không?
            if (!CareXP.Authorization.CouldViewTenant()) {
                // Nếu không có quyền xem Tenant thì chỉ hiển thị Tenant hiện thời, nên không hiển thị luôn cột Tenant (vì luôn chỉ có 1 tenant hiện thời)
                columns = columns.filter(x => x.field != "TenantName");
            }

            return columns;
        }
    }
}