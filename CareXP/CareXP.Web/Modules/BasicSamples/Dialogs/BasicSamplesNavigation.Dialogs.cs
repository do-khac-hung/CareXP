using CareXP.BasicSamples.Pages;
using Serenity.Navigation;

[assembly: NavigationMenu(7910, "Basic Samples/Dialogs")]
[assembly: NavigationLink(7910, "Basic Samples/Dialogs/Chart in a Dialog", typeof(BasicSamplesController), action: "ChartInDialog", Permission= CareXP.Administration.PermissionKeys.Devs)]
[assembly: NavigationLink(7910, "Basic Samples/Dialogs/Cloneable Entity Dialog", typeof(BasicSamplesController), action: "CloneableEntityDialog", Permission = CareXP.Administration.PermissionKeys.Devs)]
[assembly: NavigationLink(7910, "Basic Samples/Dialogs/Default Values in New Dialog", typeof(BasicSamplesController), action: "DefaultValuesInNewDialog", Permission = CareXP.Administration.PermissionKeys.Devs)]
[assembly: NavigationLink(7910, "Basic Samples/Dialogs/Dialog Boxes", typeof(BasicSamplesController), action: "DialogBoxes", Permission = CareXP.Administration.PermissionKeys.Devs)]
[assembly: NavigationLink(7910, "Basic Samples/Dialogs/Entity Dialog as Panel", typeof(BasicSamplesController), action: "EntityDialogAsPanel", Url = "~/BasicSamples/EntityDialogAsPanel/11077", Permission = CareXP.Administration.PermissionKeys.Devs)]
[assembly: NavigationLink(7910, "Basic Samples/Dialogs/Get Inserted Record ID", typeof(BasicSamplesController), action: "GetInsertedRecordId", Permission = CareXP.Administration.PermissionKeys.Devs)]
[assembly: NavigationLink(7910, "Basic Samples/Dialogs/Other Form In Tab", typeof(BasicSamplesController), action: "OtherFormInTab", Permission = CareXP.Administration.PermissionKeys.Devs)]
[assembly: NavigationLink(7910, "Basic Samples/Dialogs/Other Form, One Toolbar", typeof(BasicSamplesController), action: "OtherFormInTabOneBar", Permission = CareXP.Administration.PermissionKeys.Devs)]
[assembly: NavigationLink(7910, "Basic Samples/Dialogs/Populate Linked Data", typeof(BasicSamplesController), action: "PopulateLinkedData", Permission = CareXP.Administration.PermissionKeys.Devs)]
[assembly: NavigationLink(7910, "Basic Samples/Dialogs/Read-Only Dialog", typeof(BasicSamplesController), action: "ReadOnlyDialog", Permission = CareXP.Administration.PermissionKeys.Devs)]
[assembly: NavigationLink(7910, "Basic Samples/Dialogs/Serial Auto Numbering", typeof(BasicSamplesController), action: "SerialAutoNumber", Permission = CareXP.Administration.PermissionKeys.Devs)]