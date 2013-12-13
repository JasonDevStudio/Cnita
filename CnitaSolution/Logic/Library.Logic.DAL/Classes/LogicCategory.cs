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
    public class LogicCategory
    {

        #region 私有函数
        /// <summary>
        /// Model 赋值 IDataReader
        /// </summary>
        private IList<ModelCategory> GetModel(IDataReader dr)
        {
            var modelList = new List<ModelCategory>();

            while (dr.Read())
            {
                var model = new ModelCategory();
                model.Id = dr["Id"] == DBNull.Value ? 0 : Convert.ToInt32(dr["Id"]);
                model.Name = dr["Name"] == DBNull.Value ? string.Empty : dr["Name"].ToString();
                model.Nameen = dr["NameEn"] == DBNull.Value ? string.Empty : dr["NameEn"].ToString();
                model.Thumbnails = dr["Thumbnails"] == DBNull.Value ? string.Empty : dr["Thumbnails"].ToString();
                model.Introduction = dr["Introduction"] == DBNull.Value ? string.Empty : dr["Introduction"].ToString();
                model.Parentcateg = dr["ParentCateg"] == DBNull.Value ? string.Empty : Convert.ToString(dr["ParentCateg"]);
                model.Sort = dr["Sort"] == DBNull.Value ? 0 : Convert.ToInt32(dr["Sort"]);
                model.Isnav = dr["IsNav"] == DBNull.Value ? 0 : Convert.ToInt32(dr["IsNav"]);
                model.Isindex = dr["IsIndex"] == DBNull.Value ? 0 : Convert.ToInt32(dr["IsIndex"]);
                model.Status = dr["Status"] == DBNull.Value ? 0 : Convert.ToInt32(dr["Status"]);
                model.Createdate = dr["CreateDate"] == DBNull.Value ? DateTime.MinValue : Convert.ToDateTime(dr["CreateDate"]);
                modelList.Add(model);
            }
            return modelList;
        }

        /// <summary>
        /// Model 赋值 DataSet
        /// </summary>
        private IList<ModelCategory> GetModel(DataSet ds)
        {
            var modelList = (from DataRow dr in ds.Tables[0].Rows
                             select new ModelCategory()
                             {
                                 Id = dr["Id"] == DBNull.Value ? 0 : Convert.ToInt32(dr["Id"]),
                                 Name = dr["Name"] == DBNull.Value ? string.Empty : dr["Name"].ToString(),
                                 Nameen = dr["NameEn"] == DBNull.Value ? string.Empty : dr["NameEn"].ToString(),
                                 Thumbnails = dr["Thumbnails"] == DBNull.Value ? string.Empty : dr["Thumbnails"].ToString(),
                                 Introduction = dr["Introduction"] == DBNull.Value ? string.Empty : dr["Introduction"].ToString(),
                                 Parentcateg = dr["ParentCateg"] == DBNull.Value ? string.Empty : Convert.ToString(dr["ParentCateg"]),
                                 Sort = dr["Sort"] == DBNull.Value ? 0 : Convert.ToInt32(dr["Sort"]),
                                 Isnav = dr["IsNav"] == DBNull.Value ? 0 : Convert.ToInt32(dr["IsNav"]),
                                 Isindex = dr["IsIndex"] == DBNull.Value ? 0 : Convert.ToInt32(dr["IsIndex"]),
                                 Status = dr["Status"] == DBNull.Value ? 0 : Convert.ToInt32(dr["Status"]),
                                 Createdate = dr["CreateDate"] == DBNull.Value ? DateTime.MinValue : Convert.ToDateTime(dr["CreateDate"]),
                             }).ToList();
            return modelList;
        }

        private IList<ModelCategory> GetModelThree(IDataReader dr)
        {
            var modelList = new List<ModelCategory>();

            while (dr.Read())
            {
                var model = new ModelCategory();
                model.Id = dr["Id"] == DBNull.Value ? 0 : Convert.ToInt32(dr["Id"]);
                model.Name = dr["Name"] == DBNull.Value ? string.Empty : dr["Name"].ToString();
                model.Parentcateg = dr["ParentCateg"] == DBNull.Value ? string.Empty : Convert.ToString(dr["ParentCateg"]);
                model.Level = dr["LEVEL"] == DBNull.Value ? 0 : Convert.ToInt32(dr["LEVEL"]);
                modelList.Add(model);
            }
            return modelList;
        }

        private IList<ModelCategory> GetCategoryAllThree(IList<ModelCategory> list, int Category)
        {
            var returnList = new List<ModelCategory>();
            var listTemp = (from ModelCategory model in list
                            where model.Parentcateg == Category.ToString()
                            select model).ToList();

            foreach (var item in listTemp)
            {
                var namePrefix = "|-";
                for (int i = 0; i < item.Level; i++)
                {
                    namePrefix += "--";
                }
                item.Name = namePrefix + item.Name;
                returnList.Add(item);
                returnList.AddRange(GetCategoryAllThree(list, item.Id));
            }
            return returnList;
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
        public IList<ModelCategory> QueryCategoryListPager(out string resultMsg, out decimal recordCount, CriteriaCategory.Pager criteria, int pageSize = 10, int pageIndex = 1)
        {
            recordCount = decimal.Zero;
            resultMsg = string.Empty;
            IList<ModelCategory> list = new List<ModelCategory>();
            try
            {
                //存储过程名称
                string sql = "USP_CATEGORY_SELECT_SEARCH_PAGER";

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
        /// <param name="id">ModelId 类别</param>
        /// <returns>ModelCategory</returns>
        public ModelCategory CategoryDetail(out string resultMsg, Int32 id)
        {
            resultMsg = string.Empty;
            var model = new ModelCategory();
            try
            {
                //存储过程名称
                string sql = "USP_CATEGORY_SELECT_DETAIL_BY_ID";

                //参数添加
                IList<DBParameter> parm = new List<DBParameter>();
                parm.Add(new DBParameter() { ParameterName = "ID", ParameterValue = id, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });

                //查询执行
                using (IDataReader dr = DBHelper.ExecuteReader(sql, true, parm))
                {
                    IList<ModelCategory> list = GetModel(dr);
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
        ///  查询实体
        /// </summary>
        /// <param name="id">ModelId 类别</param>
        /// <returns>ModelCategory</returns>
        public ModelCategory CategoryDetailByPid(out string resultMsg, Int32 id,DateTime StartDate ,DateTime EndDate)
        {
            resultMsg = string.Empty;
            var model = new ModelCategory();
            try
            {
                //存储过程名称
                string sql = "usp_category_select_detail_by_pid";

                //参数添加
                IList<DBParameter> parm = new List<DBParameter>();
                parm.Add(new DBParameter() { ParameterName = "Id", ParameterValue = id, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });
                parm.Add(new DBParameter() { ParameterName = "StartDate", ParameterValue = StartDate, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.DateTime });
                parm.Add(new DBParameter() { ParameterName = "EndDate", ParameterValue = EndDate, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.DateTime });

                //查询执行
                using (IDataReader dr = DBHelper.ExecuteReader(sql, true, parm))
                {
                    IList<ModelCategory> list = GetModel(dr);
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
        ///  查询实体
        /// </summary>
        /// <param name="id">ModelId 类别</param>
        /// <returns>ModelCategory</returns>
        public IList<ModelCategory> CategoryAll(out string resultMsg, Int32 ParentCateg = 0,string IsNav = null)
        {
            resultMsg = string.Empty;
            IList<ModelCategory> list = new List<ModelCategory>();
            try
            {
                //存储过程名称
                string sql = "usp_category_select_all";

                //参数添加
                IList<DBParameter> parm = new List<DBParameter>();
                parm.Add(new DBParameter() { ParameterName = "@ParentCateg", ParameterValue = ParentCateg, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });
                parm.Add(new DBParameter() { ParameterName = "@IsNav", ParameterValue = IsNav, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });

                //查询执行
                using (IDataReader dr = DBHelper.ExecuteReader(sql, true, parm))
                {
                    list = GetModel(dr);
                }
            }
            catch (Exception ex)
            {
                resultMsg = string.Format("{0} {1}", BaseDict.ErrorPrefix, ex.ToString());
            }
            return list;
        }

        /// <summary>
        /// 获取树形结构分类
        /// </summary> 
        public IList<ModelCategory> CategoryAllThree(out string resultMsg, Int32 ParentCateg = 0)
        {
            resultMsg = string.Empty;
            IList<ModelCategory> list = new List<ModelCategory>();
            try
            {
                //存储过程名称
                string sql = "usp_category_select_all_by_three";

                //参数添加
                IList<DBParameter> parm = new List<DBParameter>();
                parm.Add(new DBParameter() { ParameterName = "@ParentCateg", ParameterValue = ParentCateg, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });

                //查询执行
                using (IDataReader dr = DBHelper.ExecuteReader(sql, true, parm))
                {
                    var listTemp = GetModelThree(dr);
                    list = GetCategoryAllThree(listTemp, ParentCateg);
                }
            }
            catch (Exception ex)
            {
                resultMsg = string.Format("{0} {1}", BaseDict.ErrorPrefix, ex.ToString());
            }
            return list;
        }

        /// <summary>
        /// 数据 添加/更新
        /// </summary>
        /// <param name="category">实体</param>
        /// <returns>执行结果</returns>
        public int CategoryInsertUpdate(out string resultMsg, ModelCategory category, DbTransaction tran = null)
        {
            resultMsg = string.Empty;
            int res = 0;
            try
            {
                //存储过程名称
                string sql = "USP_CATEGORY_INSERT_UPDATE";
                //参数添加
                IList<DBParameter> parm = new List<DBParameter>();
                parm.Add(new DBParameter() { ParameterName = "ID", ParameterValue = category.Id, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });
                parm.Add(new DBParameter() { ParameterName = "NAME", ParameterValue = category.Name, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "NAMEEN", ParameterValue = category.Nameen, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "THUMBNAILS", ParameterValue = category.Thumbnails, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "INTRODUCTION", ParameterValue = category.Introduction, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "PARENTCATEG", ParameterValue = category.Parentcateg, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });
                parm.Add(new DBParameter() { ParameterName = "SORT", ParameterValue = category.Sort, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });
                parm.Add(new DBParameter() { ParameterName = "ISNAV", ParameterValue = category.Isnav, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });
                parm.Add(new DBParameter() { ParameterName = "ISINDEX", ParameterValue = category.Isindex, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });
                parm.Add(new DBParameter() { ParameterName = "STATUS", ParameterValue = category.Status, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });
                //parm.Add(new DBParameter() { ParameterName = "CREATEDATE", ParameterValue = category.Createdate, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.DateTime });
                //parm.Add(new DBParameter() { ParameterName = "resultMsg", ParameterInOut = BaseDict.ParmOut, ParameterType = DbType.String });

                //新增/更新执行
                res = DBHelper.ExecuteNonQuery(sql, true, parm, tran);
                
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
        /// <param name="id">Id 类别</param>
        /// <param name="status">状态</param>
        /// <returns>执行结果</returns>
        public int CategoryUpdateStatus(out string resultMsg, Int32 id, Int32 status, DbTransaction tran = null)
        {
            resultMsg = string.Empty;
            int res = 0;
            try
            {
                //存储过程名称
                string sql = "USP_Category_UPDATE_STATUS";
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
        /// <param name="id">Id 类别</param>
        /// <returns>执行结果</returns>
        public int CategoryDelete(out string resultMsg, Int32 id, DbTransaction tran = null)
        {
            resultMsg = string.Empty;
            int res = 0;
            try
            {
                //存储过程名称
                string sql = "usp_category_delete_by_id";

                //参数添加
                IList<DBParameter> parm = new List<DBParameter>();
                parm.Add(new DBParameter() { ParameterName = "ID", ParameterValue = id, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });
                //parm.Add(new DBParameter() { ParameterName = "resultMsg", ParameterInOut = BaseDict.ParmOut, ParameterType = DbType.String });

                //更新执行
                res = DBHelper.ExecuteNonQuery(sql, true, parm, tran);
                //foreach (var item in parm)
                //{
                //    //获取输出参数值
                //    if (item.ParameterName == "resultMsg")
                //    {
                //        resultMsg = item.ParameterValue.ToString();
                //        break;
                //    }
                //}
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
