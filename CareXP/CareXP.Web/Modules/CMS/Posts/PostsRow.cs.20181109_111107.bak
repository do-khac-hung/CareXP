
namespace CareXP.CMS.Entities
{
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using Serenity.Data.Mapping;
    using System;
    using System.ComponentModel;
    using System.IO;

    [ConnectionKey("CMS"), Module("CMS"), TableName("[dbo].[Posts]")]
    [DisplayName("Posts"), InstanceName("Posts")]
    [ReadPermission("Administration:General")]
    [ModifyPermission("Administration:General")]
    public sealed class PostsRow : Row, IIdRow, INameRow
    {

        [DisplayName("Id"), Column("ID"), Identity]
        public Int32? Id
        {
            get { return Fields.Id[this]; }
            set { Fields.Id[this] = value; }
        }

        [DisplayName("Tenant Id"), Column("TenantID"), NotNull]
        public Int32? TenantId
        {
            get { return Fields.TenantId[this]; }
            set { Fields.TenantId[this] = value; }
        }

        [DisplayName("Modified Date")]
        public DateTime? ModifiedDate
        {
            get { return Fields.ModifiedDate[this]; }
            set { Fields.ModifiedDate[this] = value; }
        }

        [DisplayName("Modified By")]
        public Int32? ModifiedBy
        {
            get { return Fields.ModifiedBy[this]; }
            set { Fields.ModifiedBy[this] = value; }
        }

        [DisplayName("Customer Id"), Column("CustomerID")]
        public Int32? CustomerId
        {
            get { return Fields.CustomerId[this]; }
            set { Fields.CustomerId[this] = value; }
        }

        [DisplayName("Status"), Size(10), NotNull, QuickSearch]
        public String Status
        {
            get { return Fields.Status[this]; }
            set { Fields.Status[this] = value; }
        }

        [DisplayName("Vin"), Column("VIN"), Size(50), NotNull]
        public String Vin
        {
            get { return Fields.Vin[this]; }
            set { Fields.Vin[this] = value; }
        }

        [DisplayName("Model"), Size(50), NotNull]
        public String Model
        {
            get { return Fields.Model[this]; }
            set { Fields.Model[this] = value; }
        }

        [DisplayName("Subject"), Size(50)]
        public String Subject
        {
            get { return Fields.Subject[this]; }
            set { Fields.Subject[this] = value; }
        }

        [DisplayName("Main Content")]
        public String MainContent
        {
            get { return Fields.MainContent[this]; }
            set { Fields.MainContent[this] = value; }
        }

        [DisplayName("Feature Image"), Size(100)]
        public String FeatureImage
        {
            get { return Fields.FeatureImage[this]; }
            set { Fields.FeatureImage[this] = value; }
        }



        IIdField IIdRow.IdField
        {
            get { return Fields.Id; }
        }

        StringField INameRow.NameField
        {
            get { return Fields.Status; }
        }

        public static readonly RowFields Fields = new RowFields().Init();

        public PostsRow()
            : base(Fields)
        {
        }

        public class RowFields : RowFieldsBase
        {

            public Int32Field Id;

            public Int32Field TenantId;

            public DateTimeField ModifiedDate;

            public Int32Field ModifiedBy;

            public Int32Field CustomerId;

            public StringField Status;

            public StringField Vin;

            public StringField Model;

            public StringField Subject;

            public StringField MainContent;

            public StringField FeatureImage;


		}
    }
}
