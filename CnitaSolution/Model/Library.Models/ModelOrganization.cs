using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel.DataAnnotations;

namespace Library.Models
{
    public class ModelOrganization
    {
        /// <summary> 
        /// 编号 
        /// </summary> 
        [Display(Name = "编号")] 
        public Int32 Orgid { get;set;} 

        /// <summary> 
        /// 组织机构名称 
        /// </summary>
        [Required]
        [Display(Name = "组织机构名称")]
        public String Orgname { get;set;} 

        /// <summary> 
        /// 组织机构英文名 
        /// </summary>
        [Display(Name = "组织机构英文名")]
        public String Orgenname { get;set;} 

        /// <summary> 
        /// 通讯地址 
        /// </summary>
        [Display(Name = "通讯地址")]
        public String Address { get;set;} 

        /// <summary> 
        /// 通讯地址(英文) 
        /// </summary>
        [Display(Name = "通讯地址(英文)")]
        public String Addressen { get;set;} 

        /// <summary> 
        /// 邮编 
        /// </summary>
        [Display(Name = "邮编")]
        public String Zipcode { get;set;} 

        /// <summary> 
        /// 网址 
        /// </summary>
        [Display(Name = "网址")]
        public String Internetsite { get;set;} 

        /// <summary> 
        /// 企业性质 
        /// </summary>
        [Display(Name = "企业性质")]
        public String Natureofbusiness { get;set;} 

        /// <summary> 
        /// 固定资产 
        /// </summary>
        [Display(Name = "固定资产")]
        public String Fixedassets { get;set;} 

        /// <summary> 
        /// 企业负责人 
        /// </summary>
        [Display(Name = "企业负责人")]
        public String Legalperson { get;set;} 

        /// <summary> 
        /// 职务 
        /// </summary>
        [Display(Name = "职务")]
        public String Post { get;set;} 

        /// <summary> 
        /// 电话 
        /// </summary>
        [Display(Name = "电话")]
        public String Tel { get;set;} 

        /// <summary> 
        /// 传真 
        /// </summary>
        [Display(Name = "传真")]
        public String Fax { get;set;} 

        /// <summary> 
        /// 手机 
        /// </summary>
        [Display(Name = "手机")]
        public String Phone { get;set;} 

        /// <summary> 
        /// E-Mail 
        /// </summary>
        [Display(Name = "E-Mail")]
        public String Email { get;set;} 

        /// <summary> 
        /// 主要联系人 
        /// </summary>
        [Display(Name = "主要联系人")]
        public String Contact { get;set;} 

        /// <summary> 
        /// 职务 
        /// </summary>
        [Display(Name = "职务")]
        public String Contactpost { get;set;} 

        /// <summary> 
        /// 电话 
        /// </summary>
        [Display(Name = "电话")]
        public String Contacttel { get;set;} 

        /// <summary> 
        /// 传真 
        /// </summary>
        [Display(Name = "传真")]
        public String Contactfax { get;set;} 

        /// <summary> 
        /// 手机 
        /// </summary>
        [Display(Name = "手机")]
        public String Contactphone { get;set;} 

        /// <summary> 
        /// E-mail 
        /// </summary>
        [Display(Name = "E-mail")]
        public String Contactemail { get;set;} 

        /// <summary> 
        /// 单位类别 
        /// </summary>
        [Display(Name = "单位类别")]
        public String Unittype { get;set;} 

        /// <summary> 
        /// 主要产品涉及的应用领域 
        /// </summary>
        [Display(Name = "产品涉及的应用领域")]
        public String Productapplications { get;set;} 

        /// <summary> 
        /// 主要非织造布生产工艺类别 
        /// </summary>
        [Display(Name = "非织造布生产工艺类别")]
        public String Processcategory { get;set;} 

        /// <summary> 
        /// 会员级别 
        /// </summary>
        [Display(Name = "会员级别")]
        public String Membershiplevel { get;set;} 

        /// <summary> 
        /// 单位简介 
        /// </summary>
        [Display(Name = "单位简介")]
        public String Introduction { get;set;} 

        /// <summary> 
        ///  创建时间
        /// </summary>
        [Display(Name = "创建时间")]
        public DateTime Createdate { get;set;}

        /// <summary> 
        ///  状态
        /// </summary>
        [Display(Name = "状态")]
        public string Status { get; set; } 

    }
}
