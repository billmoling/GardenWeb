<%@ Page language="c#" Inherits="NewsProject.uploadPic" Codebehind="uploadPic.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>uploadPic</title>
		 
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		 
	</HEAD>
	<body style="BACKGROUND-COLOR:#f7f7f7;">
		<form id="Form1" method="post" runat="server">
			<asp:Panel id="Panel1" runat="server" Width="500px">
				<INPUT id="upload" type="file" size="1" name="upload" runat="server" style="width:200px;">
				<asp:Button id="btnUpload" Text="Update" Runat="server" Font-Size="12px" 
                        onclick="btnUpload_Click"></asp:Button>
			</asp:Panel>
			<asp:Panel id="Panel2" runat="server">
				<asp:Label id="Label1" runat="server"></asp:Label>
			</asp:Panel>
		</form>
	</body>
</HTML>
