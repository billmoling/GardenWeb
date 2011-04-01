using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class admin_welcome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string uId = Page.User.Identity.Name.ToString();
            string name = new DataFactory().getAData("select [username] from [managerinfo] where [manageId]=" + uId, "username");
            this.lb_account.Text = name;
            this.lb_serverTime.Text = DateTime.Now.ToLocalTime().ToString();
        }
    }
}
