using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel.DataAnnotations;

namespace Library.Models
{
    public class ModelCategory
    {
        /// <summary> 
        /// 类别 
        /// </summary> 
        [Display(Name = "类别")] 
        public Int32 Id { get;set;} 

        /// <summary> 
        /// 名称 
        /// </summary>
        [Required]
        [Display(Name = "名称")]
        public String Name { get;set;} 

        /// <summary> 
        /// 链接地址 
        /// </summary>
        [Display(Name = "链接地址")]
        public String Nameen { get;set;} 

        /// <summary> 
        /// 缩略图 
        /// </summary>
        [Display(Name = "缩略图")]
        public String Thumbnails { get;set;} 

        /// <summary> 
        /// 简介 
        /// </summary>
        [Display(Name = "简介")]
        public String Introduction { get;set;} 

        /// <summary> 
        /// 父类 
        /// </summary> 
        [Display(Name = "父类")]
        //[RegularExpression(@"^[0-9]*$", ErrorMessage = "父类输入错误！")]
        public string Parentcateg { get;set;}

        /// <summary> 
        /// 深度
        /// </summary>
        public Int32 Level { get; set; }

        /// <summary> 
        /// 排序 
        /// </summary>
        [Display(Name = "排序")]
        [RegularExpression(@"^[0-9]*$", ErrorMessage = "排序输入错误！")]
        public Int32 Sort { get;set;} 

        /// <summary> 
        /// 导航 
        /// </summary>
        [Display(Name = "导航")]
        [RegularExpression(@"^[0-9]*$", ErrorMessage = "导航输入错误！")]
        public Int32 Isnav { get;set;} 

        /// <summary> 
        /// 是否首页 
        /// </summary>
        [Display(Name = "是否首页")]
        [RegularExpression(@"^[0-9]*$", ErrorMessage = "是否首页输入错误！")]
        public Int32 Isindex { get;set;} 

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
