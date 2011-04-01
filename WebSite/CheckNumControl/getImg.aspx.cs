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

namespace NewsProject.CheckNumControl
{
	/// <summary>
	/// getImg 的摘要说明。
	/// </summary>
	public partial class getImg : System.Web.UI.Page
	{
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// 在此处放置用户代码以初始化页面
			string bc = Request.QueryString["bgcolor"].ToString();//背景色
			string fc = Request.QueryString["forecolor"].ToString();//前景色
			this.GenImg(this.GenCode(4), bc, fc);        
			Session["image"] = this.GenCode(4);
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
		//生成随机数
		private string GenCode(int num)
		{
			string[] source = { "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m" ,"n","m","o","p","r","s","t","u","v","w","x","y","z"};
			string code = "";
			Random rd = new Random();
			for (int i = 0; i < num; i++)
			{
				code += source[rd.Next(0, source.Length)];
			}
			return code;
		}
		//生成验证码图片
		private void GenImg(string code, string bgColor, string foreColor)
		{
			Bitmap myPalette = new Bitmap(60, 20);
			Graphics gh = Graphics.FromImage(myPalette);
			Rectangle rc = new Rectangle(0, 0, 60, 20);
			gh.FillRectangle(new SolidBrush(Color.FromName(bgColor)), rc);

			gh.DrawString(code, new Font("宋体", 13), new SolidBrush(Color.FromName(foreColor)), rc);
			myPalette.Save(Response.OutputStream, System.Drawing.Imaging.ImageFormat.Jpeg);
			gh.Dispose();
			myPalette.Dispose();
		}
	}
}
