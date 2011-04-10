using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Promotion : System.Web.UI.Page
{
    DataFactory df = new DataFactory();
    //分页工具
    PagedDataSource pds = new PagedDataSource();
    static int currentIndex = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetProductList();
        }
    }

    private void GetProductList()
    {
        DataSourceSelectArguments arg = new DataSourceSelectArguments();
        pds.DataSource = (DataView)isNew.Select(arg);
        pds.AllowPaging = true;
        pds.PageSize = 12;

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

        DataList1.DataSource = pds;
        DataList1.DataBind();
    }

    protected void listPage1_SelectedIndexChanged(object sender, System.EventArgs e)
    {
        if (Request.Url.ToString().IndexOf("?") > 0)
        {
            Response.Redirect(Request.Url.ToString().Replace("page", "nothing") + "&page=" + (listPage1.SelectedItem).ToString());
        }
        else
        {
            Response.Redirect(Request.Url.ToString() + "?page=" + (listPage1.SelectedItem).ToString());
        }
    }
}