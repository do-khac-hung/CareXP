
namespace CareXP.CMS.Columns
{
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using System;
    using System.ComponentModel;
    using System.Collections.Generic;
    using System.IO;

    [ColumnsScript("CMS.Posts")]
    [BasedOnRow(typeof(Entities.PostsRow), CheckNames = true)]
    public class PostsColumns
    {
        [EditLink, DisplayName("Db.Shared.RecordId"), AlignRight]
        public Int32 Id { get; set; }
        public Int32 TenantId { get; set; }
        public DateTime ModifiedDate { get; set; }
        public Int32 ModifiedBy { get; set; }
        public Int32 CustomerId { get; set; }
        [EditLink]
        public String Status { get; set; }
        public String Vin { get; set; }
        public String Model { get; set; }
        public String Subject { get; set; }
        public String MainContent { get; set; }
        public String FeatureImage { get; set; }
    }
}