<%@ Page Language="C#" AutoEventWireup="true" CodeFile="welcome.aspx.cs" Inherits="admin_welcome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
<link rel="stylesheet" href="css/RightStyleSheet.css" type="text/css" charset="utf-8"/>
</head>
<body class="body_style">
<div class="rightbody_bg">
        <div class="content_title">
            <h2>Account Information</h2>
        </div>
        <div class="content_main">
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%; height:100px; margin-top:120px;">
                <tr>
                    <td rowspan="4" width="30%" align="right"><asp:Image ID="image" runat="server" width="90px" height="100px" style="padding-right:25px;"
                            ImageUrl="~/images/admin/admin.gif" /></td>
                </tr>
                <tr>
                    <td align="left" width="160px">Current account : </td>
                    <td align="left"><asp:label runat="server" id="lb_account" class="color_red"></asp:label></td>
                </tr>
                <tr>
                    <td align="left">Server&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Time : </td>
                    <td align="left"><asp:label runat="server" id="lb_serverTime" class="color_red"></asp:label></td>
                </tr>
                <tr>
                    <td align="left" colspan="2">Welcome To Management Center!</td>
                </tr>
            </table>
        </div>
</div>
</body>

</html>
