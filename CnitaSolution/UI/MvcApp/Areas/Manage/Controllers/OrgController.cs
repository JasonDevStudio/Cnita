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
    public class OrgController : BaseController
    { 
        public ActionResult Index()
        {
            ModelPagerOrg model = new ModelPagerOrg();
            model.PagerCount = 0; 
            model.PagerIndex = 1; 
            return View(model);
        }

        [HttpPost]
        public ActionResult Index(ModelPagerOrg model, string PagerIndex, string PagerSize)
        {
            var pageIndex = 0;
            var pageSize = 0;
            int.TryParse(PagerIndex, out pageIndex);
            int.TryParse(PagerSize, out pageSize);

            var resultMsg = string.Empty;
            var recordCount = decimal.Zero;
            var logic = new LogicOrganization();
            var criteria = new CriteriaOrganization.Pager();
            criteria.KeyWord = model.KeyWord;


            var list = logic.QueryOrganizationListPager(out resultMsg, out recordCount, criteria, pageSize: pageSize, pageIndex: pageIndex);
            model.PagerRowCount = recordCount;
            model.PagerCount = Math.Ceiling(recordCount / pageSize);
            model.AdsList = list;
            return View(model);
        }

        public ActionResult Create(string Id=null)
        {
            var resultMsg = string.Empty;
            ModelOrganization model = new ModelOrganization();
            if (!string.IsNullOrWhiteSpace(Id)) 
            {
                LogicOrganization logic = new LogicOrganization();
                model = logic.OrganizationDetail(out resultMsg, int.Parse(Id));                
            }
            return View(model);
        }

        [HttpPost]
        public ActionResult Create(ModelOrganization model)
        {
            var resultMsg = string.Empty; 
            var result = new ResultBase();

            var logic = new LogicOrganization();
            model.Status = "1";
            var res = logic.OrganizationInsertUpdate(out resultMsg, model);
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

        [HttpPost]
        public ActionResult Delete(string Id)
        {
            int idx = 0;
            int.TryParse(Id, out idx);
            var result = new ResultBase();
            var resultMsg = string.Empty;
            var logic = new LogicOrganization();
            var res = logic.OrganizationDelete(out resultMsg, idx);
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

        private IDictionary<string, string> GetUnittype(string selected)
        {
            return null;
        }
    }
}
