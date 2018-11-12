namespace CareXP.Administration {

    @Serenity.Decorators.registerClass()
    export class UserDialog extends Serenity.EntityDialog<UserRow, any> {
        protected getFormKey() { return UserForm.formKey; }
        protected getIdProperty() { return UserRow.idProperty; }
        protected getIsActiveProperty() { return UserRow.isActiveProperty; }
        protected getLocalTextPrefix() { return UserRow.localTextPrefix; }
        protected getNameProperty() { return UserRow.nameProperty; }
        protected getService() { return UserService.baseUrl; }

        protected form = new UserForm(this.idPrefix);

        constructor() {
            super();

            this.form.Password.addValidationRule(this.uniqueName, e => {
                if (this.form.Password.value.length < 7)
                    return "Password must be at least 7 characters!";
            });

            this.form.PasswordConfirm.addValidationRule(this.uniqueName, e => {
                if (this.form.Password.value != this.form.PasswordConfirm.value)
                    return "The passwords entered doesn't match!";
            });
        }

        protected getToolbarButtons()
        {
            let buttons = super.getToolbarButtons();

            buttons.push({
                title: Q.text('Site.UserDialog.EditRolesButton'),
                cssClass: 'edit-roles-button',
                icon: 'fa-users text-blue',
                onClick: () =>
                {
                    new UserRoleDialog({
                        userID: this.entity.UserId,
                        username: this.entity.Username
                    }).dialogOpen();
                }
            });

            if (Authorization.hasPermission("Administration:Security")) {
                // Cho phsp ổ sung quyền  đơn lẻ với 1 account nào đó, nếu tài khoản hiện thời có quyền Security
                buttons.push({
                    title: Q.text('Site.UserDialog.EditPermissionsButton'),
                    cssClass: 'edit-permissions-button',
                    icon: 'fa-lock text-green',
                    onClick: () => {
                        new UserPermissionDialog({
                            userID: this.entity.UserId,
                            username: this.entity.Username
                        }).dialogOpen();
                    }
                });
            }

            return buttons;
        }

        protected updateInterface() {
            super.updateInterface();

            this.toolbar.findButton('edit-roles-button').toggleClass('disabled', this.isNewOrDeleted());
            this.toolbar.findButton("edit-permissions-button").toggleClass("disabled", this.isNewOrDeleted());
        }

        protected afterLoadEntity() {
            super.afterLoadEntity();

            // these fields are only required in new record mode
            this.form.Password.element.toggleClass('required', this.isNew())
                .closest('.field').find('sup').toggle(this.isNew());
            this.form.PasswordConfirm.element.toggleClass('required', this.isNew())
                .closest('.field').find('sup').toggle(this.isNew());
        }

        /// <sumary>
        ///    Sau khi đã lấy dữ liệu về từ server và trước khi hiển thị lên webclient
        ///    hàm sẽ xử lý dựa trên danh sách các trường dữ liệu.
        ///    Thực ra website không có gì thay đổi, dữ liệu vẫn nằm trong source html,
        ///    chỉ là các trường dữ liệu đó sẽ có thuộc tính invisible, nên dev hoàn toàn
        ///    có thể xem được các dữ liệu ẩn bên dưới.
        /// </sumary>
        /// <remark>
        ///    Nếu hacker sử dụng Chrome Console và gõ dòng này vào, thì sẽ tự gọi tới Webservice và đổi được
        ///  Q.serviceCall({
        ///  service: 'Administration/User/Update',
        ///  request: {
        ///  EntityId: 1002,
        ///  Entity: {
        ///  UserId: 1002,
        ///  TenantId: 1
        ///  }
        ///  }
        ///  });
        ///  Giải pháp: đặt quyền cho thuộc tính UserRows.TenantId
        ///
        /// </remark>
        protected getPropertyItems() {
            /// Lấy danh sách các trường dữ liệu 
            var items = super.getPropertyItems();
            /// Nếu người dùng hiện thời không có quyền xem Tenants thì 
            /// loại bỏ trường TenantID ra khỏi View
            /// Vì vậy cũng khong cần truy cập vào danh sách các Tenants nữa, nên lỗi sẽ không xảy ra
            if (!Q.Authorization.hasPermission("Administration:Tenants")) {
                items = items.filter(x => x.name != UserRow.Fields.TenantId);
            };
            return items;
        }
    }
}