
namespace CareXP.Administration.Forms
{
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using System;
    using System.ComponentModel;
    using System.Collections.Generic;
    using System.IO;

    [FormScript("Administration.Tenant")]
    [BasedOnRow(typeof(Entities.TenantRow), CheckNames = true)]
    public class TenantForm
    {
        public String TenantName { get; set; }
    }
}