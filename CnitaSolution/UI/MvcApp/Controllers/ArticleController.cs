using Library.Common;
using Library.Logic.DAL;
using Library.Models;
using Library.StringItemDict;
using MvcApp.Areas.Manage.Controllers;
using MvcApp.Areas.Manage.Models;
using MvcApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcApp.Controllers
{
    public class ArticleController : BaseController
    {
        #region 私有函数

        private ModelPagerArticle GetData(string Category = null, string CategoryTwo = null, string KeyWord = null, string PagerIndex = "1", string PagerSize = "30")
        {
            var model = new ModelPagerArticle();
            model.PagerCount = 0;
            model.PagerIndex = 1;

            if (!string.IsNullOrWhiteSpace(Category) || !string.IsNullOrWhiteSpace(CategoryTwo))
            {
                var pageIndex = 0;
                var pageSize = 0;
                int.TryParse(PagerIndex, out pageIndex);
                int.TryParse(PagerSize, out pageSize);

                var rowCount = decimal.Zero;
                var resultMsg = string.Empty;
                LogicArticle artDal = new LogicArticle();

                CriteriaArticle.Pager criteria = new CriteriaArticle.Pager();
                criteria.CategoryId = string.IsNullOrWhiteSpace(Category) ? null : Category;
                criteria.CategoryTwo = string.IsNullOrWhiteSpace(CategoryTwo) ? null : CategoryTwo;
                criteria.KeyWord = string.IsNullOrWhiteSpace(KeyWord) ? null : KeyWord;
                var list = artDal.QueryArticleListPager(out resultMsg, out rowCount, criteria, pageSize: pageSize, pageIndex: pageIndex);

                model.ArtcleList = list;
                model.PagerCount = pageSize == 0 ? 0 :Math.Ceiling(rowCount / pageSize); 
                model.PagerIndex = pageIndex;
                model.Category = Category;
                model.CategoryTwo = CategoryTwo;
                if (list.Count>0)
                model.KeyWord = list.First().CategoryName;
            }

            return model;
        }

        private ModelArticle GetDataModel(string Id)
        {
            var idx = 0;
            var resultMsg = string.Empty;
            var logic = new LogicArticle();
            int.TryParse(Id, out idx);
            var model = logic.ArticleDetail(out resultMsg, idx);

            if (!string.IsNullOrWhiteSpace(resultMsg) && resultMsg.Contains(BaseDict.ErrorPrefix))
            {
                model.Context = resultMsg;
            }

            if (model.Id < 1)
            {
                model.Context = "未查询到数据!";
            }

            return model;
        }

        #endregion

        /// <summary>
        /// 文章列表
        /// </summary> 
        public ActionResult Index(string Id = null, string CategoryTwo = null)
        {
            ModelPagerArticle model = GetData(Category: Id, CategoryTwo: CategoryTwo);
            return View(model);
        }

        [HttpPost]
        public ActionResult Index(string Id, string CategoryTwo, string KeyWord, string PagerIndex, string PagerSize)
        {
            ModelPagerArticle model = GetData(Category: Id, CategoryTwo: CategoryTwo, PagerIndex: PagerIndex, PagerSize: PagerSize);
            return View(model);
        }

        /// <summary>
        /// 文章 详情
        /// </summary> 
        public ActionResult Detail(string Id)
        {
            var model = GetDataModel(Id);

            return View(model);
        }

        /// <summary>
        /// 协会介绍 内容页
        /// </summary> 
        public ActionResult Assoc(string Id)
        {
            var model = GetDataModel(Id);

            return View(model);
        }

        /// <summary>
        /// 会员企业 列表页
        /// </summary> 
        public ActionResult AssocList(string Id, string CategoryTwo, string KeyWord, string PagerIndex="1", string PagerSize="30")
        {
            var model = GetData(Category: Id, CategoryTwo: CategoryTwo, PagerIndex: PagerIndex, PagerSize: PagerSize);

            return View(model);
        }

        /// <summary>
        /// 子版块列表页
        /// </summary>
        /// <param name="Id"></param>
        /// <returns></returns>
        public ActionResult AssocCates(string Id)
        {
            var categoryId = 0;
            var resultMsg = string.Empty;
            var logic = new LogicCategory();

            int.TryParse(Id, out categoryId);

            IList<ModelCategory> list = new List<ModelCategory>();
            list = logic.CategoryAll(out resultMsg, categoryId, "2");
            var modelList = (from ModelCategory m in list
                             where m.Id == categoryId
                             select m).ToList();
            var model = modelList != null && modelList.Count > 0 ? modelList.First() : new ModelCategory();

            ViewBag.CategName = model.Name;
            ViewBag.CategoryCode = Id; 

            list.Remove(model);

            return View(list);
        }

        /// <summary>
        /// 新闻资讯 列表页面
        /// </summary>
        /// <returns></returns>
        public ActionResult NewsList()
        {
            return View();
        }

        /// <summary>
        /// 会展信息 列表页面
        /// </summary>
        /// <returns></returns>
        public ActionResult EventList()
        {
            return View();
        }
    }
}
