using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;

namespace Library.Common
{
    public class CommonMethod
    {
        /// <summary>
        /// 图片上传
        /// </summary> 
        public static string ImageUpload(out ResultBase result, HttpContextBase cxt)
        {
            var fileName = string.Empty;
            result = new ResultBase();
            result.resultMsg = string.Empty;
            result.result = 1;

            HttpPostedFileBase file = null;
            string[] filetype = { ".gif", ".png", ".jpg", ".jpeg", ".bmp" };         //文件允许格式
            if (cxt.Request.Files.Count < 1 || cxt.Request.Files[0] == null || string.IsNullOrWhiteSpace(cxt.Request.Files[0].FileName))
            {
                result.result = -1;
                result.resultMsg = "未接收到文件!";
                return fileName;
            }

            file = cxt.Request.Files[0];
            string Extension = Path.GetExtension(file.FileName);
            if (Array.IndexOf(filetype, Extension) > -1)
            {
                fileName = DateTime.Now.ToString("yyyyMMddHHmmssffff") + Extension;
                string upPath = cxt.Server.MapPath("~/Uploads/Images/");
                file.SaveAs(upPath + fileName);
            }
            else
            {
                result.result = -2;
                result.resultMsg = "上传的文件不是图片格式,请重新上传!";

            }

            return fileName;
        }

        /// <summary>
        /// 字符串截取
        /// </summary> 
        public static string ObjSubstringByLength(string obj,int length)
        {
            if (!string.IsNullOrWhiteSpace(obj))
            {
                if (obj.Length > length)
                {
                    return obj.Substring(0, length) + "...";
                }
                else
                {
                    return obj;
                }
            }
            else
            {
                return string.Empty;
            }
        }
    }
}
