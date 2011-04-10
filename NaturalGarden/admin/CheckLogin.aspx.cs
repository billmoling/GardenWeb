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
using System.Configuration;

namespace NewsProject.admin
{
	/// <summary>
	/// CheckLogin 的摘要说明。
	/// </summary>
	public partial class CheckLogin : System.Web.UI.Page
	{
		DataFactory df=new DataFactory();
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// 在此处放置用户代码以初始化页面
			try
			{
				if(Request.QueryString["mudi"]!=null)
				{
					if(Request.QueryString["mudi"].Trim()=="loginout")
					{
						if(Session["loginUser"]!=null)
						{
							Session.Remove("loginUser");
							Response.Redirect("login.aspx");
						}
					}
				}

				if(Request.Form["username"]!=null&&Request.Form["password"]!=null)
				{
					//if(Session["image"].ToString().Trim().ToUpper()!=Request.Form["yzcode"].Trim().ToUpper())
					//{
						//Response.Write("<script>alert('验证码错误,请重新输入!');history.go(-1);</script>");return ;
					//}

					string sql="select [password] from [managerinfo] where [username]='"+Request.Form["username"].Trim()+"'";
					if(df.getAData(sql,"password").Trim()!=Request.Form["password"].Trim())
					{
						Response.Write("<script>alert('用户名或密码错误!');history.go(-1);</script>");return ;
					}
					//web.Security.FormsAuthentication.RedirectFromLoginPage();
					//System.Web.Security.FormsAuthentication.RedirectFromLoginPage(Request.Form["username"].Trim(), false);
					//FormsAuthentication.RedirectFromLoginPage(Request.Form["username"].Trim(), false);
					string sql2="select manageid from managerinfo where [username]='"+Request.Form["username"].Trim()+"' and [password]='"+Request.Form["password"].Trim()+"'";
					string adminId=df.getAData(sql2,"manageid");
					Session.Add("loginUser",adminId);
					Response.Redirect("index.aspx");
				}
				else
				{
					Response.Write("<script>alert('信息填写不完整!');history.go(-1);</script>");
				}
			}
			catch(Exception ex)
			{
				Response.Write(ex.Message);
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
	}
}
