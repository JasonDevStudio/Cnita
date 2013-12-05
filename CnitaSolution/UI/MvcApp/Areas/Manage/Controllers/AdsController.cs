using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcApp.Areas.Manage.Controllers
{
    public class AdsController : Controller
    { 
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Delete(string Id)
        {
            return View();
        }

        public ActionResult Create(string Id=null)
        {

            return View();
        }

    }
}
