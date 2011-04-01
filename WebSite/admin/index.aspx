<%@ Page language="c#" Inherits="NewsProject.admin.index" CodeFile="index.aspx.cs" ValidateRequest="false" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
	<head>
		<title>Natural Garden Backend Management System</title>
		 
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		 
        <link rel="stylesheet" href="css/AdminStyleSheet.css" type="text/css" charset="utf-8">
	</head>
	<body>
		<form id="Form1" method="post" runat="server">

        <div id="header">
        
        </div>
        <div id="middle">
            <div id="middle-left"> 
                <iframe id="leftframe" name="leftframe" src="left.aspx" 
                marginheight="0" marginwidth="0" frameborder="0" 
                scrolling="no" style="height: 532px; 
                width: 172px; z-index: 2; margin:0px;padding:0px;"></iframe>
            </div>
            <div id="middle-right">
                <iframe id="mainframe" height="100%" width="100%" frameborder="0" 
                scrolling="no" name="mainframe" src="welcome.aspx" 
                style="z-index:2;margin-left:0px;"></iframe>
            </div>
        </div>
        <div id="footer">
        </div>
<%--		<table width="100%" height="100%" id="Table1">
            <tr style="height:60px; background-image:url(../images/admin/header.jpg)">
                        <td colspan="2">
                            
                        </td>
                    </tr>
			<tr> 
				<td width="175" align="right" valign="top" bgcolor="#799AE1">
					<iframe name="leftframe" src="left.aspx" frameborder=yes width="100%" scrolling=auto style="HEIGHT: 100%; VISIBILITY: inherit; WIDTH: 175; Z-INDEX: 2"></iframe>
				</td>
				<td width="817" valign="top" bgcolor="#CAD7F7">
					<iframe height="100%" width="100%" scrolling="auto" name="mainframe" src="welcome.aspx" Z-INDEX: 2></iframe>
				</td>
			</tr>
		</table>	--%>	
        </form>
	</body>
</html>
