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
            /// 关键字
            /// </summary>
            [Display(Name = "关键字")]
            public string KeyWord { get; set; }

            /// <summary>
            /// 分类
            /// </summary>
            [Display(Name = "分类")]
            public string Category { get; set; }
        }
    }
}

