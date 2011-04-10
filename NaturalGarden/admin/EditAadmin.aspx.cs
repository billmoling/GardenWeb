using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace NewsProject.admin
{
	/// <summary>
	/// EditAadmin ��ժҪ˵����
	/// </summary>
	public partial class EditAadmin : System.Web.UI.Page
	{
		DataFactory df=new DataFactory();
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// �ڴ˴������û������Գ�ʼ��ҳ��
			if(!IsPostBack)
			{
				if(Request.QueryString["aId"]!=null)
				{
					try{Convert.ToInt32(Request.QueryString["aId"].Trim());}
					catch{Response.Write("<script>alert('������Ч��');history.go(-1);</script>");return ;}
					string loginer=Page.User.Identity.Name.ToString().Trim();
					string jibie=df.getAData("select issuper from managerinfo where manageid="+loginer,"issuper").Trim();
					
					if(jibie!="1"&&loginer!=Request.QueryString["aId"].Trim())
					{
						Response.Write("<script>alert('�Բ���,�����ǳ�������Ա,�����޸���������Ա��Ϣ��');history.go(-1);</script>");return;
					}
					GetInfo();
				}
				else
				{
					Response.Write("<script>alert('�Ƿ����ʣ�');history.go(-1);</script>");return ;
				}
			}
		}

		#region Web ������������ɵĴ���
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: �õ����� ASP.NET Web ���������������ġ�
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// �����֧������ķ��� - ��Ҫʹ�ô���༭���޸�
		/// �˷��������ݡ�
		/// </summary>
		private void InitializeComponent()
		{    

		}
		#endregion

		private void GetInfo()
		{
			try
			{
				if(Request.QueryString["aId"]!=null)
				{
					string sql="select * from managerinfo where manageid="+Request.QueryString["aId"].Trim();
					DataSet ds=df.DataBind(sql);
					txtTypeName.Value=ds.Tables[0].Rows[0]["username"].ToString().Trim();
				}
			}
			catch(Exception ex)
			{
				Response.Write(ex.Message);
			}
		}

		protected void btnAdd_Click(object sender, System.EventArgs e)
		{
			string name=txtTypeName.Value.Trim();
			string pwdOld=txtOldPwd.Value.Trim();
			string pwdSure=txtSurePwd.Value.Trim();
			string pwdNew=txtNewPwd.Value.Trim();
			if(String.IsNullOrEmpty(name.Trim()))
			{
				Response.Write("<script>alert('Please input username!');</script>");return ;
			}
			if(String.IsNullOrEmpty(pwdOld.Trim()))
			{
				Response.Write("<script>alert('Please input your password!');</script>");return ;
			}
			if(String.IsNullOrEmpty(pwdNew.Trim()))
			{
				Response.Write("<script>alert('Please input new password!');</script>");return ;
			}
			if(String.IsNullOrEmpty(pwdSure.Trim()))
			{
				Response.Write("<script>alert('Please input confirm password!');</script>");return ;
			}
			if(pwdSure!=pwdNew)
			{
                Response.Write("<script>alert('Passwords do not match!');</script>"); return;
			}
             string sql1 = "select * from managerinfo where manageId='" + Request.QueryString["aId"].ToString().Trim() + "' and password='" + pwdOld + "'";
			if(df.Check(sql1)==false)
			{
                Response.Write("<script>alert('The original password you gave is incorrect!');</script>"); return;
			}
            string sql2 = "update [managerinfo] set [username]='" + name + "',[password]='" + pwdNew + "' where manageid=" + Request.QueryString["aId"].ToString().Trim();
			if(df.DoEdit(sql2)>0)
			{
				Response.Write("<script>alert('Modified successfully��');location.href='addAadmin.aspx';</script>");
			}
		}
	}
}
