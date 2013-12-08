using Library.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MvcApp.Areas.Manage.Models
{
    public class ModelPagerAds : ModelPagerBase
    {
        /// <summary>
        /// 关键字
        /// </summary>
        [Display(Name = "关键字")]
        public string KeyWord { get; set; }

        /// <summary>
        /// 分类
        /// </summary>
        [Display(Name = "分类")]
        public string Category { get; set; }

        /// <summary>
        /// 归属版块
        /// </summary>
        [Display(Name = "归属版块")]
        public string OwnerCategory { get; set; }

        /// <summary>
        /// 数据列表
        /// </summary>
        public IList<ModelPictures> AdsList { get; set; }
    }
}