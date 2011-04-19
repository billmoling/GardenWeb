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
    /// addAProduct 的摘要说明。
    /// </summary>
    public partial class addAProduct : System.Web.UI.Page
    {
        DataFactory df = new DataFactory();
        protected void Page_Load(object sender, System.EventArgs e)
        {
            // 在此处放置用户代码以初始化页面
            if (!IsPostBack)
            {
                GetProType();
            }

            //if (Session["propic"] == null)
            //{
            //    this.ifr_uploadPic.Visible = false;
            //}
            //else
            //{
            //    this.ifr_uploadPic.Visible = true;
            //}


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
                DataSet ds = df.DataBind("select * from ptypeinfo");
                if (ds.Tables[0].Rows.Count != 0)
                {
                    listType.DataSource = ds.Tables[0];
                    listType.DataTextField = "ptypename";
                    listType.DataValueField = "ptypeid";
                    listType.DataBind();
                }
                else
                {
                    listType.Items.Add(new ListItem("--Please add product category--"));
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
        protected void btnSubmit_Click(object sender, System.EventArgs e)
        {
            string sql = "";
            try
            {
                if (txtProductName.Value.Trim() == "")
                {
                    Response.Write("<script>alert('Please input product name!');</script>"); return;
                }

                if (Session["propic"] == null)
                {
                    Response.Write("<script>alert('Please upload product image!');</script>"); return;
                }

                //if (Session["propdf"] == null)
                //{
                //    Response.Write("<script>alert('Please upload product PDF file!');</script>"); return;
                //}
                string name = txtProductName.Value.Trim();
                string type = listType.SelectedValue;
                string pic = Session["propic"].ToString();
                string pdf = Session["propdf"] == null ? "" : Session["propdf"].ToString();
                string price = "0";
                string leftcount = "0";
                string codeItem = String.Empty;
                int isPromotion = 0;
                int isNew = 0;
                int isPrivate = 0;
                if (txtCodeItem.Value.Trim() != "")
                {
                    codeItem = txtCodeItem.Value.Trim();
                }

                if (txtPrice.Value.Trim() != "")
                {
                    price = txtPrice.Value.Trim();
                }
                if (txtLeftCount.Value.Trim() != "")
                {
                    leftcount = txtLeftCount.Value.Trim();
                }
                //string minfo = ((editor)this.FindControl("WebEditor")).getValue().Replace("'", "\"");
                string minfo = this.WebEditor.Text.Replace("'", "\"");
                if (minfo.Trim() == "")
                {
                    Response.Write("<script>alert('Please input product's description!');</script>"); return;
                }
                if ((bool)this.cb_isPromotion.Checked)
                {
                    isPromotion = 1;
                }
                if ((bool)this.cb_isNew.Checked)
                {
                    isNew = 1;
                }
                if ((bool)this.cb_isPrivate.Checked)
                {
                    isPrivate = 1;
                }
                sql = "insert into [productinfo] ([ptypeid],[productName],[mainInfo],[pic],[leftCount],[price],[isPromotion],[isNew],[pdf],[isPrivate],[pinId]) values (" + type + ",'" + name + "','" + minfo + "','" + pic + "'," + leftcount + ",'" + price + "','" + isPromotion + "','" + isNew + "','" + pdf + "','" + isPrivate + "','" + codeItem + "')";
                if (df.DoEdit(sql) > 0)
                {
                    Response.Write("<script>alert('Add product successfully!');location.href='adminProducts.aspx';</script>"); return;
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}
