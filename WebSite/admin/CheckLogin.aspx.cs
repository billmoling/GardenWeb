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
	/// CheckLogin ��ժҪ˵����
	/// </summary>
	public partial class CheckLogin : System.Web.UI.Page
	{
		DataFactory df=new DataFactory();
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// �ڴ˴������û������Գ�ʼ��ҳ��
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
						//Response.Write("<script>alert('��֤�����,����������!');history.go(-1);</script>");return ;
					//}

					string sql="select [password] from [managerinfo] where [username]='"+Request.Form["username"].Trim()+"'";
					if(df.getAData(sql,"password").Trim()!=Request.Form["password"].Trim())
					{
						Response.Write("<script>alert('�û������������!');history.go(-1);</script>");return ;
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
					Response.Write("<script>alert('��Ϣ��д������!');history.go(-1);</script>");
				}
			}
			catch(Exception ex)
			{
				Response.Write(ex.Message);
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
	}
}
