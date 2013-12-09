using Library.Logic.DAL;
using MvcApp.Areas.Manage.Controllers;
using MvcApp.Areas.Manage.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcApp.Controllers
{
    public class ArticleController :  BaseController
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

        #endregion
        

        public ActionResult Index(string Category=null, string CategoryTwo=null)
        {
            ModelPagerArticle model = GetData(Category: Category, CategoryTwo: CategoryTwo);
            return View(model);
        }

        [HttpPost]
        public ActionResult Index(string Category, string CategoryTwo, string KeyWord, string PagerIndex, string PagerSize)
        {
            ModelPagerArticle model = GetData(Category: Category, CategoryTwo: CategoryTwo,PagerIndex:PagerIndex,PagerSize:PagerSize);
            return View(model);
        }

    }
}
