using CareXP.Administration;
using Serenity;
using Serenity.Data;
using Serenity.Services;
namespace CareXP
{

    /// <summary>
    ///    Class định nghĩa các hành vi Behavior sẽ áp dụng cho mọi Row, hoặc áp dụng
    ///    khi thỏa mãn một Rule nào đó, một Attribute nào đó
    /// </summary>
    /// <see cref="IMultiTenantRow" langword="Dữ liệu để từ đó kích hoạt Behaviors này"/>
    /// <see cref="IImplicitBehavior" langword="Sẽ được activate với một kiểu Row nào đó. Cung cấp hàm ActivateFor sẽ tự động được gọi ra bởi các request handler/>
    /// <see cref="ISaveBehavior"/>
    /// <see cref="IDeleteBehavior"/>
    /// <see cref="IListBehavior"/>
    /// <see cref="IRetrieveBehavior"/>
    public class MultiTenantBehavior : IImplicitBehavior,
    ISaveBehavior, IDeleteBehavior,
    IListBehavior, IRetrieveBehavior
    {
        /// <summary>
        ///    TenantID của chủ thể (Row) đang xử lý
        /// </summary>
        /// <remarks>
        ///     Giá trị này được tính qua hàm <see cref="ActivateFor"/>
        /// </remarks>
        private Int32Field fldTenantId;

        /// <summary>
        ///     Hàm luôn được gọi ra bởi các Request handle, giúp lưu giữ TenantID của chủ thể (row) đang được xử lý
        ///     Hảm chỉ được gọi 1 lần duy nhất với mỗi kiểu Request Handler và mõi Row
        /// </summary>
        /// <param name="row">Chủ thể (row) đang được xử lý</param>
        /// <returns> true=lấy về đối tượng được xử lý thực sự thuộc interface chỉ định. Behavior Instance sẽ được cache lại nhanh chóng để tăng hiệu xuất, và tái sử dụng cho bất cứ request nào của Row này vầ kiểu handle. Do đó, mọi thứ bạn viết trong các hàm này phải an toàn để còn chia sẻ giữa các request. Ví dụ, nếu đặt breakpoint ở hàm này, khi mở form UserForm, ctrinhf sẽ break, nhưng sau đó sẽ không break lần nữa khi mở lại UserForm
        ///           false=đối tượng lạ, không quan tâm
        /// </returns>
        public bool ActivateFor(Row row)
        {
            var mt = row as IMultiTenantRow;
            if (mt == null)
                return false;
            fldTenantId = mt.TenantIdField;
            return true;
        }

        /// <summary>
        ///     Kiểm tra Tenant hợp lệ và hạn chế nội dung trả về chi tiết về một Row
        /// </summary>
        public void OnPrepareQuery(IRetrieveRequestHandler handler, SqlQuery query)
        {
            var user = (UserDefinition)Authorization.UserDefinition;
            if (!Authorization.HasPermission(PermissionKeys.Tenant.View))
                query.Where(fldTenantId == user.TenantId);
        }

        /// <summary>
        ///     Kiểm tra Tenant hợp lệ và hạn chế nội dung trả về danh sách các Row
        /// </summary>
        public void OnPrepareQuery(IListRequestHandler handler, SqlQuery query)
        {
            var user = (UserDefinition)Authorization.UserDefinition;
            if (!Authorization.HasPermission(PermissionKeys.Tenant.View))
                query.Where(fldTenantId == user.TenantId);
        }

        /// <summary>
        ///    Sau khi nhận giá trị từ client đẩy lên, server xử lý tiếp dữ liệu đó để
        ///    bổ sung thêm các nội dung cần thiết, hoặc loại bỏ... trước khi ghi vào db
        /// </summary>
        public void OnSetInternalFields(ISaveRequestHandler handler)
        {
            if (handler.IsCreate)
                fldTenantId[handler.Row] =
                ((UserDefinition)Authorization
                .UserDefinition).TenantId;
        }

        /// <summary>
        ///     Kiểm tra Tenant hợp lệ trước khi lưu trữ vào database
        /// </summary>
        public void OnValidateRequest(ISaveRequestHandler handler)
        {
            if (handler.IsUpdate)
            {
                var user = (UserDefinition)Authorization.UserDefinition;
                if (fldTenantId[handler.Old] != fldTenantId[handler.Row])
                    Authorization.ValidatePermission(PermissionKeys.Tenant.Modify);
            }
        }

        /// <summary>
        ///     Kiểm tra Tenant hợp lệ trước khi xóa khỏi database
        /// </summary>
        public void OnValidateRequest(IDeleteRequestHandler handler)
        {
            var user = (UserDefinition)Authorization.UserDefinition;
            if (fldTenantId[handler.Row] != user.TenantId)
                Authorization.ValidatePermission(PermissionKeys.Tenant.Delete);
        }
        public void OnAfterDelete(IDeleteRequestHandler handler) { }
        public void OnAfterExecuteQuery(IRetrieveRequestHandler handler) { }
        public void OnAfterExecuteQuery(IListRequestHandler handler) { }
        public void OnAfterSave(ISaveRequestHandler handler) { }
        public void OnApplyFilters(IListRequestHandler handler, SqlQuery query) { }
        public void OnAudit(IDeleteRequestHandler handler) { }
        public void OnAudit(ISaveRequestHandler handler) { }
        public void OnBeforeDelete(IDeleteRequestHandler handler) { }
        public void OnBeforeExecuteQuery(IRetrieveRequestHandler handler) { }
        public void OnBeforeExecuteQuery(IListRequestHandler handler) { }
        public void OnBeforeSave(ISaveRequestHandler handler) { }
        public void OnPrepareQuery(IDeleteRequestHandler handler, SqlQuery query) { }
        public void OnPrepareQuery(ISaveRequestHandler handler, SqlQuery query) { }
        public void OnReturn(IDeleteRequestHandler handler) { }
        public void OnReturn(IRetrieveRequestHandler handler) { }
        public void OnReturn(IListRequestHandler handler) { }
        public void OnReturn(ISaveRequestHandler handler) { }
        public void OnValidateRequest(IRetrieveRequestHandler handler) { }
        public void OnValidateRequest(IListRequestHandler handler) { }
    }
}