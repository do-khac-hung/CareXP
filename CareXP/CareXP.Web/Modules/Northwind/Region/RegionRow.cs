
namespace CareXP.Northwind.Entities
{
    using Serenity.ComponentModel;
    using Serenity.Data;
    using Serenity.Data.Mapping;
    using System;
    using System.ComponentModel;

    [ConnectionKey("Northwind"), Module("Northwind"), TableName("Region")]
    [DisplayName("Region"), InstanceName("Region")]
    [ReadPermission(PermissionKeys.General)]
    [ModifyPermission(PermissionKeys.General)]
    [LookupScript]
    public sealed class RegionRow : Row, IIdRow, INameRow, IMultiTenantRow
    {
        /// <summary>
        /// Chuyển đổi kiểu phục vụ cho behavior theo Tenant.
        /// </summary>
        public Int32Field TenantIdField
        {
            get { return Fields.TenantId; }
        }

        [DisplayName("Region Id"), PrimaryKey, NotNull, Updatable(false), QuickSearch]
        public Int32? RegionID
        {
            get { return Fields.RegionID[this]; }
            set { Fields.RegionID[this] = value; }
        }

        [DisplayName("Region Description"), Size(50), NotNull, QuickSearch]
        public String RegionDescription
        {
            get { return Fields.RegionDescription[this]; }
            set { Fields.RegionDescription[this] = value; }
        }

        IIdField IIdRow.IdField
        {
            get { return Fields.RegionID; }
        }

        StringField INameRow.NameField
        {
            get { return Fields.RegionDescription; }
        }

        [DisplayName("Tenant Id")]
        public Int32? TenantId
        {
            get { return Fields.TenantId[this]; }
            set { Fields.TenantId[this] = value; }
        }

        public static readonly RowFields Fields = new RowFields().Init();

        public RegionRow()
            : base(Fields)
        {
        }

        public class RowFields : RowFieldsBase
        {
            public Int32Field RegionID;
            public StringField RegionDescription;
            public Int32Field TenantId;
        }
    }
}