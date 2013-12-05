using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Library.StringItemDict
{
    public class BaseDict
    {
        /// <summary>
        /// 错误前缀
        /// </summary>
        public const string ErrorPrefix = "Error:";

        /// <summary>
        /// 成功前缀
        /// </summary>
        public const string SuccessPrefix = "Success:";

        /// <summary>
        /// 成功
        /// </summary>
        public const string Success = "Success";

        /// <summary>
        /// 失败
        /// </summary>
        public const string Fail = "Fail";

        /// <summary>
        /// 输入
        /// </summary>
        public const string ParmIn = "IN";
        /// <summary>
        /// 输出
        /// </summary>
        public const string ParmOut = "OUT";

        /// <summary>
        /// oracle 数据库
        /// </summary>
        public const string OracleData = "OracleDataAccess";

        /// <summary>
        /// sqlserver 数据库
        /// </summary>
        public const string SqlServerData = "SqlServerDataAccess";

        /// <summary>
        /// SQL执行结果-未查询到数据
        /// </summary>
        public const string SqlExMsgNoData = "NoData";
    }
}
