using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class SideBarUpdate : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            
            using (TextReader tr = new StreamReader(Server.MapPath("../SideBar/SideBar.htm")))
            {
                string htmlCode = tr.ReadToEnd();
                Txt_SourceCode.Text = htmlCode;
            }
        }


    }
    protected void Btn_Update_Click(object sender, EventArgs e)
    {
        using (StreamWriter sw = new StreamWriter(Server.MapPath("../SideBar/SideBar.htm"), false, System.Text.Encoding.Unicode))
        {
            sw.Write(Txt_SourceCode.Text);
        }
    }
}