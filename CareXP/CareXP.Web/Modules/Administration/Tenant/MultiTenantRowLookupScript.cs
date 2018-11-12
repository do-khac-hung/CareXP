namespace CareXP.Default.Scripts
{
    using Serenity;
    using Serenity.Data;
    using Serenity.Web;
    using System;

    /// <summary>
    ///    Lớp MV phụ trách tạo ra dữ liệu cho các LookupEditor, QuickFilter
    /// </summary>
    /// <typeparam name="TRow">The type of the row.</typeparam>
    /// <seealso cref="Serenity.Web.RowLookupScript{TRow}" />
    public class MultiTenantRowLookupScript<TRow> :
    RowLookupScript<TRow>
    where TRow : Row, IMultiTenantRow, new()
    {
        public MultiTenantRowLookupScript()
        {
            Expiration = TimeSpan.FromDays(-1);
        }
        protected override void PrepareQuery(SqlQuery query)
        {
            base.PrepareQuery(query);
            AddTenantFilter(query);
        }

        /// <summary>
        ///    Bổ sung phép lọc theo Tenant
        /// </summary>
        /// <param name="query">The query.</param>
        protected void AddTenantFilter(SqlQuery query)
        {
            var r = new TRow();
            query.Where(r.TenantIdField ==
            ((UserDefinition)Authorization.UserDefinition).TenantId);
        }

        /// <summary>
        ///     Xử lý cache và thiết lập thời gian hết hạn, bởi vì cache này
        ///     phụ thuộc vào Tenant, mà người sử dụng hoàn toàn có thể logout
        ///     khỏi tài khoản này và đăng nhập vào tài khoản khác với Tenant khác.
        /// </summary>
        /// <returns></returns>
        public override string GetScript()
        {
            return TwoLevelCache.GetLocalStoreOnly("MultiTenantLookup:" +
            this.ScriptName + ":" +
            ((UserDefinition)Authorization.UserDefinition).TenantId,
            TimeSpan.FromHours(1),
            new TRow().GetFields().GenerationKey, () =>
            {
                return base.GetScript();
            });
        }
    }
}