using Library.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MvcApp.Areas.Manage.Models
{
    public class ModelPagerOrg : ModelPagerBase
    {
        /// <summary>
        /// 关键字
        /// </summary>
        [Display(Name = "关键字")]
        public string KeyWord { get; set; }

        /// <summary>
        /// 数据列表
        /// </summary>
        public IList<ModelOrganization> AdsList { get; set; }
    }
}