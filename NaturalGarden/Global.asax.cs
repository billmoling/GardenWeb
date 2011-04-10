using System;
using System.Collections;
using System.ComponentModel;
using System.Web;
using System.Web.SessionState;
using Microsoft.Practices.EnterpriseLibrary.Logging;
using Microsoft.Practices.EnterpriseLibrary.Common.Configuration;

namespace NewsProject 
{
	/// <summary>
	/// Global ��ժҪ˵����
	/// </summary>
	public class Global : System.Web.HttpApplication
	{

		/// <summary>
		/// ����������������
		/// </summary>
		private System.ComponentModel.IContainer components = null;
        private LogWriter logwrite = EnterpriseLibraryContainer.Current.GetInstance<LogWriter>();

		public Global()
		{
			InitializeComponent();
		}	
		
		protected void Application_Start(Object sender, EventArgs e)
		{

		}
 
		protected void Session_Start(Object sender, EventArgs e)
		{

		}

		protected void Application_BeginRequest(Object sender, EventArgs e)
		{

		}

		protected void Application_EndRequest(Object sender, EventArgs e)
		{

		}

		protected void Application_AuthenticateRequest(Object sender, EventArgs e)
		{

		}

		protected void Application_Error(Object sender, EventArgs e)
		{

		}

		protected void Session_End(Object sender, EventArgs e)
		{

		}

		protected void Application_End(Object sender, EventArgs e)
		{
            HttpUnhandledException unhandleException = this.Server.GetLastError() as HttpUnhandledException;
            logwrite.Write(
                string.Format("Exception:{0}, Inner Exception:{1}", unhandleException.Message, unhandleException.InnerException.Message),
                Category.Exception,
                Priority.High
                );
            Response.Redirect("Home.aspx");
            Server.ClearError();
            Response.End();

		}
			
		#region Web ������������ɵĴ���
		/// <summary>
		/// �����֧������ķ��� - ��Ҫʹ�ô���༭���޸�
		/// �˷��������ݡ�
		/// </summary>
		private void InitializeComponent()
		{    
			this.components = new System.ComponentModel.Container();
		}
		#endregion
	}
}

