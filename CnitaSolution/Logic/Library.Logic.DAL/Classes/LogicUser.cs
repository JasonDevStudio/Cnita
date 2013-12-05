using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using Library.Kernel.DataBaseHelper;
using Library.StringItemDict;
using Library.Common;
using System.Data.Common;
using Library.Models;
namespace Library.Logic.DAL
{
    public class LogicUser 
    {

        #region 私有函数
        /// <summary>
        /// Model 赋值 IDataReader
        /// </summary>
        private IList<ModelUser> GetModel(IDataReader dr)
        {
            var modelList = new List<ModelUser>();

            while (dr.Read())
            {
                var model = new ModelUser();
                model.Id = dr["Id"] == DBNull.Value ? 0 : Convert.ToInt32(dr["Id"]);
                model.Name = dr["Name"] == DBNull.Value ? string.Empty : dr["Name"].ToString();
                model.Account = dr["Account"] == DBNull.Value ? string.Empty : dr["Account"].ToString();
                model.Password = dr["PassWord"] == DBNull.Value ? string.Empty : dr["PassWord"].ToString();
                model.Organization = dr["Organization"] == DBNull.Value ? 0 : Convert.ToInt32(dr["Organization"]);
                model.Status = dr["Status"] == DBNull.Value ? 0 : Convert.ToInt32(dr["Status"]);
                model.Permissions = dr["Permissions"] == DBNull.Value ? string.Empty : dr["Permissions"].ToString();
                model.Createdate = dr["CreateDate"] == DBNull.Value ? DateTime.MinValue : Convert.ToDateTime(dr["CreateDate"]);
                modelList.Add(model);
            }
            return modelList;
        }

        /// <summary>
        /// Model 赋值 DataSet
        /// </summary>
        private IList<ModelUser> GetModel(DataSet ds)
        {
            var modelList = (from DataRow dr in ds.Tables[0].Rows
                             select new ModelUser()
                             {
                                 Id = dr["Id"] == DBNull.Value ? 0 : Convert.ToInt32(dr["Id"]),
                                 Name = dr["Name"] == DBNull.Value ? string.Empty : dr["Name"].ToString(),
                                 Account = dr["Account"] == DBNull.Value ? string.Empty : dr["Account"].ToString(),
                                 Password = dr["PassWord"] == DBNull.Value ? string.Empty : dr["PassWord"].ToString(),
                                 Organization = dr["Organization"] == DBNull.Value ? 0 : Convert.ToInt32(dr["Organization"]),
                                 Status = dr["Status"] == DBNull.Value ? 0 : Convert.ToInt32(dr["Status"]),
                                 Permissions = dr["Permissions"] == DBNull.Value ? string.Empty : dr["Permissions"].ToString(),
                                 Createdate = dr["CreateDate"] == DBNull.Value ? DateTime.MinValue : Convert.ToDateTime(dr["CreateDate"]),
                             }).ToList();
            return modelList;
        }

        #endregion

        /// <summary>
        /// 分页查询 
        /// </summary>
        /// <param name="recordCount">输出参数 数据总数</param>
        /// <param name="criteria">查询条件对象</param>
        /// <param name="pageSize">每页显示数量</param>
        /// <param name="pageIndex">当前页索引</param>
        /// <returns>结果集 泛型</returns>
        public IList<ModelUser> QueryUserListPager(out string resultMsg, out decimal recordCount, CriteriaUser.Pager criteria, int pageSize = 10, int pageIndex = 1)
        {
            recordCount = decimal.Zero;
            resultMsg = string.Empty;
            IList<ModelUser> list = new List<ModelUser>();
            try
            {
                //存储过程名称
                string sql = "USP_USER_SELECT_SEARCH_PAGER";

                //参数添加
                IList<DBParameter> parm = new List<DBParameter>();
                parm.Add(new DBParameter() { ParameterName = "PageSize", ParameterValue = pageSize, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "PageIndex", ParameterValue = pageIndex, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "RowCount", ParameterInOut = BaseDict.ParmOut, ParameterType = DbType.String });

                //查询执行
                using (IDataReader dr = DBHelper.ExecuteReader(sql, true, parm))
                {
                    //DataReader 转换成 List
                    list = GetModel(dr);
                    foreach (var item in parm)
                    {
                        //获取输出参数值
                        if (item.ParameterName == "RowCount")
                        {
                            decimal.TryParse(item.ParameterValue.ToString(), out recordCount);
                            break;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                resultMsg = string.Format("{0} {1}", BaseDict.ErrorPrefix, ex.ToString());
            }
            return list;
        }

        /// <summary>
        ///  查询实体
        /// </summary>
        /// <param name="id">ModelId 编号</param>
        /// <returns>ModelUser</returns>
        public ModelUser UserDetail(out string resultMsg, Int32 id)
        {
            resultMsg = string.Empty;
            var model = new ModelUser();
            try
            {
                //存储过程名称
                string sql = "USP_USER_SELECT_DETAIL_BY_ID";

                //参数添加
                IList<DBParameter> parm = new List<DBParameter>();
                parm.Add(new DBParameter() { ParameterName = "ID", ParameterValue = id, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });

                //查询执行
                using (IDataReader dr = DBHelper.ExecuteReader(sql, true, parm))
                {
                    IList<ModelUser> list = GetModel(dr);
                    model = list.First();
                }
            }
            catch (Exception ex)
            {
                resultMsg = string.Format("{0} {1}", BaseDict.ErrorPrefix, ex.ToString());
            }
            return model;
        }

        /// <summary>
        /// 数据 添加/更新
        /// </summary>
        /// <param name="user">实体</param>
        /// <returns>执行结果</returns>
        public int UserInsertUpdate(out string resultMsg, ModelUser user, DbTransaction tran = null)
        {
            resultMsg = string.Empty;
            int res = 0;
            try
            {
                //存储过程名称
                string sql = "USP_USER_INSERT_UPDATE";
                //参数添加
                IList<DBParameter> parm = new List<DBParameter>();
                parm.Add(new DBParameter() { ParameterName = "ID", ParameterValue = user.Id, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });
                parm.Add(new DBParameter() { ParameterName = "NAME", ParameterValue = user.Name, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "ACCOUNT", ParameterValue = user.Account, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "PASSWORD", ParameterValue = user.Password, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "ORGANIZATION", ParameterValue = user.Organization, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });
                parm.Add(new DBParameter() { ParameterName = "STATUS", ParameterValue = user.Status, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });
                parm.Add(new DBParameter() { ParameterName = "PERMISSIONS", ParameterValue = user.Permissions, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "CREATEDATE", ParameterValue = user.Createdate, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.DateTime });
                parm.Add(new DBParameter() { ParameterName = "resultMsg", ParameterInOut = BaseDict.ParmOut, ParameterType = DbType.String });

                //新增/更新执行
                res = DBHelper.ExecuteNonQuery(sql, true, parm, tran);
                foreach (var item in parm)
                {
                    //获取输出参数值
                    if (item.ParameterName == "resultMsg")
                    {
                        resultMsg = item.ParameterValue.ToString();
                        break;
                    }
                }
            }
            catch (Exception ex)
            {
                if (tran != null)
                    tran.Rollback();
                resultMsg = string.Format("{0} {1}", BaseDict.ErrorPrefix, ex.ToString());
            }
            return res;
        }

        /// <summary>
        /// 数据状态 更新
        /// </summary>
        /// <param name="id">Id 编号</param>
        /// <param name="status">状态</param>
        /// <returns>执行结果</returns>
        public int UserUpdateStatus(out string resultMsg, Int32 id, Int32 status, DbTransaction tran = null)
        {
            resultMsg = string.Empty;
            int res = 0;
            try
            {
                //存储过程名称
                string sql = "USP_User_UPDATE_STATUS";
                //参数添加
                IList<DBParameter> parm = new List<DBParameter>();
                parm.Add(new DBParameter() { ParameterName = "ID", ParameterValue = id, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });
                parm.Add(new DBParameter() { ParameterName = "STATUS", ParameterValue = status, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });
                parm.Add(new DBParameter() { ParameterName = "resultMsg", ParameterInOut = BaseDict.ParmOut, ParameterType = DbType.String });
                //更新执行
                res = DBHelper.ExecuteNonQuery(sql, true, parm, tran);
                foreach (var item in parm)
                {
                    //获取输出参数值
                    if (item.ParameterName == "resultMsg")
                    {
                        resultMsg = item.ParameterValue.ToString();
                        break;
                    }
                }
            }
            catch (Exception ex)
            {
                if (tran != null)
                    tran.Rollback();
                resultMsg = string.Format("{0} {1}", BaseDict.ErrorPrefix, ex.ToString());
            }
            return res;
        }

        /// <summary>
        /// 数据 删除
        /// </summary>
        /// <param name="id">Id 编号</param>
        /// <returns>执行结果</returns>
        public int UserDelete(out string resultMsg, Int32 id, DbTransaction tran = null)
        {
            resultMsg = string.Empty;
            int res = 0;
            try
            {
                //存储过程名称
                string sql = "USP_{0}_Detele";

                //参数添加
                IList<DBParameter> parm = new List<DBParameter>();
                parm.Add(new DBParameter() { ParameterName = "ID", ParameterValue = id, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });
                parm.Add(new DBParameter() { ParameterName = "resultMsg", ParameterInOut = BaseDict.ParmOut, ParameterType = DbType.String });
                //更新执行
                res = DBHelper.ExecuteNonQuery(sql, true, parm, tran);
                foreach (var item in parm)
                {
                    //获取输出参数值
                    if (item.ParameterName == "resultMsg")
                    {
                        resultMsg = item.ParameterValue.ToString();
                        break;
                    }
                }
            }
            catch (Exception ex)
            {
                if (tran != null)
                    tran.Rollback();
                resultMsg = string.Format("{0} {1}", BaseDict.ErrorPrefix, ex.ToString());
            }
            return res;
        }

    }
}
