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
	/// uploadPic ��ժҪ˵����
	/// </summary>
	public partial class uploadPic : System.Web.UI.Page
	{
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// �ڴ˴������û������Գ�ʼ��ҳ��
			Panel1.Visible=true;
			Panel2.Visible=false;
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

		protected void btnUpload_Click(object sender, System.EventArgs e)
		{
			try
			{
				bool passed=false;
				if(upload.Value.Trim()=="")
				{
					Response.Write("<script>alert('��ѡ���ļ�!');</script>");return ;
				}
				if(upload.PostedFile.ContentLength<=0)
				{
					Response.Write("<script>alert('�ļ�������!');</script>");return ;
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
					Response.Write("<script>alert('�����ϴ�Jpg��Gif��Bmp���ָ�ʽ��ͼƬ!');</script>");return ;
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
