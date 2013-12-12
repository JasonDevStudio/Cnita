using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Library.Common;
using System.Net;
using System.Text;
using System.Text.RegularExpressions;
using System.IO;

namespace MvcApp.Controllers
{
    public class UEditorController : Controller
    {
        #region 私有函数
        //集合转换字符串
        private string converToString(ArrayList tmpNames)
        {
            String str = String.Empty;
            for (int i = 0, len = tmpNames.Count; i < len; i++)
            {
                str += tmpNames[i] + "ue_separate_ue";
                if (i == tmpNames.Count - 1)
                    str += tmpNames[i];
            }
            return str;
        }
        #endregion
         
        public bool IsReusable
        {
            get
            {
                return false;
            }
        }

        /// <summary>
        /// 图片上传
        /// </summary> 
        public void ImageUp(FormCollection form)
        {
            HttpContextBase context = this.HttpContext;
            context.Response.ContentType = "text/plain";

            //上传配置
            String pathbase = Url.Content("~/Uploads/Images/");                                      //保存路径
            string[] filetype = { ".gif", ".png", ".jpg", ".jpeg", ".bmp" }; ;    //文件允许格式
            int size = 20;   //文件大小限制,单位MB,同时在web.config里配置环境默认为20MB

            //上传图片
            Hashtable info = new Hashtable();
            UploadHelper up = new UploadHelper();
            info = up.upFile(context, pathbase, filetype, size);                   //获取上传状态

            string title = up.getOtherInfo(context, "pictitle");                   //获取图片描述
            string oriName = up.getOtherInfo(context, "fileName");                //获取原始文件名


            context.Response.Write("{'url':'" + info["url"] + "','title':'" + title + "','original':'" + oriName + "','state':'" + info["state"] + "'}");  //向浏览器返回数据json数据
        }

        /// <summary>
        /// 附件上传
        /// </summary> 
        [AcceptVerbs(HttpVerbs.Post)]
        [ValidateInput(false)]
        public void FileUp(FormCollection form)
        {
            HttpContextBase context = this.HttpContext;
            context.Response.ContentType = "text/plain";

            //上传配置
            String pathbase = Url.Content("~/Uploads/Files/");                                      //保存路径
            string[] filetype = { ".rar", ".doc", ".docx", ".zip", ".pdf", ".txt", ".swf", ".wmv" };    //文件允许格式
            int size = 100;   //文件大小限制,单位MB,同时在web.config里配置环境默认为100MB


            //上传文件
            Hashtable info = new Hashtable();
            UploadHelper up = new UploadHelper();
            info = up.upFile(context, pathbase, filetype, size); //获取上传状态

            context.Response.Write("{'state':'" + info["state"] + "','url':'" + info["url"] + "','fileType':'" + info["currentType"] + "','original':'" + info["originalName"] + "'}"); //向浏览器返回数据json数据
        }

        /// <summary>
        /// 获取编辑器的值
        /// </summary>
        public void GetContent()
        {
            HttpContextBase context = this.HttpContext;
            context.Response.ContentType = "text/html";

            //获取数据
            string content = context.Server.HtmlEncode(context.Request.Form["myEditor"]);


            //存入数据库或者其他操作
            //-------------

            var code = string.Format("<script>uParse('.content',{" +
                      "'highlightJsUrl':'{0}'," +
                      "'highlightCssUrl':'{1}'" +
                  "})" +
                "</script>", Url.Content("~/Scripts/ueditor/third-party/SyntaxHighlighter/shCore.js"),
                Url.Content("~/Scripts/ueditor/third-party/SyntaxHighlighter/shCoreDefault.css"));

            //显示
            context.Response.Write(string.Format("<script src='{0}' type='text/javascript'></script>", Url.Content("~/Scripts/ueditor/ueditor.parse.js")));
            context.Response.Write(code);
                //"<script>uParse('.content',{" +
                //      "'highlightJsUrl':'../third-party/SyntaxHighlighter/shCore.js'," +
                //      "'highlightCssUrl':'../third-party/SyntaxHighlighter/shCoreDefault.css'" +
                //  "})" +
                //"</script>");

            context.Response.Write("第1个编辑器的值");
            context.Response.Write("<div class='content'>" + context.Server.HtmlDecode(content) + "</div>");
        }

        /// <summary>
        /// 视频数据获取
        /// </summary>
        public void GetMovie()
        {
            HttpContextBase context = this.HttpContext;
            context.Response.ContentType = "text/html";
            string key = context.Server.HtmlEncode(context.Request.Form["searchKey"]);
            string type = context.Server.HtmlEncode(context.Request.Form["videoType"]);

            Uri httpURL = new Uri("http://api.tudou.com/v3/gw?method=item.search&appKey=myKey&format=json&kw=" + key + "&pageNo=1&pageSize=20&channelId=" + type + "&inDays=7&media=v&sort=s");
            WebClient MyWebClient = new WebClient();


            MyWebClient.Credentials = CredentialCache.DefaultCredentials;           //获取或设置用于向Internet资源的请求进行身份验证的网络凭据
            Byte[] pageData = MyWebClient.DownloadData(httpURL);

            context.Response.Write(Encoding.UTF8.GetString(pageData));
        }

        /// <summary>
        /// 处理远程图片
        /// </summary>
        public void GetRemoteImage()
        {
            HttpContextBase context = this.HttpContext;
            string savePath = context.Server.MapPath("~/Uploads/Files/");       //保存文件地址
            string[] filetype = { ".gif", ".png", ".jpg", ".jpeg", ".bmp" };             //文件允许格式
            int fileSize = 30000;                                                        //文件大小限制，单位kb

            string uri = context.Server.HtmlEncode(context.Request["upfile"]);
            uri = uri.Replace("&amp;", "&");
            string[] imgUrls = Regex.Split(uri, "ue_separate_ue", RegexOptions.IgnoreCase);

            ArrayList tmpNames = new ArrayList();
            WebClient wc = new WebClient();
            HttpWebResponse res;
            String tmpName = String.Empty;
            String imgUrl = String.Empty;
            String currentType = String.Empty;

            try
            {
                for (int i = 0, len = imgUrls.Length; i < len; i++)
                {
                    imgUrl = imgUrls[i];

                    if (imgUrl.Substring(0, 7) != "http://")
                    {
                        tmpNames.Add("error!");
                        continue;
                    }

                    //格式验证
                    int temp = imgUrl.LastIndexOf('.');
                    currentType = imgUrl.Substring(temp).ToLower();
                    if (Array.IndexOf(filetype, currentType) == -1)
                    {
                        tmpNames.Add("error!");
                        continue;
                    }

                    res = (HttpWebResponse)WebRequest.Create(imgUrl).GetResponse();
                    //http检测
                    if (res.ResponseUri.Scheme.ToLower().Trim() != "http")
                    {
                        tmpNames.Add("error!");
                        continue;
                    }
                    //大小验证
                    if (res.ContentLength > fileSize * 1024)
                    {
                        tmpNames.Add("error!");
                        continue;
                    }
                    //死链验证
                    if (res.StatusCode != HttpStatusCode.OK)
                    {
                        tmpNames.Add("error!");
                        continue;
                    }
                    //检查mime类型
                    if (res.ContentType.IndexOf("image") == -1)
                    {
                        tmpNames.Add("error!");
                        continue;
                    }
                    res.Close();

                    //创建保存位置
                    if (!Directory.Exists(savePath))
                    {
                        Directory.CreateDirectory(savePath);
                    }

                    //写入文件
                    tmpName = DateTime.Now.ToString("yyyy-MM-dd") + "/" + System.Guid.NewGuid() + currentType;
                    wc.DownloadFile(imgUrl, savePath + tmpName);
                    tmpNames.Add(Url.Content("~/Uploads/Files/") + tmpName);
                }
            }
            catch (Exception)
            {
                tmpNames.Add("error!");
            }
            finally
            {
                wc.Dispose();
            }
            context.Response.Write("{url:'" + converToString(tmpNames) + "',tip:'远程图片抓取成功！',srcUrl:'" + uri + "'}");
        }

        /// <summary>
        /// 图片在线管理
        /// </summary>
        public void ImageManager()
        {
            HttpContextBase context = this.HttpContext;
            context.Response.ContentType = "text/plain";

            string[] paths = { Url.Content("~/Uploads/Images/") }; //需要遍历的目录列表，最好使用缩略图地址，否则当网速慢时可能会造成严重的延时
            string[] filetype = { ".gif", ".png", ".jpg", ".jpeg", ".bmp" };                //文件允许格式

            string action = context.Server.HtmlEncode(context.Request["action"]);

            if (action == "get")
            {
                String str = String.Empty;

                foreach (string path in paths)
                {
                    DirectoryInfo info = new DirectoryInfo(context.Server.MapPath(path));

                    //目录验证
                    if (info.Exists)
                    {
                        DirectoryInfo[] infoArr = info.GetDirectories();
                        foreach (DirectoryInfo tmpInfo in infoArr)
                        {
                            foreach (FileInfo fi in tmpInfo.GetFiles())
                            {
                                if (Array.IndexOf(filetype, fi.Extension) != -1)
                                {
                                    str += path + "/" + tmpInfo.Name + "/" + fi.Name + "ue_separate_ue";
                                }
                            }
                        }
                    }
                }

                context.Response.Write(str);
            }
        }

        /// <summary>
        /// 涂鸦上传
        /// </summary>
        public void ScrawlImgUp()
        {
            HttpContextBase context = this.HttpContext;
            context.Response.ContentType = "text/html";
            string action = context.Request["action"];

            if (action == "tmpImg")
            {
                //上传配置
                string pathbase = Url.Content("~/Uploads/Temps/");                                                          //保存路径
                int size = 2;                     //文件大小限制,单位mb                                                                                   //文件大小限制，单位KB
                string[] filetype = { ".gif", ".png", ".jpg", ".jpeg", ".bmp" };                    //文件允许格式

                //上传图片
                Hashtable info = new Hashtable();
                UploadHelper up = new UploadHelper();
                info = up.upFile(context, pathbase, filetype, size); //获取上传状态

                context.Response.Write("<script>parent.ue_callback('" + info["url"] + "','" + info["state"] + "')</script>");//回调函数
            }
            else
            {
                string pathbase = Url.Content("~/Uploads/Images/");                                         //保存路径
                string tmpPath = Url.Content("~/Uploads/Temps/");                  //临时图片目录       

                //上传图片
                Hashtable info = new Hashtable();
                UploadHelper up = new UploadHelper();
                info = up.upScrawl(context, pathbase, tmpPath, context.Request["content"]); //获取上传状态

                //向浏览器返回json数据
                context.Response.Write("{'url':'" + info["url"] + "',state:'" + info["state"] + "'}");
            }
        }

    }
}
