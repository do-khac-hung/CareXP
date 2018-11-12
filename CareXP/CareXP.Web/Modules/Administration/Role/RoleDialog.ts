namespace CareXP.Administration {

    @Serenity.Decorators.registerClass()
    export class RoleDialog extends Serenity.EntityDialog<RoleRow, any> {
        protected getFormKey() { return RoleForm.formKey; }
        protected getIdProperty() { return RoleRow.idProperty; }
        protected getLocalTextPrefix() { return RoleRow.localTextPrefix; }
        protected getNameProperty() { return RoleRow.nameProperty; }
        protected getService() { return RoleService.baseUrl; }

        protected form = new RoleForm(this.idPrefix);

        protected afterLoadEntity() {
            /// Nếu đây là form tạo mới một Role
            if (this.isNew) {
                // Lấy ra control điều khiển trường TenantId trong form. Có thể đổi giá trị, màu sắc...
                // Khi tạo mới role, tài khoản TenantID mặc định là của chính user hiện thời 
                // (Chỉ khi không phải tài khoản kiểm soát Tenant)
                if (!Authorization.hasPermission("Administration:Tenant:Modify")) {
                    this.form.TenantId.value = Authorization.userDefinition.TenantId.toString();
                }
            }

        }

        protected getToolbarButtons()
        {
            this.dialogTitle = "Nhóm quyền";
            if (!Authorization.hasPermission("Administration:Role:Modify")) {
                return [];
            }
            let buttons = super.getToolbarButtons();

            /// Nếu muốn loại bỏ nút delete
            //buttons.splice(Q.indexOf(buttons, x => x.cssClass == "delete-button"), 1);
            /// Nếu muốn loại bỏ nút add
            //buttons.splice(Q.indexOf(buttons, x => x.cssClass == "save-button"), 1);
            buttons.splice(Q.indexOf(buttons, x => x.cssClass == "undo-delete-button"), 1);
            buttons.splice(Q.indexOf(buttons, x => x.cssClass == "clone-button"), 1);
            buttons.splice(Q.indexOf(buttons, x => x.cssClass == "localization-button"), 1);

            /// Bổ sung thêm nút nữa, mở ra giao diện RolePermission
            buttons.push({
                title: Q.text('Site.RolePermissionDialog.EditButton'),
                cssClass: 'edit-permissions-button',
                icon: 'fa-lock text-green',
                onClick: () =>
                {
                    new RolePermissionDialog({
                        roleID: this.entity.RoleId,
                        title: this.entity.RoleName
                    }).dialogOpen();
                }
            });

            return buttons;
        }

        protected updateInterface() {
            super.updateInterface();

            this.toolbar.findButton("edit-permissions-button").toggleClass("disabled", this.isNewOrDeleted());
        }
    }
}