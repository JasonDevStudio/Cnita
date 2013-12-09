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
        /// ��� 
        /// </summary> 
        [Display(Name = "���")] 
        public Int32 Id { get;set;} 

        /// <summary> 
        /// ���� 
        /// </summary>
        [Required]
        [Display(Name = "����")]
        public String Name { get;set;} 

        /// <summary> 
        /// ���ӵ�ַ 
        /// </summary>
        [Display(Name = "���ӵ�ַ")]
        public String Nameen { get;set;} 

        /// <summary> 
        /// ����ͼ 
        /// </summary>
        [Display(Name = "����ͼ")]
        public String Thumbnails { get;set;} 

        /// <summary> 
        /// ��� 
        /// </summary>
        [Display(Name = "���")]
        public String Introduction { get;set;} 

        /// <summary> 
        /// ���� 
        /// </summary> 
        [Display(Name = "����")]
        //[RegularExpression(@"^[0-9]*$", ErrorMessage = "�����������")]
        public string Parentcateg { get;set;}

        /// <summary> 
        /// ���
        /// </summary>
        public Int32 Level { get; set; }

        /// <summary> 
        /// ���� 
        /// </summary>
        [Display(Name = "����")]
        [RegularExpression(@"^[0-9]*$", ErrorMessage = "�����������")]
        public Int32 Sort { get;set;} 

        /// <summary> 
        /// ���� 
        /// </summary>
        [Display(Name = "����")]
        [RegularExpression(@"^[0-9]*$", ErrorMessage = "�����������")]
        public Int32 Isnav { get;set;} 

        /// <summary> 
        /// �Ƿ���ҳ 
        /// </summary>
        [Display(Name = "�Ƿ���ҳ")]
        [RegularExpression(@"^[0-9]*$", ErrorMessage = "�Ƿ���ҳ�������")]
        public Int32 Isindex { get;set;} 

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
