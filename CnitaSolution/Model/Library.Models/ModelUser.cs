using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel.DataAnnotations;

namespace Library.Models
{
    public class ModelUser
    {
        /// <summary> 
        /// 编号 
        /// </summary> 
        [Display(Name = "编号")] 
        public Int32 Id { get;set;} 

        /// <summary> 
        /// 用户名 
        /// </summary>
        [Required]
        [Display(Name = "用户名")]
        public String Name { get;set;} 

        /// <summary> 
        /// 账号 
        /// </summary>
        [Required]
        [Display(Name = "账号")]
        public String Account { get;set;} 

        /// <summary> 
        /// 密码 
        /// </summary>
        [Required]
        [StringLength(20,MinimumLength=6,ErrorMessage="密码长度不符")]
        [Display(Name = "密码")]
        public String Password { get;set;}

        /// <summary> 
        /// 确认密码 
        /// </summary>
        [Required]
        [StringLength(20, MinimumLength = 6, ErrorMessage = "确认密码长度不符")]
        [Display(Name = "确认密码")]
        public String ConfirmPassword { get; set; } 

        /// <summary> 
        /// 组织机构 
        /// </summary>
        [Required]
        [Display(Name = "组织机构")]
        [RegularExpression(@"^[0-9]*$", ErrorMessage = "组织机构输入错误！")]
        public Int32 Organization { get;set;} 

        /// <summary>
        /// 组织机构名称
        /// </summary>
        public string OrganizationName { get;set;} 

        /// <summary> 
        /// 状态 
        /// </summary>
        [Required]
        [Display(Name = "状态")]
        [RegularExpression(@"^[0-9]*$", ErrorMessage = "状态输入错误！")]
        public Int32 Status { get;set;} 

        /// <summary> 
        /// 权限 
        /// </summary>
        [Display(Name = "权限")]
        public String Permissions { get;set;} 

        /// <summary> 
        /// 创建时间 
        /// </summary>
        [Required]
        [Display(Name = "创建时间")]
        public DateTime Createdate { get;set;} 

    }
}
