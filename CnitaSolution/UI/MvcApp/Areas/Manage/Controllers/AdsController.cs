using Library.Common;
using Library.Logic.DAL;
using Library.Models;
using MvcApp.Areas.Manage.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcApp.Areas.Manage.Controllers
{
    public class AdsController : BaseController
    {
        public ActionResult Index()
        {
            ViewBag.Categorys = base.QueryCategoryAll();
            ViewBag.CategoryOwner = base.QueryCategoryAll();
            ModelPagerAds model = new ModelPagerAds();
            model.PagerCount = 0;
            model.PagerIndex = 1;
            return View(model);
        }

        [HttpPost]
        public ActionResult Index(ModelPagerAds model, string PagerIndex, string PagerSize)
        {
            ViewBag.Categorys = base.QueryCategoryAll(model.Category);
            ViewBag.CategoryOwner = base.QueryCategoryAll(model.OwnerCategory);
            var resultMsg = string.Empty;
            var recordCount = decimal.Zero;
            var criteria = new CriteriaPictures.Pager();
            criteria.Category = model.Category;
            criteria.KeyWord = model.KeyWord;
            criteria.OwnerCategory = model.OwnerCategory;

            var pageIndex = 0;
            var pageSize = 0;
            int.TryParse(PagerIndex, out pageIndex);
            int.TryParse(PagerSize, out pageSize);

            LogicPictures logic = new LogicPictures();
            var list = logic.QueryPicturesListPager(out resultMsg, out recordCount, criteria, pageSize: pageSize, pageIndex: pageIndex);
            model.PagerRowCount = recordCount;
            model.PagerCount = Math.Ceiling(recordCount / pageSize);
            model.PagerIndex = pageIndex;
            model.AdsList = list;
            return View(model);
        }

        [HttpPost]
        public ActionResult Delete(string Id)
        {
            int idx = 0;
            int.TryParse(Id, out idx);
            var result = new ResultBase();
            var resultMsg = string.Empty;
            LogicPictures logic = new LogicPictures();
            var res = logic.PicturesDelete(out resultMsg, idx);
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

        public ActionResult Create(string Id = null)
        {
            var resultMsg = string.Empty;
            ModelPictures model = new ModelPictures();
            if (string.IsNullOrWhiteSpace(Id))
            {
                ViewBag.Categorys = base.QueryCategoryAll();
                ViewBag.CategoryOwner = base.QueryCategoryAll();
            }
            else
            {
                LogicPictures logic = new LogicPictures();
                model = logic.PicturesDetail(out resultMsg, int.Parse(Id));
                if (model != null)
                {
                    ViewBag.Categorys = base.QueryCategoryAll();
                    ViewBag.CategoryOwner = base.QueryCategoryAll();
                }
                else
                {
                    ViewBag.Categorys = base.QueryCategoryAll(model.Categoryid.ToString());
                    ViewBag.CategoryOwner = base.QueryCategoryAll(model.Owner.ToString());
                }
            }
            return View(model);
        }

        [HttpPost]
        public ActionResult Create(ModelPictures model, FormCollection fc)
        {
            var resultMsg = string.Empty;
            ViewBag.Categorys = base.QueryCategoryAll(model.Categoryid.ToString());
            ViewBag.CategoryOwner = base.QueryCategoryAll(model.Owner.ToString());
            var result = new ResultBase();
            var fileName = CommonMethod.ImageUpload(out result, this.HttpContext);
            if (result.result == -2)
            {
                ViewBag.CustomScript = UtilityScript.ShowMessage(result.resultMsg, isCreate: true);
                return View(model);
            }
            model.Picuri = string.IsNullOrWhiteSpace(fileName) ? model.Picuri : fileName;

            LogicPictures logic = new LogicPictures();
            var res = logic.PicturesInsertUpdate(out resultMsg, model);
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

    }
}
