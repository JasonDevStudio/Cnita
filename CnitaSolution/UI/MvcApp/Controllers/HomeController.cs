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
        #region 私有函数

        /// <summary>
        /// 获取小版块 文章类表
        /// </summary>
        /// <param name="categoryCode"></param>
        /// <param name="adsCategoryCode"></param>
        /// <param name="categoryTwoCode"></param>
        /// <param name="topCount"></param>
        /// <returns></returns>
        private IList<ModelArticle> GetForumData(string categoryCode = null, string adsCategoryCode = null, string categoryTwoCode = null, string topCount = "5")
        {
            var logic = new LogicArticle();
            var resultMsg = string.Empty;
            var CategIsAds = 0;
            var Introduction = string.Empty;
            var Thumbnails = string.Empty;
            var CategName = string.Empty;
            var categoryId = 0;
            var TopRowCount = 0;
            int.TryParse(topCount, out TopRowCount);
            int.TryParse(categoryCode,out categoryId);

            var list = logic.QueryArticleListTopByCategoryCode(out resultMsg, out CategIsAds, out Introduction, out Thumbnails, out CategName,
                categoryCode, categoryTwoCode, adsCategoryCode, TopRowCount);

            var model = logic.ArticleDetailByIsRecommend(out resultMsg, categoryId);

            ViewBag.CategIsAds = CategIsAds;
            ViewBag.Introduction = Introduction;
            ViewBag.Thumbnails = Thumbnails;
            ViewBag.CategName = CategName;
            ViewBag.CategoryCode = categoryCode;
            ViewBag.AdsCategoryCode = adsCategoryCode;
            ViewBag.ArtAbstract = model != null ? model.Abstract : string.Empty;
            ViewBag.ArtTitle = model != null ? model.Title : string.Empty;
            ViewBag.ArtId = model != null ? model.Id : 0;

            return list;
        }

        /// <summary>
        /// 查询分类实体
        /// </summary>
        /// <param name="Id"></param>
        /// <returns></returns>
        private ModelCategory GetCategoryDetail(string Id)
        {
            var resultMsg = string.Empty;
            var idx = 0;
            var logic = new LogicCategory();
            int.TryParse(Id, out idx);
            var model = logic.CategoryDetail(out resultMsg, idx);
            return model;
        }
        
        #endregion


        /// <summary>
        /// 网站首页
        /// </summary> 
        public ActionResult Index()
        {
            ViewBag.CustomScript = UtilityScript.ShowMessage("尊敬的用户,您好! 本站为测试站点,有效时间至2014年1月20日止,测试期间数据均为测试数据,在此期间你可以通过管理后台对数据进行维护,在测试完毕之后我可以直接把维护好的数据进行保留!",title:"申明:", isCreate: true, isSuccess: false);
            return View();
        }

        /// <summary>
        /// 导航
        /// </summary> 
        public ActionResult Navigation()
        { 
            var logic = new LogicCategory();
            var resultMsg = string.Empty;
            IList<ModelCategory> list = new List<ModelCategory>();
            list = logic.CategoryAll(out resultMsg, 1,"1");

            return PartialView(list);
        }

        /// <summary>
        /// Banner 幻灯片
        /// </summary> 
        public ActionResult Banner(string categoryCode=null, string ownerCode=null,string width="1110" ,string height="100",string isSlide ="1")
        { 
            ViewBag.width = width;
            ViewBag.height = height;
            ViewBag.IsSlide = isSlide;
            var logic = new LogicPictures();
            var resultMsg = string.Empty;
            IList<ModelPictures> list = new List<ModelPictures>();
            list = logic.QueryPicturesListByOwner(out resultMsg, categoryCode, ownerCode);
            return PartialView(list);
        }

        /// <summary>
        /// 侧边栏 小版块 文章列表
        /// </summary>
        /// <param name="categoryCode">分类编号</param>
        /// <param name="topCount">显示条数</param> 
        public ActionResult SidebarForum(string categoryCode = null, string adsCategoryCode = null, string categoryTwoCode=null, string topCount = "5")
        {
            var list = GetForumData(categoryCode, adsCategoryCode, categoryTwoCode, topCount);

            return PartialView(list);
        }

        /// <summary>
        /// 侧边栏 分类 子类列表
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

            list.Remove(model);
             
            return PartialView(list);
        }

        /// <summary>
        /// 内容栏 子版块 + top 显示文章列表
        /// </summary> 
        public ActionResult CategoryForum(string categoryCode = null, string adsCategoryCode = null, string categoryTwoCode=null, string topCount = "5")
        {
            var list = GetForumData(categoryCode, adsCategoryCode, categoryTwoCode, topCount);

            return PartialView(list);
        }

        /// <summary>
        /// 首页小版块 视图
        /// </summary>
        /// <param name="categoryCode"></param>
        /// <param name="adsCategoryCode"></param>
        /// <param name="categoryTwoCode"></param>
        /// <param name="topCount"></param>
        /// <returns></returns>
        public ActionResult IndexCategoryForum(string categoryCode = null, string adsCategoryCode = null, string categoryTwoCode = null, string topCount = "5", string isSlide = "1", string isAbstract="0")
        {
            var list = GetForumData(categoryCode, adsCategoryCode, categoryTwoCode, topCount);
            ViewBag.IsSlide = isSlide;
            ViewBag.IsAbstract = isAbstract;
            return PartialView(list);
        }

        /// <summary>
        /// 侧边栏小版块 显示文章用 版块 : 纤维颜料 | 行情
        /// </summary> 
        public ActionResult CategoryForumContent(string categoryCode = null, string adsCategoryCode = null, string categoryTwoCode = null, string topCount = "5")
        {
            var list = GetForumData(categoryCode, adsCategoryCode, categoryTwoCode, topCount);

            return PartialView(list);
        }

        /// <summary>
        /// 侧边栏 联系我们小版块 
        /// </summary>
        /// <param name="Id"></param>
        /// <returns></returns>
        public ActionResult CategoryForumCont(string Id)
        {
            var model = GetCategoryDetail(Id);
            return PartialView(model);
        }

        /// <summary>
        /// 友情链接
        /// </summary> 
        public ActionResult LinksForum(string Id)
        {
            var resultMsg = string.Empty;
            var idx = 0;
            var logic = new LogicArticle();
            int.TryParse(Id, out idx);

            var model = logic.ArticleDetail(out resultMsg, idx);
            return PartialView(model);
        }

        /// <summary>
        /// 杂志页面 左侧侧边栏上方版块
        /// </summary>
        /// <param name="Id"></param>
        /// <returns></returns>
        public ActionResult CategoryForumMagazine(string Id)
        {
            var model = GetCategoryDetail(Id);
            return PartialView(model);
        }

        /// <summary>
        /// 杂志小版块
        /// </summary>
        /// <returns></returns>
        public ActionResult MagazineForum()
        {
            return PartialView();
        }

        /// <summary>
        /// 展会列表页 模块
        /// </summary> 
        public ActionResult EventListForum(string categoryCode = null, string adsCategoryCode = null, string categoryTwoCode = null, string topCount = "5", string isSlide = "1")
        {
            var list = GetForumData(categoryCode, adsCategoryCode, categoryTwoCode, topCount);
            ViewBag.IsSlide = isSlide;
            return PartialView(list);
        }

        /// <summary>
        /// 首页 滚动版块
        /// </summary> 
        public ActionResult SpeedForum(string categoryCode = null, string adsCategoryCode = null, string categoryTwoCode = null, string topCount = "555")
        {
            var list = GetForumData(categoryCode, adsCategoryCode, categoryTwoCode, topCount);

            return PartialView(list);
        }

        /// <summary>
        /// 对联广告 模块
        /// </summary>
        /// <param name="categoryCode"></param>  
        public ActionResult CoupletAds(string categoryCode=null, string ownerCode=null)
        {
            var logic = new LogicPictures();
            var resultMsg = string.Empty;
            var listTemp = new List<ModelPictures>();
            IList<ModelPictures> list = new List<ModelPictures>();
            list = logic.QueryPicturesListByOwner(out resultMsg, categoryCode, ownerCode);

            if (list.Count > 0)
            {
                listTemp.Add(list.First());
                listTemp.Add(list.Last());
            } 
            return PartialView(listTemp);
        }

        
        /// <summary>
        /// 登录页面
        /// </summary>
        /// <returns></returns>
        public ActionResult Login()
        {
            ViewBag.CustomScript = string.Empty;
            return View();
        }

        [HttpPost]
        public ActionResult Login(ModelUser user)
        {
            var resultMsg = string.Empty;
            var logic = new LogicUser();
            var model = logic.UserDetail(out resultMsg, user.Account);
            if (model != null && model.Account.Equals(user.Account) && model.Password.Equals(user.Password))
            {
                Session["user"] = model.Account;
                ViewBag.CustomScript = UtilityScript.ShowMessage("登录成功!", isCreate: true, isSuccess: true, funName: "Goto");
            }
            else
            {
                Session["user"] = null;
                ViewBag.CustomScript = UtilityScript.ShowMessage("登录失败!", isCreate: true, isSuccess: false);
            }
            return View(user);
        }

    }
}
