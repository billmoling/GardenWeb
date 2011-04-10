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
	/// EditAadmin 的摘要说明。
	/// </summary>
	public partial class EditAadmin : System.Web.UI.Page
	{
		DataFactory df=new DataFactory();
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// 在此处放置用户代码以初始化页面
			if(!IsPostBack)
			{
				if(Request.QueryString["aId"]!=null)
				{
					try{Convert.ToInt32(Request.QueryString["aId"].Trim());}
					catch{Response.Write("<script>alert('参数无效！');history.go(-1);</script>");return ;}
					string loginer=Page.User.Identity.Name.ToString().Trim();
					string jibie=df.getAData("select issuper from managerinfo where manageid="+loginer,"issuper").Trim();
					
					if(jibie!="1"&&loginer!=Request.QueryString["aId"].Trim())
					{
						Response.Write("<script>alert('对不起,您不是超级管理员,不能修改其他管理员信息！');history.go(-1);</script>");return;
					}
					GetInfo();
				}
				else
				{
					Response.Write("<script>alert('非法访问！');history.go(-1);</script>");return ;
				}
			}
		}

		#region Web 窗体设计器生成的代码
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: 该调用是 ASP.NET Web 窗体设计器所必需的。
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// 设计器支持所需的方法 - 不要使用代码编辑器修改
		/// 此方法的内容。
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
				Response.Write("<script>alert('Modified successfully！');location.href='addAadmin.aspx';</script>");
			}
		}
	}
}
