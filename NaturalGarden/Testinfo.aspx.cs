using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Testinfo : System.Web.UI.Page
{
    DataFactory df = new DataFactory();
    DataSet ds = new DataSet();
    public string typeStr = "<li><img alt='' src='images/qingting.gif' /><a href='Test.aspx?ptypeid=all'>" + "ALL" + "</a></li>";
    public string infoStr = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        string str = "";
        int flag = 0;
        try
        {
            str = Request.QueryString["id"].ToString().Trim();
        }
        catch
        {
            flag = 1;
        }

        if (0 == flag && str != "")
        {
            GetProductInfo(str);

            try
            {
                DataRow row = ds.Tables[0].Rows[0];
                Image1.ImageUrl = "productPic/" + row["pic"].ToString().Trim();
                Label_id.Text = row["pinId"].ToString().Trim();
                Label_name.Text = row["productName"].ToString().Trim();
                Label_price.Text = "$" + row["price"].ToString().Trim();
                infoStr = row["maininfo"].ToString().Trim();
                if (row["pdf"].ToString().Trim() != "")
                {
                    a_pdf.NavigateUrl = "productPdf/" + row["pdf"].ToString().Trim();
                }
            }
            catch
            { }
        }

        GetProductTypeInfo();
    }

    public void GetProductTypeInfo()
    {
        try
        {
            string sql = "select * from ptypeinfo order by orderId asc";
            DataSet ds2 = df.DataBind(sql);
            foreach (DataRow row in ds2.Tables[0].Rows)
            {
                typeStr += "<li><img alt='' src='images/qingting.gif' /><a href='Test.aspx?ptypeid=" + row["ptypeid"].ToString() + "'>" + row["ptypename"].ToString() + "</a></li>";
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }

    public void GetProductInfo(string str)
    {
        try
        {
            string sql = "select * from productinfo where productId=" + str;
            ds = df.DataBind(sql);
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}