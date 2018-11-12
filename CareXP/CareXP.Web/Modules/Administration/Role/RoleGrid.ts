namespace CareXP.Administration {
    @Serenity.Decorators.registerClass()
    export class RoleGrid extends Serenity.EntityGrid<RoleRow, any> {
        protected getColumnsKey() { return "Administration.Role"; }
        protected getDialogType() { return RoleDialog; }
        protected getIdProperty() { return RoleRow.idProperty; }
        protected getLocalTextPrefix() { return RoleRow.localTextPrefix; }
        protected getService() { return RoleService.baseUrl; }

        constructor(container: JQuery) {
            super(container);
        }

        protected getDefaultSortBy() {
            return [RoleRow.Fields.RoleName];
        }

        protected getColumns() {
            var columns = super.getColumns();

            // Có quyền không?
            if (! CareXP.Authorization.CouldViewTenant())
            {
                // Nếu không có quyền thì không hiển thị để khỏi nhầm?
                columns = columns.filter(x => x.field != "TenantName");
            }

            //Bắt đầu ở vị trí 1,  không xóa cột nào, {Các cột thêm}
            /*
            columns.splice(1, 0, {
                field: 'Print Invoice',
                name: '',
                format: ctx => '<a class="inline-action print-invoice" title="invoice">' +
                    '<i class="fa fa-file-pdf-o text-red"></i></a>',
                width: 24,
                minWidth: 24,
                maxWidth: 24
            });
            */

            return columns;
        }

        protected getButtons(): Serenity.ToolButton[] {
            let buttons = super.getButtons();
            if (!Authorization.hasPermission("Administration:Role:Modify")) {
                /// Loại bỏ việc thêm Role mới
                buttons.splice(Q.indexOf(buttons, x => x.cssClass == "add-button"), 1);
            }
            return buttons;
        }
    }
}