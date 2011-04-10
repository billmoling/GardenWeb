using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class MainHome : System.Web.UI.Page
{
    public string newStr = "";
    public string promotionStr = "";
    DataFactory df = new DataFactory();

    protected void Page_Load(object sender, EventArgs e)
    {
        newStr = GetProducts("isNew=1 and isPrivate=0");
        promotionStr = GetProducts("isPromotion=1 and isPrivate=0");
    }

    public string GetProducts(string info)
    {
        string str = "<table><tr>";

        try
        {
            string sql = "select * from productinfo where " + info;
            DataSet ds = df.DataBind(sql);
            foreach (DataRow row in ds.Tables[0].Rows)
            {
                str += "<td><a href='MainProductInfo?productId=" + row["productId"].ToString().Trim() + "&back=home' target='main-iframe'>";
                str+="<table><tr><td>";
                str+="<img alt='' src='productPic/"+row["pic"].ToString().Trim()+"' />";
                str+="</td></tr><tr><td align='center'>";
                str+="<span>"+row["productName"].ToString().Trim()+"</span>";
                str+="</td></tr></table>";
                str+="</a></td>";
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

        return str+"</tr></table>";
    }
}