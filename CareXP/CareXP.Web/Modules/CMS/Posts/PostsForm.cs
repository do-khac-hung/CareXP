
namespace CareXP.CMS.Forms
{
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using System;
    using System.ComponentModel;
    using System.Collections.Generic;
    using System.IO;

    [FormScript("CMS.Posts")]
    [BasedOnRow(typeof(Entities.PostsRow), CheckNames = true)]
    public class PostsForm
    {
        public Int32 TenantId { get; set; }
        public DateTime ModifiedDate { get; set; }
        public Int32 ModifiedBy { get; set; }
        public Int32 CustomerId { get; set; }
        public String Status { get; set; }
        public String Vin { get; set; }
        public String Model { get; set; }
        public String Subject { get; set; }
        public String MainContent { get; set; }
        public String FeatureImage { get; set; }
    }
}