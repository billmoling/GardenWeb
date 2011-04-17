using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using Microsoft.Practices.EnterpriseLibrary.Logging;
using Microsoft.Practices.EnterpriseLibrary.Common.Configuration;
using System.IO;
using System.Web;

namespace NaturalGarden.Service
{
    public class ProductInfo
    {
        private string _id;
        private string _name;
        private string _mainInfo;
        private string _picURL;
        private string _pdfURL;
        private string _isPromotion;
        private string _isNew;
        private string _price;
        private LogWriter logwrite = EnterpriseLibraryContainer.Current.GetInstance<LogWriter>();

        public string MainInfo
        {
            get { return _mainInfo; }
            set { _mainInfo = value; }
        }
        

        public string PicURL
        {
            get { return _picURL; }
            set { _picURL = value; }
        }
        

        public string IsPromotion
        {
            get { return _isPromotion; }
            set { _isPromotion = value; }
        }

        

        public string IsNew
        {
            get { return _isNew; }
            set { _isNew = value; }
        }

        

        public string PdfURL
        {
            get { return _pdfURL; }
            set { _pdfURL = value; }
        }
        

        public string Price
        {
            get { return _price; }
            set { _price = value; }
        }




        public string Id
        {
            get { return _id; }
            set { _id = value; }
        }
        

        public string Name
        {
            get { return _name; }
            set { _name = value; }
        }

        public ProductInfo()
        { 
        }

        public ProductInfo(string id)
        {
            _id = id;
            DataFactory df = new DataFactory();
            DataSet ds = new DataSet();
            try
            {
                string sql = "select * from productinfo where productId=" + id;
                ds = df.DataBind(sql);
            }
            catch (Exception ex)
            {
                LogEntry entry = new LogEntry();
                entry.Severity = System.Diagnostics.TraceEventType.Error;
                entry.Message = string.Format("Exception:{0}, Inner Exception:{1}", ex.Message, ex.InnerException.Message);
                entry.Categories.Add(Category.Exception);
                entry.Priority = Priority.High;
                logwrite.Write(entry);
                throw;
            }


            DataRow row = ds.Tables[0].Rows[0];
            _name = row["productName"].ToString().Trim();
            _mainInfo = row["maininfo"].ToString().Trim();
            _picURL = HttpContext.Current.Request.Url.Host.ToString().TrimEnd('/') +"/productPic/" + row["pic"].ToString().Trim();
            _pdfURL =string.IsNullOrEmpty(row["pdf"].ToString().Trim())==true? "" : HttpContext.Current.Request.Url.Host.ToString().TrimEnd('/')+ "/productPdf/" + row["pdf"].ToString().Trim();
            _price = row["price"].ToString().Trim() == "0" ? "" : row["price"].ToString().Trim();
            _isNew = row["isNew"].ToString().Trim();
            _isPromotion = row["isPromotion"].ToString().Trim();
        }
    }
}
