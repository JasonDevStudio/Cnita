using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel.DataAnnotations;

namespace Library.Logic.DAL
{
    public class CriteriaUser 
    {
        public class Pager
        {
            /// <summary>
            /// �ؼ���
            /// </summary>
            [Display(Name = "�ؼ���")]
            public string KeyWord { get; set; }

            /// <summary>
            /// ��֯����
            /// </summary>
            [Display(Name = "��֯����")]
            public string Organization { get; set; }
        }
    }
}

