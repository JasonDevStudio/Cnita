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
        /// ��� 
        /// </summary> 
        [Display(Name = "���")] 
        public Int32 Id { get;set;} 

        /// <summary> 
        /// �û��� 
        /// </summary>
        [Required]
        [Display(Name = "�û���")]
        public String Name { get;set;} 

        /// <summary> 
        /// �˺� 
        /// </summary>
        [Required]
        [Display(Name = "�˺�")]
        public String Account { get;set;} 

        /// <summary> 
        /// ���� 
        /// </summary>
        [Required]
        [StringLength(20,MinimumLength=6,ErrorMessage="���볤�Ȳ���")]
        [Display(Name = "����")]
        public String Password { get;set;}

        /// <summary> 
        /// ȷ������ 
        /// </summary>
        [Required]
        [StringLength(20, MinimumLength = 6, ErrorMessage = "ȷ�����볤�Ȳ���")]
        [Display(Name = "ȷ������")]
        public String ConfirmPassword { get; set; } 

        /// <summary> 
        /// ��֯���� 
        /// </summary>
        [Required]
        [Display(Name = "��֯����")]
        [RegularExpression(@"^[0-9]*$", ErrorMessage = "��֯�����������")]
        public Int32 Organization { get;set;} 

        /// <summary>
        /// ��֯��������
        /// </summary>
        public string OrganizationName { get;set;} 

        /// <summary> 
        /// ״̬ 
        /// </summary>
        [Required]
        [Display(Name = "״̬")]
        [RegularExpression(@"^[0-9]*$", ErrorMessage = "״̬�������")]
        public Int32 Status { get;set;} 

        /// <summary> 
        /// Ȩ�� 
        /// </summary>
        [Display(Name = "Ȩ��")]
        public String Permissions { get;set;} 

        /// <summary> 
        /// ����ʱ�� 
        /// </summary>
        [Required]
        [Display(Name = "����ʱ��")]
        public DateTime Createdate { get;set;} 

    }
}
