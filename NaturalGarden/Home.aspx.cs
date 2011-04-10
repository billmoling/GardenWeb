using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Home : System.Web.UI.Page
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
        string str = "<table style='width:688px;'><tr>";

        try
        {
            string sql = "select * from productinfo where " + info;
            DataSet ds = df.DataBind(sql);
            foreach (DataRow row in ds.Tables[0].Rows)
            {
                str += "<td><a href='Product.aspx?id=" + row["productId"].ToString().Trim() + "'>";
                str += "<table><tr><td>";
                str += "<img alt='' src='productPic/" + row["pic"].ToString().Trim() + "' />";
                str += "</td></tr><tr><td align='center'>";
                str += "<div>" + row["productName"].ToString().Trim() + "</div>";
                str += "</td></tr></table>";
                str += "</a></td>";
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

        return str + "</tr></table>";
    }
}