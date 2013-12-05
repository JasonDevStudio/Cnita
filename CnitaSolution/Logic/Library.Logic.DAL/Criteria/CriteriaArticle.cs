using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel.DataAnnotations;

namespace Library.Logic.DAL
{
    public class CriteriaArticle 
    {
        public class Pager
        {
            public string KeyWord { get; set; }

            public string CategoryId { get; set; }

            public string CategoryTwo { get; set; }
        }
    }
}

