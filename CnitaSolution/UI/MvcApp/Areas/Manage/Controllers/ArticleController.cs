﻿using Library.Common;
using Library.Logic.DAL;
using Library.Models;
using MvcApp.Areas.Manage.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcApp.Areas.Manage.Controllers
{
    public class ArticleController : BaseController
    {
        #region 私有函数
        
        #endregion

        public ActionResult Index()
        { 
            ViewBag.Categorys = base.QueryCategoryAll();
            ModelPagerArticle model = new ModelPagerArticle();
            model.PagerCount = 0; 
            model.PagerIndex = 1; 
            return View(model);
        }
        [HttpPost]
        public ActionResult Index(string Category, string CategoryTwo, string KeyWord, string PagerIndex, string PagerSize)
        {
            var pageIndex = 0;
            var pageSize = 0;
            int.TryParse(PagerIndex, out pageIndex);
            int.TryParse(PagerSize, out pageSize);

            var rowCount = decimal.Zero; 
            var resultMsg = string.Empty;
            var model = new ModelPagerArticle();            
            ViewBag.Categorys = base.QueryCategoryAll();
            ViewBag.CategorysTwo = base.QueryCategoryAll();
            LogicArticle artDal = new LogicArticle();            
            
            CriteriaArticle.Pager criteria = new CriteriaArticle.Pager();
            criteria.CategoryId = string.IsNullOrWhiteSpace(Category) ? null : Category;
            criteria.CategoryTwo = string.IsNullOrWhiteSpace(CategoryTwo) ? null : CategoryTwo;
            criteria.KeyWord = string.IsNullOrWhiteSpace(KeyWord) ? null : KeyWord;
            var list = artDal.QueryArticleListPager(out resultMsg, out rowCount, criteria, pageSize: pageSize, pageIndex: pageIndex);
             
            model.ArtcleList = list;
            model.PagerCount = pageSize == 0 ? 0 : Math.Ceiling(rowCount / pageSize);
            model.PagerIndex = pageIndex;

            return View(model);
        }

        /// <summary>
        /// 新增文章
        /// </summary> 
        public ActionResult Create(string Id = null)
        {
            var model = new ModelArticle();
            if (!string.IsNullOrWhiteSpace(Id))
            {
                var idx = Convert.ToInt32(Id);
                LogicArticle artDal = new LogicArticle();
                var resultMsg = string.Empty;
                model = artDal.ArticleDetail(out resultMsg, idx);
                model.IsPermission = model.Status == 1 ? true : false;
                model.IsRec = model.Isrecommend == 1 ? true : false;
                ViewBag.Categorys = QueryCategoryAll(model.Id.ToString());
                ViewBag.CustomScript = string.Empty;
            }
            else
            {
                ViewBag.Categorys = QueryCategoryAll();
                ViewBag.CustomScript = string.Empty;
            }
            return View(model);

        }

        /// <summary>
        /// 新增文章
        /// </summary> 
        [HttpPost]
        [AcceptVerbs(HttpVerbs.Post)]
        [ValidateInput(false)]
        public ActionResult Create(ModelArticle model, FormCollection fc)
        {
            ViewBag.Categorys = QueryCategoryAll(model.Categoryid.ToString());
            ViewBag.CategorysTwo = QueryCategoryAll(model.CategoryTwo);
            var result = new ResultBase();
            var resultMsg = string.Empty;
            var fileName = CommonMethod.ImageUpload(out result, this.HttpContext);
            if (result.result == -2)
            {
                ViewBag.CustomScript = UtilityScript.ShowMessage(result.resultMsg, isCreate: true);
                return View(model);
            }

            model.Context = fc["editorValue"];
            model.Thumbnails = string.IsNullOrWhiteSpace(fileName) ? model.Thumbnails : fileName; 
            model.Status = Convert.ToInt32(model.IsPermission);
            model.Isrecommend = Convert.ToInt32(model.IsRec);
            LogicArticle artDal = new LogicArticle();
            var res = artDal.ArticleInsertUpdate(out resultMsg, model);
            if (res > 0)
            {
                resultMsg = "操作成功!";
                ViewBag.CustomScript = UtilityScript.ShowMessage(resultMsg, isCreate: true, isSuccess: true, funName: "Goto");
            }
            else
            {
                resultMsg = "操作失败,请检查数据是否正确后重新操作!";
                ViewBag.CustomScript = UtilityScript.ShowMessage(resultMsg, isCreate: true, isSuccess: true, funName: "BtnShow");
            }
            return View(model);
        }

        /// <summary>
        /// 删除
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        public ActionResult Delete(string Id)
        {
            int idx = 0;
            int.TryParse(Id,out idx);
            var result = new ResultBase();
            var resultMsg = string.Empty;
            LogicArticle artDal = new LogicArticle();
            var res = artDal.ArticleDelete(out resultMsg, idx);
            if (res > 0)
            {
                result.result = 1;
                result.resultMsg = "删除成功!";
            }
            else
            {
                result.result = -1;
                result.resultMsg = string.IsNullOrWhiteSpace(resultMsg) ? "删除失败!" : resultMsg;
            }

            return Json(result);
        }
    }
     
}
