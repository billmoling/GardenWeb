using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Microsoft.Practices.EnterpriseLibrary.Logging;
using Microsoft.Practices.EnterpriseLibrary.Common.Configuration;

public partial class SideBarUpdate : System.Web.UI.Page
{
    private LogWriter logwrite = EnterpriseLibraryContainer.Current.GetInstance<LogWriter>();
    
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
        try
        {
            using (StreamWriter sw = new StreamWriter(Server.MapPath("../SideBar/SideBar.htm"), false, System.Text.Encoding.Unicode))
            {
                sw.Write(Txt_SourceCode.Text);
            }
            logwrite.Write(
                "User Update SideBar Success.",
                Category.General,
                Priority.Low
                );
        }
        catch (Exception ex)
        {

            LogEntry entry=new LogEntry ();
            entry.Severity=System.Diagnostics.TraceEventType.Error;
            entry.Message=string.Format("Exception:{0}, Inner Exception:{1}", ex.Message, ex.InnerException.Message);
            entry.Categories.Add(Category.General);
            entry.Priority=Priority.High;
            logwrite.Write(entry);
            throw;
        }

        
    }
}