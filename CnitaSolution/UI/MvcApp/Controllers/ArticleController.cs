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
                model.PagerCount = Math.Ceiling(rowCount / pageSize); ;
                model.PagerIndex = pageIndex;
                model.Category = Category;
                model.CategoryTwo = CategoryTwo;
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

        public ActionResult Detail(string Id)
        {
            var model = GetDataModel(Id);

            return View(model);
        }

        public ActionResult Assoc(string Id)
        {
            var model = GetDataModel(Id);

            return View(model);
        }
    }
}
