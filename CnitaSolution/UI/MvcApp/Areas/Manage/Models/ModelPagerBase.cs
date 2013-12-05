using Library.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MvcApp.Areas.Manage.Models
{
    public class ModelPagerBase
    {
        /// <summary>
        /// 当前页索引
        /// </summary>
        public decimal PagerIndex { get; set; }

        /// <summary>
        /// 分页控件每组显示页数
        /// </summary>
        public decimal PagerShowCount { get; set; }

        /// <summary>
        /// 每页显示数量
        /// </summary>
        public decimal PagerSize { get; set; }

        /// <summary>
        /// 总页数
        /// </summary>
        public decimal PagerCount { get; set; }

        /// <summary>
        /// 数据总数量
        /// </summary>
        public decimal PagerRowCount { get; set; }

        
    }
}