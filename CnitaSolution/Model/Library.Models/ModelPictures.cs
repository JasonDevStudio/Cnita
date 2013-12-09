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
        /// ��� 
        /// </summary> 
        [Display(Name = "���")] 
        public Int32 Id { get;set;} 

        /// <summary> 
        /// ���� 
        /// </summary>
        [Display(Name = "����")]
        public String Name { get;set;} 

        /// <summary> 
        /// ���� 
        /// </summary>
        [Required]
        [Display(Name = "����")]
        [RegularExpression(@"^[0-9]*$", ErrorMessage = "�����������")]
        public Int32 Categoryid { get;set;}

        /// <summary> 
        /// ���� 
        /// </summary>
        [Display(Name = "����")]
        public string CategoryName { get; set; }

        /// <summary> 
        /// ������� 
        /// </summary>
        [Display(Name = "�������")]
        [RegularExpression(@"^[0-9]*$", ErrorMessage = "�����������")]
        public string Owner { get;set;}

        /// <summary> 
        /// ������� 
        /// </summary>
        [Display(Name = "�������")] 
        public string OwnerCategoryName { get; set; }

        /// <summary> 
        /// ��ַ 
        /// </summary>
        [Required]
        [Display(Name = "���ͼƬ")]
        public String Picuri { get;set;} 

        /// <summary> 
        /// ͼƬ���� 
        /// </summary>
        [Display(Name = "�������")]
        public String Piclink { get;set;} 

        /// <summary> 
        /// ״̬ 
        /// </summary>
        [Required]
        [Display(Name = "״̬")]
        [RegularExpression(@"^[0-9]*$", ErrorMessage = "״̬�������")]
        public Int32 Status { get;set;} 

        /// <summary> 
        /// ����ʱ�� 
        /// </summary>
        [Required]
        [Display(Name = "����ʱ��")]
        public DateTime Createdate { get;set;} 

    }
}
