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

        public ActionResult Banner(string categoryCode=null, string ownerCode=null,string width="1110" ,string height="100")
        { 
            ViewBag.width = width;
            ViewBag.height = height;
            var logic = new LogicPictures();
            var resultMsg = string.Empty;
            IList<ModelPictures> list = new List<ModelPictures>();
            list = logic.QueryPicturesListByOwner(out resultMsg, categoryCode, ownerCode);
            return PartialView(list);
        }

    }
}
