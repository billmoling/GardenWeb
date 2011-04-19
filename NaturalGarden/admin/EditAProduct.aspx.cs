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
using WebEditor;
using CKEditor.NET;

namespace NewsProject.admin
{
	/// <summary>
	/// EditAProduct 的摘要说明。
	/// </summary>
	public partial class EditAProduct : System.Web.UI.Page
	{
		DataFactory df=new DataFactory();
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// 在此处放置用户代码以初始化页面
			if(!IsPostBack)
			{
				if(Request.QueryString["pId"]==null)
				{
					Response.Write("<script>alert('Invalid operate！');history.go(-1);</script>");return;
				}
				else
				{
					try{Convert.ToInt32(Request.QueryString["pId"].Trim());}
					catch
					{
                        Response.Write("<script>alert('Invalid parameters！');history.go(-1);</script>"); return;
					}					
					GetProType();
					GetAProduct();
				}
			}

            WebEditor.config.language = "en";
            WebEditor.config.enterMode = EnterMode.BR;
            WebEditor.config.toolbar = new object[]
			{
				new object[] { "Source"},
				new object[] { "Undo", "Redo", "-", "SelectAll", "RemoveFormat" },
                new object[] { "Styles", "Format", "Font", "FontSize" },
				new object[] { "TextColor", "BGColor" },
				new object[] { "Maximize", "ShowBlocks" },
				"/",
				new object[] { "Bold", "Italic", "Underline", "Strike", "-", "Subscript", "Superscript" },
				new object[] { "NumberedList", "BulletedList" },
				new object[] { "JustifyLeft", "JustifyCenter", "JustifyRight", "JustifyBlock" },

				new object[] { "Link", "Unlink", "Anchor" },
				new object[] { "Image", "Flash", "Table", "HorizontalRule", "Smiley", "SpecialChar", "PageBreak", "Iframe" },
				
			};
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
		private void GetProType()
		{
			try
			{
				DataSet ds=df.DataBind("select * from ptypeinfo");
				if(ds.Tables[0].Rows.Count!=0)
				{
					listType.DataSource=ds.Tables[0];
					listType.DataTextField="ptypename";
					listType.DataValueField="ptypeid";
					listType.DataBind();
				}
				else
				{
					listType.Items.Add(new ListItem("--Please add product category!--"));
				}
				if(Request.QueryString["pId"]!=null)
				{
					string ptId=df.getAData("select ptypeid from productinfo where productid="+Request.QueryString["pId"].Trim(),"ptypeid");
					foreach(ListItem l in listType.Items)
					{
						if(l.Value==ptId)
						{
							listType.SelectedValue=l.Value;
						}
					}
				}
			}
			catch(Exception ex)
			{
				Response.Write(ex.Message);
			}
		}	

		private void GetAProduct()
		{
			if(Request.QueryString["pId"]!=null)			
			{
				string sql="select * from productinfo where productid="+Request.QueryString["pId"].Trim();
				DataSet ds=df.DataBind(sql);
				if(ds.Tables[0].Rows.Count==0)
				{
					Response.Write("<script>alert('No data！');history.go(-1);</script>");return;
				}
				else
				{
					txtProductName.Value=ds.Tables[0].Rows[0]["productName"].ToString();
					if(Session["propic"]!=null)
					{
						Session["propic"]=ds.Tables[0].Rows[0]["pic"].ToString();
					}
					else
					{
						Session.Add("propic",ds.Tables[0].Rows[0]["pic"].ToString());
					}

                    if (Session["propdf"] != null)
                    {
                        Session["propdf"] = ds.Tables[0].Rows[0]["pdf"].ToString();
                    }
                    else
                    {
                        Session.Add("propdf", ds.Tables[0].Rows[0]["pdf"].ToString());
                    }


					//((editor)this.FindControl("WebEditor")).setValue(ds.Tables[0].Rows[0]["maininfo"].ToString());
                    
                    this.WebEditor.Text = ds.Tables[0].Rows[0]["maininfo"].ToString();
					txtLeftCount.Value=ds.Tables[0].Rows[0]["leftcount"].ToString();
					txtPrice.Value=ds.Tables[0].Rows[0]["price"].ToString();
                    this.cb_isNew.Checked = Boolean.Parse(ds.Tables[0].Rows[0]["isNew"].ToString());
                    this.cb_isPrivate.Checked = Boolean.Parse(ds.Tables[0].Rows[0]["isPrivate"].ToString());
                    this.cb_isPromotion.Checked = Boolean.Parse(ds.Tables[0].Rows[0]["isPromotion"].ToString());
                    this.txtCodeItem.Value = ds.Tables[0].Rows[0]["pinId"].ToString();
				}
			}
		}

		protected void btnSubmit_Click(object sender, System.EventArgs e)
		{
			if(txtProductName.Value.Trim()=="")
			{
				Response.Write("<script>alert('Please input product's name!');</script>");return ;
			}
			if(txtLeftCount.Value.Trim()=="")
			{
                Response.Write("<script>alert('Please input product's inventory!');</script>"); return;
			}
			if(txtPrice.Value.Trim()=="")
			{
				Response.Write("<script>alert('Please input product's price!');</script>");return ;
			}
            if (this.hidden_pic.Value.Equals("TRUE"))
            {
                if (Session["propic"] == null)
                {
                    Response.Write("<script>alert('Please upload product's image!');</script>"); return;
                }
            }
			string name=txtProductName.Value.Trim();
			string type=listType.SelectedValue;
			string pic=Session["propic"].ToString();
            string pdf = Session["propdf"].ToString();
			string price=txtPrice.Value.Trim();
			string leftcount=txtLeftCount.Value.Trim();
            string itemCode = txtCodeItem.Value.Trim();
			//string minfo = ((editor)this.FindControl("WebEditor")).getValue().Replace("'","\"");
            string minfo = this.WebEditor.Text.Replace("'", "\"");

            int isNew = 0;
            int isPromotion = 0;
            int isPrivate = 0;

            if ((bool)cb_isNew.Checked)
            {
                isNew = 1;
            }
            if ((bool)cb_isPromotion.Checked)
            {
                isPromotion = 1;
            }
            if ((bool)cb_isPrivate.Checked)
            {
                isPrivate = 1;
            }


			if(minfo.Trim()=="")
			{
				Response.Write("<script>alert('Please input product description!');</script>");return ;
			}
            string sql = "update [productinfo] set [ptypeid]=" + type + ",[pinId]=" + itemCode + ",[productName]='" + name + "',[pdf]='" + pdf + "',[mainInfo]='" + minfo + "',[pic]='" + pic + "',[leftcount]=" + leftcount + ",[price]='" + price + "',[isNew]=" + isNew + ",[isPromotion]=" + isPromotion + ",[isPrivate]=" + isPrivate + " where productid=" + Request.QueryString["pId"].Trim();
			if(df.DoEdit(sql)>0)
			{
				Response.Write("<script>alert('Edited product successfully!');location.href='adminProducts.aspx';</script>");return ;
			}		
		}
}
}
