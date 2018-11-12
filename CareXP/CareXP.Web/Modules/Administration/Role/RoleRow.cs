
namespace CareXP.Administration.Entities
{
    using Serenity.ComponentModel;
    using Serenity.Data;
    using Serenity.Data.Mapping;
    using System;
    using System.ComponentModel;

    [ConnectionKey("Default"), Module("Administration"), TableName("Roles")]
    [DisplayName("Roles"), InstanceName("Role")]
    [ReadPermission(PermissionKeys.Role.General)]
    [ModifyPermission(PermissionKeys.Role.Modify)]
    [LookupScript]
    public sealed class RoleRow : Row, IIdRow, INameRow, IMultiTenantRow   
    {
        /// <summary>
        /// Chuyển đổi kiểu phục vụ cho behavior theo Tenant.
        /// </summary>
        public Int32Field TenantIdField
        {
            get { return Fields.TenantId; }
        }

        [DisplayName("Role Id"), Identity, ForeignKey("Roles", "RoleId"), LeftJoin("jRole")]
        public Int32? RoleId
        {
            get { return Fields.RoleId[this]; }
            set { Fields.RoleId[this] = value; }
        }

        [DisplayName("Role Name"), Size(100), NotNull, QuickSearch]
        public String RoleName
        {
            get { return Fields.RoleName[this]; }
            set { Fields.RoleName[this] = value; }
        }


        IIdField IIdRow.IdField
        {
            get { return Fields.RoleId; }
        }

        StringField INameRow.NameField
        {
            get { return Fields.RoleName; }
        }

        [DisplayName("Tenant Id")]
        [ForeignKey("Tenants", "TenantID"), LeftJoin("tnt")]
        [LookupEditor(typeof(TenantRow), DialogType = "DefaultDB.Tenants")]
        [ModifyPermission(PermissionKeys.Tenant.Modify)]        //Phân quyền cho dữ liệu chỉ được phép ghi, khi người dùng hiện tại có quyền nào đó
        public Int32? TenantId
        {
            get { return Fields.TenantId[this]; }
            set { Fields.TenantId[this] = value; }
        }

        /// <summary>
        /// Tên của Tenant tạo ra Role hiện thời
        /// </summary>
        [Expression("tnt.TenantName")]
        public String TenantName { get; set; }

        public static readonly RowFields Fields = new RowFields().Init();

        public RoleRow()
            : base(Fields)
        {
        }

        public class RowFields : RowFieldsBase
        {
            public Int32Field RoleId;
            public StringField RoleName;

            public Int32Field TenantId;
            public StringField TenantName;
        }
    }
}