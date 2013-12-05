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
    public class LogicArticle 
    {

        #region ˽�к���
        /// <summary>
        /// Model ��ֵ IDataReader
        /// </summary>
        private IList<ModelArticle> GetModel(IDataReader dr)
        {
            var modelList = new List<ModelArticle>();

            while (dr.Read())
            {
                var model = new ModelArticle();
                model.Id = dr["Id"]== DBNull.Value ? 0 : Convert.ToInt32(dr["Id"]);
                model.Title = dr["Title"]== DBNull.Value ? string.Empty : dr["Title"].ToString();
                model.Author = dr["Author"]== DBNull.Value ? string.Empty : dr["Author"].ToString();
                model.Source = dr["Source"]== DBNull.Value ? string.Empty : dr["Source"].ToString();
                model.Context = dr["Context"]== DBNull.Value ? string.Empty : dr["Context"].ToString();
                model.Abstract = dr["Abstract"]== DBNull.Value ? string.Empty : dr["Abstract"].ToString();
                model.Thumbnails = dr["Thumbnails"]== DBNull.Value ? string.Empty : dr["Thumbnails"].ToString();
                model.Categoryid = dr["CategoryId"] == DBNull.Value ? 0 : Convert.ToInt32(dr["CategoryId"]);
                model.CategoryTwo = dr["CategoryTwo"] == DBNull.Value ? string.Empty : dr["CategoryTwo"].ToString();
                model.Keyword = dr["Keyword"]== DBNull.Value ? string.Empty : dr["Keyword"].ToString();
                model.Isrecommend = dr["IsRecommend"]== DBNull.Value ? 0 : Convert.ToInt32(dr["IsRecommend"]);
                model.Titlecolor = dr["TitleColor"]== DBNull.Value ? string.Empty : dr["TitleColor"].ToString();
                model.Titleisbold = dr["TitleIsBold"]== DBNull.Value ? 0 : Convert.ToInt32(dr["TitleIsBold"]);
                model.Status = dr["Status"] == DBNull.Value ? 0 : Convert.ToInt32(dr["Status"]);
                model.CategoryName = dr["CategoryName"] == DBNull.Value ? string.Empty : Convert.ToString(dr["CategoryName"]);
                model.Createdate = dr["CreateDate"]== DBNull.Value ? DateTime.MinValue : Convert.ToDateTime(dr["CreateDate"]);
                modelList.Add(model);
            }
            return modelList;
        }

        /// <summary>
        /// Model ��ֵ DataSet
        /// </summary>
        private IList<ModelArticle> GetModel(DataSet ds)
        {
            var modelList = (from DataRow dr in ds.Tables[0].Rows
                            select new ModelArticle()
                            {
                                Id = dr["Id"]== DBNull.Value ? 0 : Convert.ToInt32(dr["Id"]),
                                Title = dr["Title"]== DBNull.Value ? string.Empty : dr["Title"].ToString(),
                                Author = dr["Author"]== DBNull.Value ? string.Empty : dr["Author"].ToString(),
                                Source = dr["Source"]== DBNull.Value ? string.Empty : dr["Source"].ToString(),
                                Context = dr["Context"]== DBNull.Value ? string.Empty : dr["Context"].ToString(),
                                Abstract = dr["Abstract"]== DBNull.Value ? string.Empty : dr["Abstract"].ToString(),
                                Thumbnails = dr["Thumbnails"]== DBNull.Value ? string.Empty : dr["Thumbnails"].ToString(),
                                Categoryid = dr["CategoryId"]== DBNull.Value ? 0 : Convert.ToInt32(dr["CategoryId"]),
                                CategoryTwo = dr["CategoryTwo"] == DBNull.Value ? string.Empty : dr["CategoryTwo"].ToString(),
                                Keyword = dr["Keyword"]== DBNull.Value ? string.Empty : dr["Keyword"].ToString(),
                                Isrecommend = dr["IsRecommend"]== DBNull.Value ? 0 : Convert.ToInt32(dr["IsRecommend"]),
                                Titlecolor = dr["TitleColor"]== DBNull.Value ? string.Empty : dr["TitleColor"].ToString(),
                                Titleisbold = dr["TitleIsBold"]== DBNull.Value ? 0 : Convert.ToInt32(dr["TitleIsBold"]),
                                Status = dr["Status"]== DBNull.Value ? 0 : Convert.ToInt32(dr["Status"]),
                                CategoryName = dr["CategoryName"] == DBNull.Value ? string.Empty : Convert.ToString(dr["CategoryName"]),
                                Createdate = dr["CreateDate"]== DBNull.Value ? DateTime.MinValue : Convert.ToDateTime(dr["CreateDate"]),
                            }).ToList();
            return modelList;
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
        public IList<ModelArticle> QueryArticleListPager(out string resultMsg, out decimal recordCount, CriteriaArticle.Pager criteria, int pageSize = 10, int pageIndex = 1)
        {
            recordCount = decimal.Zero;
            resultMsg = string.Empty;
            IList<ModelArticle> list = new List<ModelArticle>();
            try
            {
                //�洢��������
                string sql = "usp_article_select_pager"; //todo:��Ҫ���洢������Ӹ�������������

                //�������
                IList<DBParameter> parm = new List<DBParameter>();
                parm.Add(new DBParameter() { ParameterName = "KeyWord", ParameterValue = criteria.KeyWord, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "CategoryId", ParameterValue = criteria.CategoryId, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "CategoryTwo", ParameterValue = criteria.CategoryTwo, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "PagerSize", ParameterValue = pageSize, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "PagerIndex", ParameterValue = pageIndex, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "RowsCount", ParameterInOut = BaseDict.ParmOut, ParameterType = DbType.String });

                //��ѯִ��
                using (DataSet ds= DBHelper.ExecuteDataSet(sql, true, parm))
                {
                    //DataReader ת���� List
                    list = GetModel(ds);
                    foreach (var item in parm)
                    {
                        //��ȡ�������ֵ
                        if (item.ParameterName == "RowsCount")
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
        /// <returns>ModelArticle</returns>
        public ModelArticle ArticleDetail(out string resultMsg,Int32 id )
        {
            resultMsg = string.Empty;
            var model = new ModelArticle();
            try
            {
                //�洢��������
                string sql = "USP_ARTICLE_SELECT_DETAIL_BY_ID";

                //�������
                IList<DBParameter> parm = new List<DBParameter>();
                parm.Add(new DBParameter() { ParameterName = "ID", ParameterValue = id, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });

                //��ѯִ��
                using (IDataReader dr = DBHelper.ExecuteReader(sql, true, parm))
                {
                    IList<ModelArticle> list = GetModel(dr);
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
        /// ���� ���/����
        /// </summary>
        /// <param name="article">ʵ��</param>
        /// <returns>ִ�н��</returns>
        public int ArticleInsertUpdate(out string resultMsg,ModelArticle article,DbTransaction tran =null)
        {
            resultMsg = string.Empty;
            int res = 0;
            try
            {
                //�洢��������
                string sql = "USP_ARTICLE_INSERT_UPDATE";
                //�������
                IList<DBParameter> parm = new List<DBParameter>();
                parm.Add(new DBParameter() { ParameterName = "ID", ParameterValue = article.Id, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });
                parm.Add(new DBParameter() { ParameterName = "TITLE", ParameterValue = article.Title, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "AUTHOR", ParameterValue = article.Author, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "SOURCE", ParameterValue = article.Source, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "CONTEXT", ParameterValue = article.Context, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "ABSTRACT", ParameterValue = article.Abstract, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "THUMBNAILS", ParameterValue = article.Thumbnails, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "CATEGORYID", ParameterValue = article.Categoryid, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });
                parm.Add(new DBParameter() { ParameterName = "Categorytwo", ParameterValue = article.CategoryTwo, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });
                parm.Add(new DBParameter() { ParameterName = "KEYWORD", ParameterValue = article.Keyword, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "ISRECOMMEND", ParameterValue = article.Isrecommend, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });
                parm.Add(new DBParameter() { ParameterName = "TITLECOLOR", ParameterValue = article.Titlecolor, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "TITLEISBOLD", ParameterValue = article.Titleisbold, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });
                parm.Add(new DBParameter() { ParameterName = "STATUS", ParameterValue = article.Status, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 }); 
                
                //����/����ִ��
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
        /// ����״̬ ����
        /// </summary>
        /// <param name="id">Id ���</param>
        /// <param name="status">״̬</param>
        /// <returns>ִ�н��</returns>
        public int ArticleUpdateStatus(out string resultMsg,Int32 id ,Int32 status ,DbTransaction tran=null)
        {
            resultMsg = string.Empty;
            int res = 0;
            try
            {
                //�洢��������
                string sql = "USP_Article_UPDATE_STATUS";
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
                if(tran != null)
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
        public int ArticleDelete(out string resultMsg,Int32 id ,DbTransaction tran=null)
        {
            resultMsg = string.Empty;
            int res = 0;
            try
            {
                //�洢��������
                string sql = "usp_article_Delete_by_id";

                //�������
                IList<DBParameter> parm = new List<DBParameter>();
                parm.Add(new DBParameter() { ParameterName = "ID", ParameterValue = id, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 }); 
                //����ִ��
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
