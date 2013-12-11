using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel.DataAnnotations;

namespace Library.Models
{
    public class ModelArticle
    {
        /// <summary> 
        /// 编号 
        /// </summary>
        [Display(Name = "编号")]
        public Int32 Id { get;set;} 

        /// <summary> 
        /// 标题 
        /// </summary>
        [Required]
        [Display(Name = "标题")]
        public String Title { get;set;} 

        /// <summary> 
        /// 作者 
        /// </summary>
        [Display(Name = "作者")]
        public String Author { get;set;} 

        /// <summary> 
        /// 来源 
        /// </summary>
        [Display(Name = "来源")]
        public String Source { get;set;} 

        /// <summary> 
        /// 内容 
        /// </summary>
        [Required]
        [Display(Name = "内容")]
        public String Context { get;set;} 

        /// <summary> 
        /// 摘要 
        /// </summary>
        [Display(Name = "摘要")]
        public String Abstract { get;set;} 

        /// <summary> 
        /// 预览图 
        /// </summary>
        [Display(Name = "预览图")]
        public String Thumbnails { get;set;} 

        /// <summary> 
        /// 类型 
        /// </summary>
        [Required]
        [Display(Name = "类型")]
        [RegularExpression(@"^[0-9]*$", ErrorMessage = "类型输入错误！")]
        public Int32 Categoryid { get;set;}

        /// <summary> 
        /// 副类型 
        /// </summary>
        [Display(Name = "副类型")]
        public string CategoryTwo { get; set; }

        /// <summary>
        /// 类型名称
        /// </summary>
        public string CategoryName { get; set; }

        /// <summary> 
        /// 关键字 
        /// </summary>
        [Display(Name = "关键字")]
        public String Keyword { get;set;} 

        /// <summary> 
        /// 推荐 
        /// </summary>
        [Display(Name = "推荐")]
        [RegularExpression(@"^[0-9]*$", ErrorMessage = "推荐输入错误！")]
        public Int32 Isrecommend { get;set;}

        /// <summary> 
        /// 推荐 
        /// </summary>
        [Display(Name = "推荐")]
        public bool IsRec { get; set; }

        /// <summary> 
        /// 是否登录查看 
        /// </summary>
        [Display(Name = "是否登录查看")]
        public bool IsPermission { get; set; }

        /// <summary> 
        /// 颜色 
        /// </summary>
        [Display(Name = "颜色")]
        public String Titlecolor { get;set;} 

        /// <summary> 
        /// 加粗 
        /// </summary>
        [Display(Name = "加粗")]
        [RegularExpression(@"^[0-9]*$", ErrorMessage = "加粗输入错误！")]
        public Int32 Titleisbold { get;set;} 

        /// <summary> 
        /// 状态 
        /// </summary>
        [Required]
        [Display(Name = "状态")]
        [RegularExpression(@"^[0-9]*$", ErrorMessage = "状态输入错误！")]
        public Int32 Status { get;set;} 

        /// <summary> 
        /// 创建时间 
        /// </summary>
        [Required]
        [Display(Name = "创建时间")]
        public DateTime Createdate { get;set;} 

    }
}
