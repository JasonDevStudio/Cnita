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
    public class LogicPictures 
    {

        #region 私有函数
        /// <summary>
        /// Model 赋值 IDataReader
        /// </summary>
        private IList<ModelPictures> GetModel(IDataReader dr)
        {
            var modelList = new List<ModelPictures>();

            while (dr.Read())
            {
                var model = new ModelPictures();
                model.Id = dr["Id"]== DBNull.Value ? 0 : Convert.ToInt32(dr["Id"]);
                model.Name = dr["Name"] == DBNull.Value ? string.Empty : dr["Name"].ToString();
                model.CategoryName = dr["CategoryName"] == DBNull.Value ? string.Empty : dr["CategoryName"].ToString();
                model.Categoryid = dr["CategoryId"]== DBNull.Value ? 0 : Convert.ToInt32(dr["CategoryId"]);
                model.Owner = dr["Owner"]== DBNull.Value ? 0 : Convert.ToInt32(dr["Owner"]);
                model.Picuri = dr["PicUri"]== DBNull.Value ? string.Empty : dr["PicUri"].ToString();
                model.Piclink = dr["PicLink"]== DBNull.Value ? string.Empty : dr["PicLink"].ToString();
                model.Status = dr["Status"]== DBNull.Value ? 0 : Convert.ToInt32(dr["Status"]);
                model.Createdate = dr["CreateDate"]== DBNull.Value ? DateTime.MinValue : Convert.ToDateTime(dr["CreateDate"]);
                modelList.Add(model);
            }
            return modelList;
        }

        /// <summary>
        /// Model 赋值 DataSet
        /// </summary>
        private IList<ModelPictures> GetModel(DataSet ds)
        {
            var modelList = (from DataRow dr in ds.Tables[0].Rows
                            select new ModelPictures()
                            {
                                Id = dr["Id"]== DBNull.Value ? 0 : Convert.ToInt32(dr["Id"]),
                                Name = dr["Name"]== DBNull.Value ? string.Empty : dr["Name"].ToString(),
                                CategoryName = dr["CategoryName"] == DBNull.Value ? string.Empty : dr["CategoryName"].ToString(),
                                Categoryid = dr["CategoryId"]== DBNull.Value ? 0 : Convert.ToInt32(dr["CategoryId"]),
                                Owner = dr["Owner"]== DBNull.Value ? 0 : Convert.ToInt32(dr["Owner"]),
                                Picuri = dr["PicUri"]== DBNull.Value ? string.Empty : dr["PicUri"].ToString(),
                                Piclink = dr["PicLink"]== DBNull.Value ? string.Empty : dr["PicLink"].ToString(),
                                Status = dr["Status"]== DBNull.Value ? 0 : Convert.ToInt32(dr["Status"]),
                                Createdate = dr["CreateDate"]== DBNull.Value ? DateTime.MinValue : Convert.ToDateTime(dr["CreateDate"]),
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
        public IList<ModelPictures> QueryPicturesListPager(out string resultMsg, out decimal recordCount, CriteriaPictures.Pager criteria, decimal pageSize = 10, decimal pageIndex = 1)
        {
            recordCount = decimal.Zero;
            resultMsg = string.Empty;
            IList<ModelPictures> list = new List<ModelPictures>();
            try
            {
                //存储过程名称
                string sql = "usp_pictures_select_pager";

                //参数添加
                IList<DBParameter> parm = new List<DBParameter>();
                parm.Add(new DBParameter() { ParameterName = "KeyWord", ParameterValue = criteria.KeyWord, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "Category", ParameterValue = criteria.Category, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "OwnerCode", ParameterValue = null, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "PagerSize", ParameterValue = pageSize, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "PagerIndex", ParameterValue = pageIndex, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "RowCount", ParameterInOut = BaseDict.ParmOut, ParameterType = DbType.String });

                //查询执行
                using (DataSet ds = DBHelper.ExecuteDataSet(sql, true, parm))
                {
                    //DataReader 转换成 List
                    list = GetModel(ds);
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
        /// <returns>ModelPictures</returns>
        public ModelPictures PicturesDetail(out string resultMsg,Int32 id )
        {
            resultMsg = string.Empty;
            var model = new ModelPictures();
            try
            {
                //存储过程名称
                string sql = "usp_pictures_select_detail_by_id";

                //参数添加
                IList<DBParameter> parm = new List<DBParameter>();
                parm.Add(new DBParameter() { ParameterName = "ID", ParameterValue = id, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });

                //查询执行
                using (IDataReader dr = DBHelper.ExecuteReader(sql, true, parm))
                {
                    IList<ModelPictures> list = GetModel(dr);
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
        /// <param name="pictures">实体</param>
        /// <returns>执行结果</returns>
        public int PicturesInsertUpdate(out string resultMsg,ModelPictures pictures,DbTransaction tran =null)
        {
            resultMsg = string.Empty;
            int res = 0;
            try
            {
                //存储过程名称
                string sql = "USP_PICTURES_INSERT_UPDATE";
                //参数添加
                IList<DBParameter> parm = new List<DBParameter>();
                parm.Add(new DBParameter() { ParameterName = "ID", ParameterValue = pictures.Id, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });
                parm.Add(new DBParameter() { ParameterName = "NAME", ParameterValue = pictures.Name, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "CATEGORYID", ParameterValue = pictures.Categoryid, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });
                parm.Add(new DBParameter() { ParameterName = "OWNER", ParameterValue = pictures.Owner, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });
                parm.Add(new DBParameter() { ParameterName = "PICURI", ParameterValue = pictures.Picuri, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "PICLINK", ParameterValue = pictures.Piclink, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "STATUS", ParameterValue = pictures.Status, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });
               

                //新增/更新执行
                res = DBHelper.ExecuteNonQuery(sql, true, parm, tran);
                
            }
            catch (Exception ex)
            {
                if(tran != null)
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
        public int PicturesUpdateStatus(out string resultMsg,Int32 id ,Int32 status ,DbTransaction tran=null)
        {
            resultMsg = string.Empty;
            int res = 0;
            try
            {
                //存储过程名称
                string sql = "USP_Pictures_UPDATE_STATUS";
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
                if(tran != null)
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
        public int PicturesDelete(out string resultMsg,Int32 id ,DbTransaction tran=null)
        {
            resultMsg = string.Empty;
            int res = 0;
            try
            {
                //存储过程名称
                string sql = "usp_pictures_delete_by_id";

                //参数添加
                IList<DBParameter> parm = new List<DBParameter>();
                parm.Add(new DBParameter() { ParameterName = "ID", ParameterValue = id, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 }); 
                //更新执行
                res = DBHelper.ExecuteNonQuery(sql, true, parm, tran);
                 
            }
            catch (Exception ex)
            {
                if(tran != null)
                    tran.Rollback();
                resultMsg = string.Format("{0} {1}", BaseDict.ErrorPrefix, ex.ToString());
            }
            return res;
        }

    }
}
