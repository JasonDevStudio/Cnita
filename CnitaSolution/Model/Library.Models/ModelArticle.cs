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
        /// ��� 
        /// </summary>
        [Display(Name = "���")]
        public Int32 Id { get;set;} 

        /// <summary> 
        /// ���� 
        /// </summary>
        [Required]
        [Display(Name = "����")]
        public String Title { get;set;} 

        /// <summary> 
        /// ���� 
        /// </summary>
        [Display(Name = "����")]
        public String Author { get;set;} 

        /// <summary> 
        /// ��Դ 
        /// </summary>
        [Display(Name = "��Դ")]
        public String Source { get;set;} 

        /// <summary> 
        /// ���� 
        /// </summary>
        [Required]
        [Display(Name = "����")]
        public String Context { get;set;} 

        /// <summary> 
        /// ժҪ 
        /// </summary>
        [Display(Name = "ժҪ")]
        public String Abstract { get;set;} 

        /// <summary> 
        /// Ԥ��ͼ 
        /// </summary>
        [Display(Name = "Ԥ��ͼ")]
        public String Thumbnails { get;set;} 

        /// <summary> 
        /// ���� 
        /// </summary>
        [Required]
        [Display(Name = "����")]
        [RegularExpression(@"^[0-9]*$", ErrorMessage = "�����������")]
        public Int32 Categoryid { get;set;}

        /// <summary> 
        /// ������ 
        /// </summary>
        [Display(Name = "������")]
        public string CategoryTwo { get; set; }

        /// <summary>
        /// ��������
        /// </summary>
        public string CategoryName { get; set; }

        /// <summary> 
        /// �ؼ��� 
        /// </summary>
        [Display(Name = "�ؼ���")]
        public String Keyword { get;set;} 

        /// <summary> 
        /// �Ƽ� 
        /// </summary>
        [Display(Name = "�Ƽ�")]
        [RegularExpression(@"^[0-9]*$", ErrorMessage = "�Ƽ��������")]
        public Int32 Isrecommend { get;set;}

        /// <summary> 
        /// �Ƽ� 
        /// </summary>
        [Display(Name = "�Ƽ�")]
        public bool IsRec { get; set; }

        /// <summary> 
        /// �Ƿ��¼�鿴 
        /// </summary>
        [Display(Name = "�Ƿ��¼�鿴")]
        public bool IsPermission { get; set; }

        /// <summary> 
        /// ��ɫ 
        /// </summary>
        [Display(Name = "��ɫ")]
        public String Titlecolor { get;set;} 

        /// <summary> 
        /// �Ӵ� 
        /// </summary>
        [Display(Name = "�Ӵ�")]
        [RegularExpression(@"^[0-9]*$", ErrorMessage = "�Ӵ��������")]
        public Int32 Titleisbold { get;set;} 

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
