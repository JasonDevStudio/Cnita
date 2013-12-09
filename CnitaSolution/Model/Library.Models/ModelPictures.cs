using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel.DataAnnotations;

namespace Library.Models
{
    public class ModelPictures
    {
        /// <summary> 
        /// 编号 
        /// </summary> 
        [Display(Name = "编号")] 
        public Int32 Id { get;set;} 

        /// <summary> 
        /// 名称 
        /// </summary>
        [Display(Name = "名称")]
        public String Name { get;set;} 

        /// <summary> 
        /// 类型 
        /// </summary>
        [Required]
        [Display(Name = "类型")]
        [RegularExpression(@"^[0-9]*$", ErrorMessage = "类型输入错误！")]
        public Int32 Categoryid { get;set;}

        /// <summary> 
        /// 类型 
        /// </summary>
        [Display(Name = "类型")]
        public string CategoryName { get; set; }

        /// <summary> 
        /// 归属版块 
        /// </summary>
        [Display(Name = "归属版块")]
        [RegularExpression(@"^[0-9]*$", ErrorMessage = "归属输入错误！")]
        public string Owner { get;set;}

        /// <summary> 
        /// 归属版块 
        /// </summary>
        [Display(Name = "归属版块")] 
        public string OwnerCategoryName { get; set; }

        /// <summary> 
        /// 地址 
        /// </summary>
        [Required]
        [Display(Name = "广告图片")]
        public String Picuri { get;set;} 

        /// <summary> 
        /// 图片链接 
        /// </summary>
        [Display(Name = "广告链接")]
        public String Piclink { get;set;} 

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
