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
	/// left ��ժҪ˵����
	/// </summary>
	public partial class left : System.Web.UI.Page
	{
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// �ڴ˴������û������Գ�ʼ��ҳ��
            if (Session["loginUser"] == null || Session["loginUser"].ToString().Trim() == "")
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                HyperLink1.NavigateUrl = "editaadmin.aspx?aId=" + Session["loginUser"].ToString().Trim();
            }
            if(!IsPostBack)
            {
                string uId = Page.User.Identity.Name.ToString();
                string name = new DataFactory().getAData("select [username] from [managerinfo] where [manageId]=" + uId, "username");
                HyperLink1.NavigateUrl = "editaadmin.aspx?aId=" + uId;
                showLoginer.InnerHtml = name;
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
