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
    public class LogicOrganization 
    {

        #region ˽�к���
        /// <summary>
        /// Model ��ֵ IDataReader
        /// </summary>
        private IList<ModelOrganization> GetModel(IDataReader dr)
        {
            var modelList = new List<ModelOrganization>();

            while (dr.Read())
            {
                var model = new ModelOrganization();
                model.Orgid = dr["OrgId"]== DBNull.Value ? 0 : Convert.ToInt32(dr["OrgId"]);
                model.Orgname = dr["OrgName"]== DBNull.Value ? string.Empty : dr["OrgName"].ToString();
                model.Orgenname = dr["OrgEnName"]== DBNull.Value ? string.Empty : dr["OrgEnName"].ToString();
                model.Address = dr["Address"]== DBNull.Value ? string.Empty : dr["Address"].ToString();
                model.Addressen = dr["AddressEn"]== DBNull.Value ? string.Empty : dr["AddressEn"].ToString();
                model.Zipcode = dr["ZipCode"]== DBNull.Value ? string.Empty : dr["ZipCode"].ToString();
                model.Internetsite = dr["InternetSite"]== DBNull.Value ? string.Empty : dr["InternetSite"].ToString();
                model.Natureofbusiness = dr["NatureOfBusiness"]== DBNull.Value ? string.Empty : dr["NatureOfBusiness"].ToString();
                model.Fixedassets = dr["FixedAssets"]== DBNull.Value ? string.Empty : dr["FixedAssets"].ToString();
                model.Legalperson = dr["LegalPerson"]== DBNull.Value ? string.Empty : dr["LegalPerson"].ToString();
                model.Post = dr["Post"]== DBNull.Value ? string.Empty : dr["Post"].ToString();
                model.Tel = dr["Tel"]== DBNull.Value ? string.Empty : dr["Tel"].ToString();
                model.Fax = dr["Fax"]== DBNull.Value ? string.Empty : dr["Fax"].ToString();
                model.Phone = dr["Phone"]== DBNull.Value ? string.Empty : dr["Phone"].ToString();
                model.Email = dr["Email"]== DBNull.Value ? string.Empty : dr["Email"].ToString();
                model.Contact = dr["Contact"]== DBNull.Value ? string.Empty : dr["Contact"].ToString();
                model.Contactpost = dr["ContactPost"]== DBNull.Value ? string.Empty : dr["ContactPost"].ToString();
                model.Contacttel = dr["ContactTel"]== DBNull.Value ? string.Empty : dr["ContactTel"].ToString();
                model.Contactfax = dr["ContactFax"]== DBNull.Value ? string.Empty : dr["ContactFax"].ToString();
                model.Contactphone = dr["ContactPhone"]== DBNull.Value ? string.Empty : dr["ContactPhone"].ToString();
                model.Contactemail = dr["ContactEmail"]== DBNull.Value ? string.Empty : dr["ContactEmail"].ToString();
                model.Unittype = dr["UnitType"]== DBNull.Value ? string.Empty : dr["UnitType"].ToString();
                model.Productapplications = dr["ProductApplications"]== DBNull.Value ? string.Empty : dr["ProductApplications"].ToString();
                model.Processcategory = dr["ProcessCategory"]== DBNull.Value ? string.Empty : dr["ProcessCategory"].ToString();
                model.Membershiplevel = dr["MembershipLevel"]== DBNull.Value ? string.Empty : dr["MembershipLevel"].ToString();
                model.Introduction = dr["Introduction"]== DBNull.Value ? string.Empty : dr["Introduction"].ToString();
                model.Createdate = dr["CreateDate"]== DBNull.Value ? DateTime.MinValue : Convert.ToDateTime(dr["CreateDate"]);
                modelList.Add(model);
            }
            return modelList;
        }

        /// <summary>
        /// Model ��ֵ DataSet
        /// </summary>
        private IList<ModelOrganization> GetModel(DataSet ds)
        {
            var modelList = (from DataRow dr in ds.Tables[0].Rows
                            select new ModelOrganization()
                            {
                                Orgid = dr["OrgId"]== DBNull.Value ? 0 : Convert.ToInt32(dr["OrgId"]),
                                Orgname = dr["OrgName"]== DBNull.Value ? string.Empty : dr["OrgName"].ToString(),
                                Orgenname = dr["OrgEnName"]== DBNull.Value ? string.Empty : dr["OrgEnName"].ToString(),
                                Address = dr["Address"]== DBNull.Value ? string.Empty : dr["Address"].ToString(),
                                Addressen = dr["AddressEn"]== DBNull.Value ? string.Empty : dr["AddressEn"].ToString(),
                                Zipcode = dr["ZipCode"]== DBNull.Value ? string.Empty : dr["ZipCode"].ToString(),
                                Internetsite = dr["InternetSite"]== DBNull.Value ? string.Empty : dr["InternetSite"].ToString(),
                                Natureofbusiness = dr["NatureOfBusiness"]== DBNull.Value ? string.Empty : dr["NatureOfBusiness"].ToString(),
                                Fixedassets = dr["FixedAssets"]== DBNull.Value ? string.Empty : dr["FixedAssets"].ToString(),
                                Legalperson = dr["LegalPerson"]== DBNull.Value ? string.Empty : dr["LegalPerson"].ToString(),
                                Post = dr["Post"]== DBNull.Value ? string.Empty : dr["Post"].ToString(),
                                Tel = dr["Tel"]== DBNull.Value ? string.Empty : dr["Tel"].ToString(),
                                Fax = dr["Fax"]== DBNull.Value ? string.Empty : dr["Fax"].ToString(),
                                Phone = dr["Phone"]== DBNull.Value ? string.Empty : dr["Phone"].ToString(),
                                Email = dr["Email"]== DBNull.Value ? string.Empty : dr["Email"].ToString(),
                                Contact = dr["Contact"]== DBNull.Value ? string.Empty : dr["Contact"].ToString(),
                                Contactpost = dr["ContactPost"]== DBNull.Value ? string.Empty : dr["ContactPost"].ToString(),
                                Contacttel = dr["ContactTel"]== DBNull.Value ? string.Empty : dr["ContactTel"].ToString(),
                                Contactfax = dr["ContactFax"]== DBNull.Value ? string.Empty : dr["ContactFax"].ToString(),
                                Contactphone = dr["ContactPhone"]== DBNull.Value ? string.Empty : dr["ContactPhone"].ToString(),
                                Contactemail = dr["ContactEmail"]== DBNull.Value ? string.Empty : dr["ContactEmail"].ToString(),
                                Unittype = dr["UnitType"]== DBNull.Value ? string.Empty : dr["UnitType"].ToString(),
                                Productapplications = dr["ProductApplications"]== DBNull.Value ? string.Empty : dr["ProductApplications"].ToString(),
                                Processcategory = dr["ProcessCategory"]== DBNull.Value ? string.Empty : dr["ProcessCategory"].ToString(),
                                Membershiplevel = dr["MembershipLevel"]== DBNull.Value ? string.Empty : dr["MembershipLevel"].ToString(),
                                Introduction = dr["Introduction"]== DBNull.Value ? string.Empty : dr["Introduction"].ToString(),
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
        public IList<ModelOrganization> QueryOrganizationListPager(out string resultMsg, out decimal recordCount, CriteriaOrganization.Pager criteria, decimal pageSize = 10, decimal pageIndex = 1)
        {
            recordCount = decimal.Zero;
            resultMsg = string.Empty;
            IList<ModelOrganization> list = new List<ModelOrganization>();
            try
            {
                //�洢��������
                string sql = "usp_organization_select_pager";

                //�������
                IList<DBParameter> parm = new List<DBParameter>();
                parm.Add(new DBParameter() { ParameterName = "KeyWord", ParameterValue = criteria.KeyWord, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "PagerSize", ParameterValue = pageSize, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "PagerIndex", ParameterValue = pageIndex, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
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
        /// <param name="orgid">ModelOrgid ���</param>
        /// <returns>ModelOrganization</returns>
        public ModelOrganization OrganizationDetail(out string resultMsg,Int32 orgid )
        {
            resultMsg = string.Empty;
            var model = new ModelOrganization();
            try
            {
                //�洢��������
                string sql = "usp_organization_select_detail_by_orgid";

                //�������
                IList<DBParameter> parm = new List<DBParameter>();
                parm.Add(new DBParameter() { ParameterName = "ORGID", ParameterValue = orgid, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });

                //��ѯִ��
                using (IDataReader dr = DBHelper.ExecuteReader(sql, true, parm))
                {
                    IList<ModelOrganization> list = GetModel(dr);
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
        /// <param name="organization">ʵ��</param>
        /// <returns>ִ�н��</returns>
        public int OrganizationInsertUpdate(out string resultMsg,ModelOrganization organization,DbTransaction tran =null)
        {
            resultMsg = string.Empty;
            int res = 0;
            try
            {
                //�洢��������
                string sql = "USP_ORGANIZATION_INSERT_UPDATE";
                //�������
                IList<DBParameter> parm = new List<DBParameter>();
                parm.Add(new DBParameter() { ParameterName = "ORGID", ParameterValue = organization.Orgid, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });
                parm.Add(new DBParameter() { ParameterName = "ORGNAME", ParameterValue = organization.Orgname, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "ORGENNAME", ParameterValue = organization.Orgenname, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "ADDRESS", ParameterValue = organization.Address, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "ADDRESSEN", ParameterValue = organization.Addressen, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "ZIPCODE", ParameterValue = organization.Zipcode, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "INTERNETSITE", ParameterValue = organization.Internetsite, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "NATUREOFBUSINESS", ParameterValue = organization.Natureofbusiness, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "FIXEDASSETS", ParameterValue = organization.Fixedassets, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "LEGALPERSON", ParameterValue = organization.Legalperson, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "POST", ParameterValue = organization.Post, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "TEL", ParameterValue = organization.Tel, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "FAX", ParameterValue = organization.Fax, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "PHONE", ParameterValue = organization.Phone, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "EMAIL", ParameterValue = organization.Email, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "CONTACT", ParameterValue = organization.Contact, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "CONTACTPOST", ParameterValue = organization.Contactpost, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "CONTACTTEL", ParameterValue = organization.Contacttel, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "CONTACTFAX", ParameterValue = organization.Contactfax, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "CONTACTPHONE", ParameterValue = organization.Contactphone, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "CONTACTEMAIL", ParameterValue = organization.Contactemail, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "UNITTYPE", ParameterValue = organization.Unittype, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "PRODUCTAPPLICATIONS", ParameterValue = organization.Productapplications, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "PROCESSCATEGORY", ParameterValue = organization.Processcategory, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "MEMBERSHIPLEVEL", ParameterValue = organization.Membershiplevel, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "INTRODUCTION", ParameterValue = organization.Introduction, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String });
                parm.Add(new DBParameter() { ParameterName = "STATUS", ParameterValue = organization.Status, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.String }); 

                //����/����ִ��
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
        /// ����״̬ ����
        /// </summary>
        /// <param name="orgid">Orgid ���</param>
        /// <returns>ִ�н��</returns>
        public int OrganizationUpdateStatus(out string resultMsg,Int32 orgid ,DbTransaction tran=null)
        {
            resultMsg = string.Empty;
            int res = 0;
            try
            {
                //�洢��������
                string sql = "USP_Organization_UPDATE_STATUS";
                //�������
                IList<DBParameter> parm = new List<DBParameter>();
                parm.Add(new DBParameter() { ParameterName = "ORGID", ParameterValue = orgid, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });
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
        /// <param name="orgid">Orgid ���</param>
        /// <returns>ִ�н��</returns>
        public int OrganizationDelete(out string resultMsg, Int32 orgid, DbTransaction tran = null)
        {
            resultMsg = string.Empty;
            int res = 0;
            try
            {
                //�洢��������
                string sql = "usp_organization_delete";

                //�������
                IList<DBParameter> parm = new List<DBParameter>();
                parm.Add(new DBParameter() { ParameterName = "Id", ParameterValue = orgid, ParameterInOut = BaseDict.ParmIn, ParameterType = DbType.Int32 });
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
        ///  ��ѯ����ʵ��
        /// </summary>  
        public IList<ModelOrganization> OrganizationAll(out string resultMsg)
        {
            resultMsg = string.Empty;
            IList<ModelOrganization> list = new List<ModelOrganization>(); 
            try
            {
                //�洢��������
                string sql = "SELECT * FROM  Organization";
                 

                //��ѯִ��
                using (IDataReader dr = DBHelper.ExecuteReader(sql))
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
    }
}
