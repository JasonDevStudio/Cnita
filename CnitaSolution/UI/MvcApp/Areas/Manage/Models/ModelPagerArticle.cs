using Library.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MvcApp.Areas.Manage.Models
{
    public class ModelPagerArticle : ModelPagerBase
    {       
        /// <summary>
        /// 关键字
        /// </summary>
        [Display(Name = "关键字")]
        public string KeyWord{get;set;}

        /// <summary>
        /// 分类
        /// </summary>
        [Display(Name = "分类")]
        public string Category { get; set; }

        /// <summary>
        /// 副分类
        /// </summary>
        [Display(Name = "副分类")]
        public string CategoryTwo { get; set; }

        /// <summary>
        /// 年份
        /// </summary>
        public string Year { get; set; }

        /// <summary>
        /// 月份
        /// </summary>
        public string Month { get; set; }
        
        /// <summary>
        /// 数据列表
        /// </summary>
        public IList<ModelArticle> ArtcleList { get; set; }
    }
}