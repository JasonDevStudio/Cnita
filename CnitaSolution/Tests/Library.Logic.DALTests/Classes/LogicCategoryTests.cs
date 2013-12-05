using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Library.Logic.DAL;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Library.Models;
namespace Library.Logic.DAL.Tests
{
    [TestClass()]
    public class LogicCategoryTests
    {
        [TestMethod()]
        public void CategoryDetailTest()
        {
            var resultMsg = string.Empty;
            LogicCategory logic = new LogicCategory();
            var model = logic.CategoryDetail(out resultMsg, 2);
            ModelCategory model1 = null;
            Assert.AreNotEqual(model, model1);
        }
    }
}
