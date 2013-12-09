using System.Web.Mvc;

namespace MvcApp.Areas.Manage
{
    public class ManageAreaRegistration : AreaRegistration
    {
        public override string AreaName
        {
            get
            {
                return "Manage";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context)
        {
            context.MapRoute(
                "Manage_default",
                "Manage/{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Login", id = UrlParameter.Optional },
                namespaces: new string[] { "MvcApp.Areas.Manage.Controllers" } 
            );
        }
    }
}
