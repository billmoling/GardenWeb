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
using System.IO;

namespace NewsProject
{
	/// <summary>
	/// uploadPic 的摘要说明。
	/// </summary>
	public partial class uploadPic : System.Web.UI.Page
	{
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// 在此处放置用户代码以初始化页面
			Panel1.Visible=true;
			Panel2.Visible=false;
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

		protected void btnUpload_Click(object sender, System.EventArgs e)
		{
			try
			{
				bool passed=false;
				if(upload.Value.Trim()=="")
				{
					Response.Write("<script>alert('请选择文件!');</script>");return ;
				}
				if(upload.PostedFile.ContentLength<=0)
				{
					Response.Write("<script>alert('文件不存在!');</script>");return ;
				}
				string extend=new FileInfo(upload.PostedFile.FileName).Extension.Trim();
				string[] extends={".jpg",".gif","bmp"};
				foreach(string s in extends)
				{
					if(s.ToUpper()==extend.ToUpper())
					{
						passed=true;
						break;
					}
				}
				if(passed==false)
				{
					Response.Write("<script>alert('仅限上传Jpg、Gif、Bmp三种格式的图片!');</script>");return ;
				}
				string fileName=DateTime.Now.ToString("yyyyMMddhhmmss")+Request.UserHostAddress.Replace(".","")+extend;
				upload.PostedFile.SaveAs(Server.MapPath("productPic/")+fileName);
				Panel1.Visible=false;
				Panel2.Visible=true;
				if(Session["propic"]!=null)
				{
					Session["propic"]=fileName;
				}
				else
				{
					Session.Add("propic",fileName);
				}
                Label1.Text = "<span style='color:red;'> Image [" + fileName + "] uploads successfully! </span>";
			}
			catch(Exception ex)
			{
				Response.Write(ex.Message);
			}
		}
	}
}
