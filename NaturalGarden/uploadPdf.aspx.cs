using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class uploadPdf : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
    }

    protected void btnUpload_Click(object sender, System.EventArgs e)
    {
        try
        {
            bool passed = false;
            if (upload.Value.Trim() == "")
            {
                Response.Write("<script>alert('请选择文件!');</script>"); return;
            }
            if (upload.PostedFile.ContentLength <= 0)
            {
                Response.Write("<script>alert('文件不存在!');</script>"); return;
            }
            string extend = new FileInfo(upload.PostedFile.FileName).Extension.Trim();
            string[] extends = { ".pdf" };
            foreach (string s in extends)
            {
                if (s.ToUpper() == extend.ToUpper())
                {
                    passed = true;
                    break;
                }
            }
            if (passed == false)
            {
                Response.Write("<script>alert('仅限上传PDF格式的文件!');</script>"); return;
            }
            string fileName = DateTime.Now.ToString("yyyyMMddhhmmss") + Request.UserHostAddress.Replace(".", "") + extend;
            upload.PostedFile.SaveAs(Server.MapPath("productPdf/") + fileName);
            Panel1.Visible = false;
            Panel2.Visible = true;
            if (Session["propdf"] != null)
            {
                Session["propdf"] = fileName;
            }
            else
            {
                Session.Add("propdf", fileName);
            }
            Label1.Text = "<span style='color:red;'> PDF [" + fileName + "] uploads successfully! </span>";
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}