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
	/// addAType 的摘要说明。
	/// </summary>
	public partial class addAType : System.Web.UI.Page
	{
		DataFactory df=new DataFactory();
		PagedDataSource pds=new PagedDataSource();
		static int currentIndex = 0;
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// 在此处放置用户代码以初始化页面
			if(!IsPostBack)
			{
				GetTtypeList();
				GetATypeInfo();
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

		private void GetTtypeList()
		{
			try
			{
				string sql="select ptypeid,ptypename,orderId from ptypeinfo order by ptypeid desc";
				DataSet ds=df.DataBind(sql);
				pds.DataSource = ds.Tables[0].DefaultView;
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

		private void viewType_DeleteCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			try
			{
				if(df.Check("select * from productinfo where ptypeid="+e.CommandArgument.ToString())==true)
				{
					Response.Write("<script>alert('This kind of products are cannot be deleted;\\nThe reason maybe that the product catalogue under current category is non-empty;\\nIf you want to delete the category，please remove all products from the category firstly!');</script>");return;
				}
				if(df.DoEdit("delete from ptypeinfo where ptypeid="+e.CommandArgument.ToString())>0)
				{
					Response.Redirect("addAType.aspx");
				}
				else
				{
					Response.Write("<script>alert('Failed to delete!');</script>");
				}
			}
			catch(Exception ex)
			{Response.Write(ex.Message);
			}
		}

		private void GetATypeInfo()
		{
			try
			{
				if(Request.QueryString["isedit"]!=null)
				{
					if(Request.QueryString["isedit"].Trim()!="1")
					{
						Response.Write("<script>alert('Invalid parameters!');history.go(-1);</script>");return;
					}
					try{Convert.ToInt32(Request.QueryString["tId"].Trim());}
					catch{Response.Write("<script>alert('Invalid parameters!');history.go(-1);</script>");}
					string sql="select * from ptypeinfo where ptypeid="+Request.QueryString["tId"].Trim();
					DataSet ds=df.DataBind(sql);
					txtTypeName.Value=ds.Tables[0].Rows[0]["ptypename"].ToString();
					txtOrderId.Value=ds.Tables[0].Rows[0]["orderid"].ToString();
					btnAdd.Text="Edit";
				}
			}
			catch(Exception ex)
			{
				Response.Write(ex.Message);
			}
		}

		protected void btnAdd_Click(object sender, System.EventArgs e)
		{
			string sql="";
			string message="";
			if(txtTypeName.Value.Trim()=="")
			{
				Response.Write("<script>alert('Category name cannot be null or empty!');</script>"); return ;
			}
			if(txtOrderId.Value.Trim()=="")
			{
				Response.Write("<script>alert('Order id cannot be null or empty!');</script>"); return ;
			}
			if(Request.QueryString["isedit"]==null)
			{
				sql="insert into [ptypeinfo] ([ptypename],[orderid]) values ('"+txtTypeName.Value.Trim()+"',"+txtOrderId.Value.Trim()+")";
				message="Added new category successfully！";
			}
			if(Request.QueryString["isedit"]!=null&&Request.QueryString["isedit"].Trim()=="1")
			{
				sql="update [ptypeinfo] set [ptypename]='"+txtTypeName.Value.Trim()+"',[orderid]="+txtOrderId.Value.Trim()+" where ptypeid="+Request.QueryString["tId"];
				message="Modified the category information successfully！";
			}
			if(df.DoEdit(sql)>0)
			{
				Response.Write("<script>alert('"+message+"');location.href='addAType.aspx';</script>");
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
	}
}
