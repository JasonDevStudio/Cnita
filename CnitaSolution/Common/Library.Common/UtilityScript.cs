using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Library.Common
{
    public class UtilityScript
    {
        /// <summary>
        /// 自定义脚本
        /// </summary>
        public static string CustomScript { get; set; }

        /// <summary>
        /// 弹出消息提示框
        /// </summary>
        /// <param name="content">提示信息内容</param>
        /// <param name="title">提示框标题</param>
        /// <param name="width">提示框宽度</param>
        /// <param name="height">提示框高度</param>
        /// <param name="isAutoClose">是否自动关闭（点击OK后）</param>
        /// <param name="isSearch">是否触发查询操作</param>
        /// <param name="isSuccess">是否为成功的信息</param>
        public static string ShowMessage(string content, string title = null, int width = 260, int height = 100, bool isSuccess = false, string funName = "null", bool isCreate = false)
        {
            if (string.IsNullOrWhiteSpace(title))
            {
                if (isSuccess)
                    title = "提示信息";
                else
                    title = "警告";
            }

            StringBuilder script = new StringBuilder(500);
            script.Append("<script type=\"text/javascript\">");
            script.Append("    $(document).ready(function () {");
            if (isCreate)
                script.Append("        $(\".boxy\").boxy();");
            script.Append("        Boxy.alert(\""+content+"\", "+funName+", {title: \""+title+"\"});");
            script.Append("                        return false;");
            script.Append("    });");
            script.Append("</script>");
            return  script.ToString();
        }
    }
}
