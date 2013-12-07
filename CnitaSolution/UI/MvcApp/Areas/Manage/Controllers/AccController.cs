using Library.Common;
using Library.Logic.DAL;
using Library.Models;
using MvcApp.Areas.Manage.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data;
using Library.StringItemDict;

namespace MvcApp.Areas.Manage.Controllers
{
    public class AccController : BaseController
    {
        /// <summary>
        /// 获取组织架构下拉列表
        /// </summary> 
        private IList<SelectListItem> GetOrgs(string selected = null)
        {
            string resultMsg = string.Empty;
            LogicOrganization logic = new LogicOrganization();
            var list = logic.OrganizationAll(out resultMsg);
            var res = (from ModelOrganization model in list
                      select new SelectListItem()
                      {
                          Selected = string.IsNullOrWhiteSpace(selected) == false && model.Orgid.ToString().Equals(selected) ? true : false,
                          Text = model.Orgname,
                          Value = model.Orgid.ToString()
                      }).ToList();

            return res;
        }

        public ActionResult Index()
        {
            var model = new ModelPagerAccount();
            ViewBag.Orgs = GetOrgs();
            model.PagerCount = 0; 
            model.PagerIndex = 1; 
            return View(model);
        }

        [HttpPost]
        public ActionResult Index(string KeyWord, string Organization, string PagerIndex, string PagerSize)
        {
            var pageIndex = 1;
            var pageSize = 0;
            int.TryParse(PagerIndex, out pageIndex);
            int.TryParse(PagerSize, out pageSize);

            var resultMsg = string.Empty;
            var recordCount = decimal.Zero;
            var logic = new LogicUser();
            var criteria = new CriteriaUser.Pager();               
            var model = new ModelPagerAccount();

            ViewBag.Orgs = GetOrgs(Organization); 
            criteria.KeyWord = model.KeyWord;

            var list = logic.QueryUserListPager(out resultMsg, out recordCount, criteria, pageSize: pageSize, pageIndex: pageIndex);
            model.PagerRowCount = recordCount;
            model.PagerCount = Math.Ceiling(recordCount / pageSize);
            model.PagerIndex = pageIndex;
            model.AccList = list;
            return View(model);
        }

        public ActionResult Create(string Id = null)
        {
            ViewBag.Orgs = GetOrgs();
            var resultMsg = string.Empty;
            var model = new ModelUser();
            if (!string.IsNullOrWhiteSpace(Id))
            {
                LogicUser logic = new LogicUser();
                model = logic.UserDetail(out resultMsg, int.Parse(Id));
            }
            return View(model);
        }

        [HttpPost]
        public ActionResult Create(ModelUser model)
        {
            var resultMsg = string.Empty;
            var result = new ResultBase();
            ViewBag.Orgs = GetOrgs(model.Organization.ToString());

            var logic = new LogicUser();
            model.Status = 1;
            var res = logic.UserInsertUpdate(out resultMsg, model);
            if (res > 0)
            {
                resultMsg = "操作成功!";
                ViewBag.CustomScript = UtilityScript.ShowMessage(resultMsg, isCreate: true, isSuccess: true, funName: "Goto");
            }
            else
            {
                resultMsg = string.IsNullOrWhiteSpace(resultMsg) ?  "操作失败,请检查数据是否正确后重新操作!" : resultMsg.Replace(BaseDict.ErrorPrefix,""); 
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
            var logic = new LogicUser();
            var res = logic.UserDelete(out resultMsg, idx);
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
