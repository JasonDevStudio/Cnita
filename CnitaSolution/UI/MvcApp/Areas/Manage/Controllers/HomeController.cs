using Library.Common;
using Library.Logic.DAL;
using Library.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcApp.Areas.Manage.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

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
            if (model !=null && model.Account.Equals(user.Account) && model.Password.Equals(user.Password))
            {
                Session["admin"] = model.Account;
                ViewBag.CustomScript = UtilityScript.ShowMessage("登录成功!", isCreate: true, isSuccess: true, funName: "Goto");
            }
            else
            {
                Session["admin"] = null;
                ViewBag.CustomScript = UtilityScript.ShowMessage("登录失败!", isCreate: true, isSuccess: false);
            }
            return View(user);
        }

        public ActionResult LogOut()
        {
            Session["admin"] = null;
            return View("Login");
        }

        public ActionResult LogFail()
        {
            Session["admin"] = null;
            return View();
        }
    }
}
