using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Product : System.Web.UI.Page
{
    DataFactory df = new DataFactory();
    DataSet ds=new DataSet();
    public string typeStr = "<li><img alt='' src='images/qingting.gif' /><a href='Products.aspx?ptypeid=all'>" + "ALL" + "</a></li>";
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
                if (String.IsNullOrEmpty(row["price"].ToString().Trim()) || row["price"].ToString().Trim().Equals("0"))
                {
                    Label3.Visible = false;
                    Label_price.Visible = false;
                }
                else
                {
                    Label_price.Text = row["price"].ToString().Trim();
                }


                if (String.IsNullOrEmpty(row["leftcount"].ToString().Trim()) || row["leftcount"].ToString().Trim().Equals("0"))
                {
                    Label_MOQTitle.Visible = false;
                    Label_MOQContent.Visible = false;
                }
                else
                {
                    Label_MOQContent.Text = row["leftcount"].ToString().Trim();
                }


                infoStr = row["maininfo"].ToString().Trim();
                if (String.IsNullOrEmpty(row["pdf"].ToString().Trim()))
                {
                    Label5.Visible = false;
                    a_pdf.Visible = false;
                }
                else
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
                typeStr += "<li><img alt='' src='images/qingting.gif' /><a href='Products.aspx?ptypeid=" + row["ptypeid"].ToString() + "'>" + row["ptypename"].ToString() + "</a></li>";
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
            string sql = "select * from productinfo where productId="+str;
            ds = df.DataBind(sql);
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}