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

        /// <summary>
        /// 小版块
        /// </summary>
        /// <param name="categoryCode">分类编号</param>
        /// <param name="topCount">显示条数</param> 
        public ActionResult SidebarForum(string categoryCode = null, string adsCategoryCode = null, string categoryTwoCode=null, string topCount = "5")
        {
            var logic = new LogicArticle();
            var resultMsg = string.Empty; 
            var CategIsAds = 0;
            var Introduction = string.Empty;
            var Thumbnails = string.Empty;
            var CategName = string.Empty; 
            var TopRowCount = 0;
            int.TryParse(topCount,out TopRowCount);

            var list = logic.QueryArticleListTopByCategoryCode(out resultMsg, out CategIsAds, out Introduction, out Thumbnails, out CategName,
                categoryCode, categoryTwoCode, adsCategoryCode, TopRowCount);
            ViewBag.CategIsAds = CategIsAds;
            ViewBag.Introduction = Introduction;
            ViewBag.Thumbnails = Thumbnails;
            ViewBag.CategName = CategName;
            ViewBag.CategoryCode = categoryCode;
            ViewBag.AdsCategoryCode = adsCategoryCode;

            return PartialView(list);
        }

        /// <summary>
        /// 侧边栏 分类
        /// </summary>
        /// <param name="categoryCode">父分类Id</param> 
        public ActionResult SidebarCategory(string categoryCode = null, string adsCategoryCode=null)
        {
            var categoryId = 0;
            var resultMsg = string.Empty;
            var logic = new LogicCategory();

            int.TryParse(categoryCode,out categoryId);
            
            IList<ModelCategory> list = new List<ModelCategory>();
            list = logic.CategoryAll(out resultMsg, categoryId, "2");
            var modelList = (from ModelCategory m in list
                         where m.Id == categoryId
                         select m).ToList();
            var model = modelList != null && modelList.Count > 0 ? modelList.First() : new ModelCategory();

            ViewBag.CategName = model.Name;
            ViewBag.Thumbnails = model.Thumbnails;
            ViewBag.CategoryCode = categoryCode;
            ViewBag.AdsCategoryCode = adsCategoryCode;

            //list.Remove(model);
             
            return PartialView(list);
        }
        
    }
}
