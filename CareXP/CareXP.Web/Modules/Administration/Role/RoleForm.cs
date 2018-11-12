
namespace CareXP.Administration.Forms
{
    using Serenity.ComponentModel;
    using System;
    using System.Collections.Generic;

    [FormScript("Administration.Role")]
    [BasedOnRow(typeof(Entities.RoleRow), CheckNames = true)]
    public class RoleForm
    {
        public String RoleName { get; set; }

        public Int32? TenantId { get; set; }
    }
}