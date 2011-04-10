using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            using (TextReader tr = new StreamReader(Server.MapPath("SideBar/ContactSideBar.htm")))
            {
                string htmlCode = tr.ReadToEnd();
                Literal htmlLiteral = new Literal();
                htmlLiteral.Text = htmlCode;
                LeftBar.Controls.Add(htmlLiteral);
            }

            using (TextReader tr = new StreamReader(Server.MapPath("SideBar/ContactMain.htm")))
            {
                string htmlCode = tr.ReadToEnd();
                Literal htmlLiteral = new Literal();
                htmlLiteral.Text = htmlCode;
                ContactMain.Controls.Add(htmlLiteral);
            }


        }
    }
}