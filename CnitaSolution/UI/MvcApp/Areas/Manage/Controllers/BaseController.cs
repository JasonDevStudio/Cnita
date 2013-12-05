using Library.Logic.DAL;
using Library.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcApp.Areas.Manage.Controllers
{
    public class BaseController : Controller
    {
        /// <summary>
        /// 查询版块下所有分类
        /// </summary>
        /// <param name="selected">选中项</param> 
        protected IList<SelectListItem> QueryCategoryAll(string selected = null)
        {
            string resultMsg = string.Empty;
            LogicCategory dalCategory = new LogicCategory();
            var list = dalCategory.CategoryAllThree(out resultMsg, ParentCateg: 0);
            var slist = (from ModelCategory model in list
                         select new SelectListItem()
                         {
                             Selected = model.Id.ToString().Equals(selected) ? true : false,
                             Text = model.Name,
                             Value = model.Id.ToString()
                         }).ToList();
            return slist;
        }

    }
}
