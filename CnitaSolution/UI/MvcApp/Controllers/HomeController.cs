using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Library.Logic.DAL;
using Library.Models; 
using Library.Common;
using Library.StringItemDict;

namespace MvcApp.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Navigation()
        { 
            var logic = new LogicCategory();
            var resultMsg = string.Empty;
            IList<ModelCategory> list = new List<ModelCategory>();
            list = logic.CategoryAll(out resultMsg, 1,"1");

            return PartialView(list);
        }

    }
}
