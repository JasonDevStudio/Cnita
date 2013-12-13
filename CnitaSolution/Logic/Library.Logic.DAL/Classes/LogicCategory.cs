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

        #region ˽�к���
        /// <summary>
        /// Model ��ֵ IDataReader
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
        /// Model ��ֵ DataSet
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
        /// ��ҳ��ѯ 
        /// </summary>
        /// <param name="recordCount">������� ��������</param>
        /// <param name="criteria">��ѯ��������</param>
        /// <param name="pageSize">ÿҳ��ʾ����</param>
        /// <param name="pageIndex">��ǰҳ����</param>
        /// <returns>����� ����</returns>
        public IList<ModelCategory> QueryCategoryListPager(out string resultMsg, out decimal recordCount, CriteriaCategory.Pager criteria, int pageSize = 10, int pageIndex = 1)
        {
            recordCount = decimal.Zero;
            resultMsg = string.Empty;
            IList<ModelCategory> list = new List<ModelCategory>();
            try
            {
                //�洢��������
                string sql = "USP_CATEGORY_SELECT_SEARCH_PAGER";

                //�������
                IList<DBParameter> parm = new List<DBParameter>();
                parm.Add(new DBParameter() { ParameterName = "PageSize", ParameterValue = pageSize, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "PageIndex", ParameterValue = pageIndex, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "RowCount", ParameterInOut = BaseDict.ParmOut, ParameterType = DbType.String });

                //��ѯִ��
                using (IDataReader dr = DBHelper.ExecuteReader(sql, true, parm))
                {
                    //DataReader ת���� List
                    list = GetModel(dr);
                    foreach (var item in parm)
                    {
                        //��ȡ�������ֵ
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
        ///  ��ѯʵ��
        /// </summary>
        /// <param name="id">ModelId ���</param>
        /// <returns>ModelCategory</returns>
        public ModelCategory CategoryDetail(out string resultMsg, Int32 id)
        {
            resultMsg = string.Empty;
            var model = new ModelCategory();
            try
            {
                //�洢��������
                string sql = "USP_CATEGORY_SELECT_DETAIL_BY_ID";

                //�������
                IList<DBParameter> parm = new List<DBParameter>();
                parm.Add(new DBParameter() { ParameterName = "ID", ParameterValue = id, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });

                //��ѯִ��
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
        ///  ��ѯʵ��
        /// </summary>
        /// <param name="id">ModelId ���</param>
        /// <returns>ModelCategory</returns>
        public ModelCategory CategoryDetailByPid(out string resultMsg, Int32 id,DateTime StartDate ,DateTime EndDate)
        {
            resultMsg = string.Empty;
            var model = new ModelCategory();
            try
            {
                //�洢��������
                string sql = "usp_category_select_detail_by_pid";

                //�������
                IList<DBParameter> parm = new List<DBParameter>();
                parm.Add(new DBParameter() { ParameterName = "Id", ParameterValue = id, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });
                parm.Add(new DBParameter() { ParameterName = "StartDate", ParameterValue = StartDate, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.DateTime });
                parm.Add(new DBParameter() { ParameterName = "EndDate", ParameterValue = EndDate, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.DateTime });

                //��ѯִ��
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
        ///  ��ѯʵ��
        /// </summary>
        /// <param name="id">ModelId ���</param>
        /// <returns>ModelCategory</returns>
        public IList<ModelCategory> CategoryAll(out string resultMsg, Int32 ParentCateg = 0,string IsNav = null)
        {
            resultMsg = string.Empty;
            IList<ModelCategory> list = new List<ModelCategory>();
            try
            {
                //�洢��������
                string sql = "usp_category_select_all";

                //�������
                IList<DBParameter> parm = new List<DBParameter>();
                parm.Add(new DBParameter() { ParameterName = "@ParentCateg", ParameterValue = ParentCateg, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });
                parm.Add(new DBParameter() { ParameterName = "@IsNav", ParameterValue = IsNav, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });

                //��ѯִ��
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
        /// ��ȡ���νṹ����
        /// </summary> 
        public IList<ModelCategory> CategoryAllThree(out string resultMsg, Int32 ParentCateg = 0)
        {
            resultMsg = string.Empty;
            IList<ModelCategory> list = new List<ModelCategory>();
            try
            {
                //�洢��������
                string sql = "usp_category_select_all_by_three";

                //�������
                IList<DBParameter> parm = new List<DBParameter>();
                parm.Add(new DBParameter() { ParameterName = "@ParentCateg", ParameterValue = ParentCateg, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });

                //��ѯִ��
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
        /// ���� ���/����
        /// </summary>
        /// <param name="category">ʵ��</param>
        /// <returns>ִ�н��</returns>
        public int CategoryInsertUpdate(out string resultMsg, ModelCategory category, DbTransaction tran = null)
        {
            resultMsg = string.Empty;
            int res = 0;
            try
            {
                //�洢��������
                string sql = "USP_CATEGORY_INSERT_UPDATE";
                //�������
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

                //����/����ִ��
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
        /// ����״̬ ����
        /// </summary>
        /// <param name="id">Id ���</param>
        /// <param name="status">״̬</param>
        /// <returns>ִ�н��</returns>
        public int CategoryUpdateStatus(out string resultMsg, Int32 id, Int32 status, DbTransaction tran = null)
        {
            resultMsg = string.Empty;
            int res = 0;
            try
            {
                //�洢��������
                string sql = "USP_Category_UPDATE_STATUS";
                //�������
                IList<DBParameter> parm = new List<DBParameter>();
                parm.Add(new DBParameter() { ParameterName = "ID", ParameterValue = id, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });
                parm.Add(new DBParameter() { ParameterName = "STATUS", ParameterValue = status, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });
                parm.Add(new DBParameter() { ParameterName = "resultMsg", ParameterInOut = BaseDict.ParmOut, ParameterType = DbType.String });
                //����ִ��
                res = DBHelper.ExecuteNonQuery(sql, true, parm, tran);
                foreach (var item in parm)
                {
                    //��ȡ�������ֵ
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
        /// ���� ɾ��
        /// </summary>
        /// <param name="id">Id ���</param>
        /// <returns>ִ�н��</returns>
        public int CategoryDelete(out string resultMsg, Int32 id, DbTransaction tran = null)
        {
            resultMsg = string.Empty;
            int res = 0;
            try
            {
                //�洢��������
                string sql = "usp_category_delete_by_id";

                //�������
                IList<DBParameter> parm = new List<DBParameter>();
                parm.Add(new DBParameter() { ParameterName = "ID", ParameterValue = id, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });
                //parm.Add(new DBParameter() { ParameterName = "resultMsg", ParameterInOut = BaseDict.ParmOut, ParameterType = DbType.String });

                //����ִ��
                res = DBHelper.ExecuteNonQuery(sql, true, parm, tran);
                //foreach (var item in parm)
                //{
                //    //��ȡ�������ֵ
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
