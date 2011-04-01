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
    /// adminProducts 的摘要说明。
    /// </summary>
    public partial class adminProducts : System.Web.UI.Page
    {
        DataFactory df = new DataFactory();
        PagedDataSource pds = new PagedDataSource();
        static int currentIndex = 0;

        protected void Page_Load(object sender, System.EventArgs e)
        {
            // 在此处放置用户代码以初始化页面
            if (!IsPostBack)
            {
                GetProductList();
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
            this.viewProducts.ItemCreated += new System.Web.UI.WebControls.DataGridItemEventHandler(this.viewProducts_ItemCreated);
            this.viewProducts.DeleteCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.viewProducts_DeleteCommand);

        }
        #endregion

        public void GetProductList()
        {
            try
            {
                string sql = "select * from productinfo order by productid desc";
                DataSet ds = df.DataBind(sql);
                if (ds.Tables[0].Rows.Count == 0)
                {
                    panelNoInfo.Text = "No product!"; return;
                }
                pds.DataSource = ds.Tables[0].DefaultView;
                pds.AllowPaging = true;
                pds.PageSize = 10;

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
                    if (Request.Url.ToString().IndexOf("?") > 0)
                    {
                        btnFirst1.NavigateUrl = string.Format(Request.Url.ToString().Replace("page", "nothing") + "&page={0}", 1);
                        btnUp1.NavigateUrl = string.Format(Request.Url.ToString().Replace("page", "nothing") + "&page={0}", currentIndex - 1);
                    }
                    else
                    {
                        btnFirst1.NavigateUrl = string.Format(Request.Url.ToString() + "?page={0}", 1);
                        btnUp1.NavigateUrl = string.Format(Request.Url.ToString() + "?page={0}", currentIndex - 1);
                    }
                }
                if (!pds.IsLastPage)
                {
                    if (Request.Url.ToString().IndexOf("?") > 0)
                    {
                        btnDown1.NavigateUrl = string.Format(Request.Url.ToString().Replace("page", "nothing") + "&page={0}", currentIndex + 1);
                        btnLast1.NavigateUrl = string.Format(Request.Url.ToString().Replace("page", "nothing") + "&page={0}", pds.PageCount);
                    }
                    else
                    {
                        btnDown1.NavigateUrl = string.Format(Request.Url.ToString() + "?page={0}", currentIndex + 1);
                        btnLast1.NavigateUrl = string.Format(Request.Url.ToString() + "?page={0}", pds.PageCount);
                    }
                }
                this.yeci1.InnerHtml = currentIndex.ToString() + "/" + pds.PageCount.ToString();
                viewProducts.DataSource = pds;
                viewProducts.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void listPage1_SelectedIndexChanged(object sender, System.EventArgs e)
        {
            if (Request.Url.ToString().IndexOf("?") > 0)
            {
                Response.Redirect(Request.Url.ToString().Replace("page", "nothing") + "&page=" + listPage1.SelectedItem.ToString());
            }
            else
            {
                Response.Redirect(Request.Url.ToString() + "?page=" + listPage1.SelectedItem.ToString());
            }
        }

        public string GetImg(object obj)
        {
            string info = obj.ToString();
            return "<img src='../productPic/" + info + "' alt='' width='150' height='50'>";
        }

        public string GetLittleMinfo(object obj)
        {
            string info = obj.ToString();
            System.Text.RegularExpressions.Regex htmlRegex = new System.Text.RegularExpressions.Regex("<[^>]*>");
            string newInfo = htmlRegex.Replace(info, "");	//过滤掉html字符串
            if (newInfo.Length > 150)
            {
                newInfo = newInfo.Substring(0, 150) + "………………";
            }
            return newInfo;
        }

        public string GetHasPdf(object obj)
        {
            string pdf = obj.ToString();
            if (String.IsNullOrEmpty(pdf))
            {
                return "False";
            }
            return "True";
        }

        protected void btnDelete_Click(object sender, System.EventArgs e)
        {
            string sql = "delete from productinfo where productId in (99999999999999999";
            foreach (DataGridItem di in viewProducts.Items)
            {
                HtmlInputCheckBox cb = (HtmlInputCheckBox)di.FindControl("cbItem");
                if (cb.Checked == true)
                {
                    sql += "," + cb.Value.Trim();
                }
            }
            sql += ")";
            if (df.DoEdit(sql) > 0)
            {
                Response.Write("<script>alert('Deleted record successfully！');location.href='adminProducts.aspx';</script>");
            }
        }

        private void viewProducts_ItemCreated(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
        {
            if (-1 == e.Item.ItemIndex)
            {
                return;
            }
            e.Item.Attributes.Add("onmouseover", "this.style.backgroundColor='#F1EFEB';");
            e.Item.Attributes.Add("onmouseout", "this.style.backgroundColor='#d0ddff';");
        }

        private void viewProducts_DeleteCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
        {
            try
            {
                if (df.DoEdit("delete from [productinfo] where [productid]=" + e.CommandArgument.ToString()) > 0)
                {
                    Response.Write("<script>location.href='adminProducts.aspx';</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}
