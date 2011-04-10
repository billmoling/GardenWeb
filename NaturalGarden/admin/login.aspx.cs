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

public partial class admin_login : System.Web.UI.Page
{
    DataFactory df = new DataFactory();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try 
        {
            string name = Request.Form["txtUserName"].Trim();
            string pwd = Request.Form["password"].Trim();
            string sql = "select [password] from [managerinfo] where [username]='" + name + "'";
            if (df.getAData(sql, "password").Trim() != pwd)
            {
                Response.Write("<script>alert('The username or password you entered is incorrect.');history.go(-1);</script>"); return;
            }
            string uId = df.getAData("select [manageId] from [managerinfo] where [username]='" + name + "' and [password]='" + pwd + "'", "manageId");
            Session["loginUser"] = uId;
            FormsAuthentication.RedirectFromLoginPage(uId, false);
        }
        catch(Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}
