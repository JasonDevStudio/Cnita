﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Library.Logic.DAL;
using Library.Models;
using MvcApp.Areas.Manage.Models;
using Library.Common;
using Library.StringItemDict;

namespace MvcApp.Areas.Manage.Controllers
{
    public class CategoryController : BaseController
    {
        #region 私有函数
        #endregion

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Tree()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Tree(FormCollection fc)
        {
            string resultMsg = string.Empty;
            LogicCategory logic = new LogicCategory();
            var list = logic.CategoryAllThree(out resultMsg, ParentCateg: 0);

            var listTree = (from ModelCategory model in list
                            select new ModelTree() {
                                id = model.Id.ToString(), 
                                name = model.Name, 
                                pId = model.Parentcateg.ToString() }).ToList();


            return Json(listTree);
        }

        public ActionResult Edit(string id = null)
        {
            ModelCategory model = new ModelCategory();

            if (string.IsNullOrWhiteSpace(id))
            {                
                ViewBag.Categorys = base.QueryCategoryAll();
                return View(model);
            }
            else
            {
                var idx = 0;
                int.TryParse(id, out idx);
                var resultMsg = string.Empty;
                LogicCategory logic = new LogicCategory();
                model = logic.CategoryDetail(out resultMsg, idx);
                if (model != null && model.Parentcateg > 0)
                {
                    ViewBag.Categorys = base.QueryCategoryAll(model.Parentcateg.ToString());
                }
                else
                {
                    ViewBag.Categorys = base.QueryCategoryAll();
                }


                if (resultMsg.Contains(BaseDict.ErrorPrefix))
                {
                    ViewBag.CustomScript = UtilityScript.ShowMessage(resultMsg, isCreate: true, isSuccess: true);
                }
                return View(model);
            }

        }
         
        [HttpPost]
        public ActionResult Edit(ModelCategory model, FormCollection fc)
        {
            var resultMsg = string.Empty;
            ViewBag.Categorys = base.QueryCategoryAll(model.Parentcateg.ToString());
            var result = new ResultBase();
            if (model.Id < 1)
            {
                resultMsg = "非法数据,无法提交!";
                ViewBag.CustomScript = UtilityScript.ShowMessage(resultMsg, isCreate: true, isSuccess: true, funName: "Goto");
                return View(model);
            }

            //图片上传
            var fileName = CommonMethod.ImageUpload(out result, this.HttpContext);
            if (result.result == -2)
            {
                ViewBag.CustomScript = UtilityScript.ShowMessage(result.resultMsg, isCreate: true);
                return View(model);
            }
            model.Thumbnails = fileName;  //model.Context = fc["editorValue"];

            //数据保存
            LogicCategory logic = new LogicCategory();
            var res = logic.CategoryInsertUpdate(out resultMsg, model);
            if (res > 0)
            {
                resultMsg = "操作成功!";
                ViewBag.CustomScript = UtilityScript.ShowMessage(resultMsg, isCreate: true, isSuccess: true, funName: "Goto");
            }
            else
            {
                resultMsg = "操作失败,请检查数据是否正确后重新操作!";
                ViewBag.CustomScript = UtilityScript.ShowMessage(resultMsg, isCreate: true, isSuccess: true);
            }
            return View(model);
        }


        [HttpPost]
        public ActionResult Delete(string Id)
        {
            int idx = 0;
            int.TryParse(Id, out idx);
            var result = new ResultBase();
            var resultMsg = string.Empty;
            LogicCategory logic = new LogicCategory();
            var res = logic.CategoryDelete(out resultMsg, idx);
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