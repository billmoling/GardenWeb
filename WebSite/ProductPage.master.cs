using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ProductPage : System.Web.UI.MasterPage
{
    

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Products.aspx?key=" + this.txt_key.Value);
    }
}
