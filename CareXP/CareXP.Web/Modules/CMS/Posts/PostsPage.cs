
namespace CareXP.CMS.Pages
{
    using Serenity;
    using Serenity.Web;
    using System.Web.Mvc;

    [RoutePrefix("CMS/Posts"), Route("{action=index}")]
    [PageAuthorize(typeof(Entities.PostsRow))]
    public class PostsController : Controller
    {
        public ActionResult Index()
        {
            return View("~/Modules/CMS/Posts/PostsIndex.cshtml");
        }
    }
}