
namespace CareXP.Administration.Entities
{
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using Serenity.Data.Mapping;
    using System;
    using System.ComponentModel;
    using System.IO;

    [ConnectionKey("Default"), Module("Administration"), TableName("Tenants"),TwoLevelCached]
    [DisplayName("Tenants"), InstanceName("Tenant")]
    [ReadPermission(PermissionKeys.Tenant.General)]
    [ModifyPermission(PermissionKeys.Tenant.Modify)]
    [LookupScript("Administration.Tenant")]
    public sealed class TenantRow : Row, IIdRow, INameRow
    {
        /// <summary>
        ///     Mã của Tenant chung, mà mọi dữ liệu ở Tenant này đều được hiển thị ở các Tenant khác
        /// </summary>
        /// <remark>Cần chắc chắn tên của Tenant có ID này trong DB có thực sự là Dùng chung, Chia sẻ để tránh quản trị hiểu nhầm </remark>
        public const int SHARED_TENANT_ID = 2;

        [DisplayName("Tenant Id")]
        public Int32? TenantId
        {
            get { return Fields.TenantId[this]; }
            set { Fields.TenantId[this] = value; }
        }

        [DisplayName("Tenant Name"), Size(100), NotNull, QuickSearch]
        public String TenantName
        {
            get { return Fields.TenantName[this]; }
            set { Fields.TenantName[this] = value; }
        }



        IIdField IIdRow.IdField
        {
            get { return Fields.TenantId; }
        }

        StringField INameRow.NameField
        {
            get { return Fields.TenantName; }
        }

        public static readonly RowFields Fields = new RowFields().Init();

        public TenantRow()
            : base(Fields)
        {
        }

        public class RowFields : RowFieldsBase
        {

            public Int32Field TenantId;

            public StringField TenantName;


		}
    }
}
