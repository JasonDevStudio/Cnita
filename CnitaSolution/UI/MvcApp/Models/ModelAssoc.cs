using Library.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MvcApp.Models
{
    public class ModelAssoc
    {
        public IList<ModelCategory> CateList { get; set; }

        public IList<ModelArticle> ArtList { get; set; }

        public ModelArticle ModelArt { get; set; }
    }
}