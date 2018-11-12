using Serenity.Data;

namespace CareXP
{

    /// <summary>
    ///    Interface để kích hoạt các sự kiện trong Behaviors <see cref="MultiTenantBehavior"/>. chồng behavior thêm/xóa/sửa/xen theo TenantID của người dùng hiện thời
    /// </summary>
    public interface IMultiTenantRow
    {
        Int32Field TenantIdField { get; }
    }
}