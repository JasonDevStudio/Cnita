using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel.DataAnnotations;

namespace Library.Logic.DAL
{
    public class CriteriaPictures 
    {
        public class Pager
        {
            /// <summary>
            /// �ؼ���
            /// </summary>
            [Display(Name = "�ؼ���")]
            public string KeyWord { get; set; }

            /// <summary>
            /// ����
            /// </summary>
            [Display(Name = "����")]
            public string Category { get; set; }
        }
    }
}

