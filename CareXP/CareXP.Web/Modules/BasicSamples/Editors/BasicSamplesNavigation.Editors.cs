using CareXP.BasicSamples.Pages;
using Serenity.Navigation;

[assembly: NavigationMenu(7930, "Basic Samples/Editors", Permission= CareXP.Administration.PermissionKeys.Devs)]
[assembly: NavigationLink(7930, "Basic Samples/Editors/Changing Lookup Text", typeof(BasicSamplesController), action: "ChangingLookupText", Permission= CareXP.Administration.PermissionKeys.Devs)]
[assembly: NavigationLink(7930, "Basic Samples/Editors/Filtered Lookup in Detail.", typeof(BasicSamplesController), action: "FilteredLookupInDetailDialog", Permission= CareXP.Administration.PermissionKeys.Devs)]
[assembly: NavigationLink(7930, "Basic Samples/Editors/Lookup Filter by Multi Val.", typeof(BasicSamplesController), action: "LookupFilterByMultipleValues", Permission= CareXP.Administration.PermissionKeys.Devs)]
[assembly: NavigationLink(7930, "Basic Samples/Editors/Select with Hardcod.Vals.", typeof(BasicSamplesController), action: "SelectWithHardcodedValues", Permission= CareXP.Administration.PermissionKeys.Devs)]
[assembly: NavigationLink(7930, "Basic Samples/Editors/Static Text Block", typeof(BasicSamplesController), action: "StaticTextBlock", Permission= CareXP.Administration.PermissionKeys.Devs)]
