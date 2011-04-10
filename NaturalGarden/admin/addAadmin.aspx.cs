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
	/// addAadmin 的摘要说明。
	/// </summary>
	public partial class addAadmin : System.Web.UI.Page
	{
	
		DataFactory df=new DataFactory();
		PagedDataSource pds=new PagedDataSource();
		static int currentIndex = 0;
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// 在此处放置用户代码以初始化页面
			if(!IsPostBack)
			{
				GetAdmin();
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
			this.viewType.DeleteCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.viewType_DeleteCommand);

		}
		#endregion

		private void GetAdmin()
		{
			try
			{
				string sql="select * from managerinfo order by issuper desc";
				DataSet ds=df.DataBind(sql);
				pds.DataSource=ds.Tables[0].DefaultView;
				pds.AllowPaging = true;
				pds.PageSize = 8;
				for (int i = 0; i < pds.PageCount; i++)
				{
					listPage1.Items.Add((i + 1).ToString());
				}
				if (Request.QueryString["page"] == null)
				{
					currentIndex = 1;
				}
				else
				{
					currentIndex = Convert.ToInt16(Request.QueryString["page"].ToString());
				}
				foreach (ListItem l in listPage1.Items)
				{
					if (l.ToString() == currentIndex.ToString().Trim())
					{
						listPage1.SelectedValue = currentIndex.ToString().Trim();
					}
				}

				pds.CurrentPageIndex = currentIndex - 1;
				if (!pds.IsFirstPage)
				{
					if(Request.Url.ToString().IndexOf("?")>0)
					{
						btnFirst1.NavigateUrl = string.Format(Request.Url.ToString().Replace("page","nothing")+"&page={0}", 1);
						btnUp1.NavigateUrl = string.Format(Request.Url.ToString().Replace("page","nothing")+"&page={0}", currentIndex - 1);
					}
					else
					{
						btnFirst1.NavigateUrl = string.Format(Request.Url.ToString()+"?page={0}", 1);
						btnUp1.NavigateUrl = string.Format(Request.Url.ToString()+"?page={0}", currentIndex - 1);
					}
				}
				if (!pds.IsLastPage)
				{
					if(Request.Url.ToString().IndexOf("?")>0)
					{
						btnDown1.NavigateUrl = string.Format(Request.Url.ToString().Replace("page","nothing")+"&page={0}", currentIndex + 1);
						btnLast1.NavigateUrl = string.Format(Request.Url.ToString().Replace("page","nothing")+"&page={0}", pds.PageCount);
					}
					else
					{
						btnDown1.NavigateUrl = string.Format(Request.Url.ToString()+"?page={0}", currentIndex + 1);
						btnLast1.NavigateUrl = string.Format(Request.Url.ToString()+"?page={0}", pds.PageCount);
					}
				}
				this.yeci1.InnerHtml = currentIndex.ToString() + "/" + pds.PageCount.ToString(); 
				viewType.DataSource=pds;
				viewType.DataBind();
			}
			catch(Exception ex)
			{
				Response.Write(ex.Message);
			}
		}

		protected void listPage1_SelectedIndexChanged(object sender, System.EventArgs e)
		{
			if(Request.Url.ToString().IndexOf("?")>0)
			{
				Response.Redirect(Request.Url.ToString().Replace("page","nothing")+"&page="+listPage1.SelectedItem.ToString());
			}
			else
			{
				Response.Redirect(Request.Url.ToString()+"?page="+listPage1.SelectedItem.ToString());
			}				
		}

		private void viewType_DeleteCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			string id=e.CommandArgument.ToString().Trim();
            string loginer = Page.User.Identity.Name.ToString().Trim();
			string jibie=df.getAData("select issuper from managerinfo where manageid="+loginer,"issuper").Trim();

            if (loginer != id && jibie != "1")
            {
                Response.Write("<script>alert('Sorry,you are not supper administrator, so you cannot delete the information of other administrators!');</script>"); return;
            }
            else
            {
                string sql = "delete from managerinfo where manageid=" + e.CommandArgument.ToString();
                if (df.DoEdit(sql) > 0)
                {
                    Response.Write("<script>alert('Deleted successfully！');location.href='addAadmin.aspx';</script>");
                }
            }
		}

		protected void btnAdd_Click(object sender, System.EventArgs e)
		{
            string loginer = Page.User.Identity.Name.ToString().Trim();
			string jibie=df.getAData("select issuper from managerinfo where manageid="+loginer,"issuper").Trim();
			
			if(jibie!="1")
			{
                Response.Write("<script>alert('Sorry,you are not supper administrator, so you cannot create new account!');</script>"); return;
			}		
			if(txtTypeName.Value.Trim()=="")
			{
                Response.Write("<script>alert('Please input management account!');</script>"); return;
			}
			if(txtOrderId.Value.Trim()=="")
			{
				Response.Write("<script>alert('Please input management password!');</script>");return;
			}
			string name=txtTypeName.Value.Trim();
			string pwd=txtOrderId.Value.Trim();
			string sql="insert into [managerinfo] ([username],[password],[issuper]) values ('"+name+"','"+pwd+"',0)";
			if(df.DoEdit(sql)>0)
			{
				Response.Write("<script>alert('Create account successfully!');location.href='addAadmin.aspx';</script>");
			}
		}
	}
}
