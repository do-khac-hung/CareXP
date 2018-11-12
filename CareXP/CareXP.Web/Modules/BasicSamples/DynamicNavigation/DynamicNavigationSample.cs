using CareXP.Northwind.Entities;
using Serenity.Data;
using Serenity.Navigation;
using System.Collections.Generic;

namespace CareXP.BasicSamples
{
    public class DynamicNavigationSample : INavigationItemSource
    {
        public List<NavigationItemAttribute> GetItems()
        {
            /// Tạo menu thư mục con   Basic Samples/Dynamic Navigation. Menu thư mục này sẽ chứa nhiều menuitem nữa
            var items = new List<NavigationItemAttribute>
            {
                new NavigationMenuAttribute(7970, "Basic Samples/Dynamic Navigation", "icon-paper-plane")
            };

            /// Phân loại dữ liệu từ db theo category và tạo menuitem cho từng mục
            using (var connection = SqlConnections.NewByKey("Northwind"))
            {
                var categories = connection.List<CategoryRow>();
                foreach (var category in categories)
                    items.Add(new NavigationLinkAttribute(7970,
                        path: "Basic Samples/Dynamic Navigation/" + category.CategoryName.Replace("/", "//"),
                        url: "~/Northwind/Product?cat=" + category.CategoryID,
                        permission: CareXP.Administration.PermissionKeys.Devs,
                        icon: "icon-folder-alt"));
            }

            return items;
        }
    }
}