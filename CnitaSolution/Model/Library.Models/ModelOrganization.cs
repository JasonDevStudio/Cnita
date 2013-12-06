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
        /// ��� 
        /// </summary> 
        [Display(Name = "���")] 
        public Int32 Orgid { get;set;} 

        /// <summary> 
        /// ��֯�������� 
        /// </summary>
        [Required]
        [Display(Name = "��֯��������")]
        public String Orgname { get;set;} 

        /// <summary> 
        /// ��֯����Ӣ���� 
        /// </summary>
        [Display(Name = "��֯����Ӣ����")]
        public String Orgenname { get;set;} 

        /// <summary> 
        /// ͨѶ��ַ 
        /// </summary>
        [Display(Name = "ͨѶ��ַ")]
        public String Address { get;set;} 

        /// <summary> 
        /// ͨѶ��ַ(Ӣ��) 
        /// </summary>
        [Display(Name = "ͨѶ��ַ(Ӣ��)")]
        public String Addressen { get;set;} 

        /// <summary> 
        /// �ʱ� 
        /// </summary>
        [Display(Name = "�ʱ�")]
        public String Zipcode { get;set;} 

        /// <summary> 
        /// ��ַ 
        /// </summary>
        [Display(Name = "��ַ")]
        public String Internetsite { get;set;} 

        /// <summary> 
        /// ��ҵ���� 
        /// </summary>
        [Display(Name = "��ҵ����")]
        public String Natureofbusiness { get;set;} 

        /// <summary> 
        /// �̶��ʲ� 
        /// </summary>
        [Display(Name = "�̶��ʲ�")]
        public String Fixedassets { get;set;} 

        /// <summary> 
        /// ��ҵ������ 
        /// </summary>
        [Display(Name = "��ҵ������")]
        public String Legalperson { get;set;} 

        /// <summary> 
        /// ְ�� 
        /// </summary>
        [Display(Name = "ְ��")]
        public String Post { get;set;} 

        /// <summary> 
        /// �绰 
        /// </summary>
        [Display(Name = "�绰")]
        public String Tel { get;set;} 

        /// <summary> 
        /// ���� 
        /// </summary>
        [Display(Name = "����")]
        public String Fax { get;set;} 

        /// <summary> 
        /// �ֻ� 
        /// </summary>
        [Display(Name = "�ֻ�")]
        public String Phone { get;set;} 

        /// <summary> 
        /// E-Mail 
        /// </summary>
        [Display(Name = "E-Mail")]
        public String Email { get;set;} 

        /// <summary> 
        /// ��Ҫ��ϵ�� 
        /// </summary>
        [Display(Name = "��Ҫ��ϵ��")]
        public String Contact { get;set;} 

        /// <summary> 
        /// ְ�� 
        /// </summary>
        [Display(Name = "ְ��")]
        public String Contactpost { get;set;} 

        /// <summary> 
        /// �绰 
        /// </summary>
        [Display(Name = "�绰")]
        public String Contacttel { get;set;} 

        /// <summary> 
        /// ���� 
        /// </summary>
        [Display(Name = "����")]
        public String Contactfax { get;set;} 

        /// <summary> 
        /// �ֻ� 
        /// </summary>
        [Display(Name = "�ֻ�")]
        public String Contactphone { get;set;} 

        /// <summary> 
        /// E-mail 
        /// </summary>
        [Display(Name = "E-mail")]
        public String Contactemail { get;set;} 

        /// <summary> 
        /// ��λ��� 
        /// </summary>
        [Display(Name = "��λ���")]
        public String Unittype { get;set;} 

        /// <summary> 
        /// ��Ҫ��Ʒ�漰��Ӧ������ 
        /// </summary>
        [Display(Name = "��Ʒ�漰��Ӧ������")]
        public String Productapplications { get;set;} 

        /// <summary> 
        /// ��Ҫ��֯�첼����������� 
        /// </summary>
        [Display(Name = "��֯�첼�����������")]
        public String Processcategory { get;set;} 

        /// <summary> 
        /// ��Ա���� 
        /// </summary>
        [Display(Name = "��Ա����")]
        public String Membershiplevel { get;set;} 

        /// <summary> 
        /// ��λ��� 
        /// </summary>
        [Display(Name = "��λ���")]
        public String Introduction { get;set;} 

        /// <summary> 
        ///  ����ʱ��
        /// </summary>
        [Display(Name = "����ʱ��")]
        public DateTime Createdate { get;set;}

        /// <summary> 
        ///  ״̬
        /// </summary>
        [Display(Name = "״̬")]
        public string Status { get; set; } 

    }
}
