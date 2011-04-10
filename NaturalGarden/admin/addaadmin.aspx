<%@ Page Language="c#" Inherits="NewsProject.admin.addAadmin" Codebehind="addAadmin.aspx.cs" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
<head>
    <title>addAadmin</title>
     
    <meta name="CODE_LANGUAGE" content="C#"/>
    <meta name="vs_defaultClientScript" content="JavaScript"/>
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5"/>
    <script type="text/javascript" src="JScript.js"></script>
    <link rel="stylesheet" href="css/RightStyleSheet.css" type="text/css" charset="utf-8" />
    <style type="text/css">
        .STYLE1
        {
            font-weight: bold;
            color: #ff0000;
        }
        
        .STYLE3
        {
            font-weight: bold;
            color: #ffffff;
        }
        .STYLE4
        {
            color: #ff0000;
        }
        .STYLE5
        {
            color: #ffffff;
        }
        .head
        {
            background-color:Gray;
            height: 30px;
        }
        A.dlink:link
        {
            color: dimgray;
            text-decoration: none;
        }
        A.dlink:visited
        {
            color: dimgray;
            text-decoration: none;
        }
        A.dlink:hover
        {
            color: orange;
            text-decoration: underline;
        }
        .leftcolumn
        {
            padding-left: 50px;
        }
    </style>
</head>
<body class="body_style">
    <div class="rightbody_bg">
    <form id="Form1" method="post" runat="server">
        <div class="content_title">
            <h2>
                Administrator Management</h2>
        </div>
    <div style="width: 100%; text-align: center">
        <asp:DataGrid ID="viewType" runat="server" Width="500px" AutoGenerateColumns="False"
            Font-Size="12px" HeaderStyle-CssClass="head" BorderWidth="1">
            <Columns>
                <asp:BoundColumn DataField="username" HeaderText="User Name" HeaderStyle-HorizontalAlign="Center"
                    HeaderStyle-Font-Bold="True" ItemStyle-Height="35px" ItemStyle-CssClass="leftcolumn"
                    HeaderStyle-Font-Size="12px" ItemStyle-HorizontalAlign="left"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="Action" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Size="12px"
                    HeaderStyle-Font-Bold="True" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:LinkButton runat="server" Text="Delete" CommandName="Delete" CommandArgument='<%#DataBinder.Eval(Container, "DataItem.manageid")%>'
                            CausesValidation="false" CssClass="dlink" ID="Linkbutton1" NAME="Linkbutton1">
                        </asp:LinkButton>
                        <a href='editaadmin.aspx?aId=<%#DataBinder.Eval(Container, "DataItem.manageid")%>'
                            class="dlink">Edit</a>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
        </asp:DataGrid>
				<div class="pageButton" style="FONT-SIZE: 12px; MARGIN-BOTTOM: 0px; WIDTH: 100%; TEXT-ALIGN: center"><asp:hyperlink id="btnFirst1" runat="server" ToolTip="Home page">Home</asp:hyperlink>&nbsp;
					<asp:hyperlink id="btnUp1" runat="server" ToolTip="Pre page">Pre</asp:hyperlink>&nbsp;
					<asp:hyperlink id="btnDown1" runat="server" ToolTip="Next page">Next</asp:hyperlink>&nbsp;
					<asp:hyperlink id="btnLast1" runat="server" ToolTip="Last page">Last</asp:hyperlink>&nbsp; 
					Page£º<span id="yeci1" runat="server"></span>Page To:<asp:dropdownlist id="listPage1" runat="server" AutoPostBack="True" onselectedindexchanged="listPage1_SelectedIndexChanged"></asp:dropdownlist>Page
				</div>
    </div>
    <table cellspacing="0" cellpadding="0" width="500" align="center" border="0">
        <tr>
            <td width="100%">
                <div align="center" style="width: 100%">
                    <table cellspacing="0" bordercolordark="#e6e4c4" cellpadding="1" width="100%" align="center"
                        bordercolorlight="#6d8e4d" border="0">
                        <tbody>
                            <tr>
                                <td valign="top" align="left" height="29" width="100%">
                                    <div align="center" style="width: 100%">
                                        <font face="ËÎÌå"></font>
                                        <br>
                                        <table cellspacing="3" cellpadding="2" width="100%" border="0">
                                            <tr>
                                                <td align="right" style="background-color:Gray;" colspan="2" height="23" width="100%">
                                                    <div class="STYLE5" style="font-size: 12px" align="left">
                                                        Add administrator</div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="font-size: 12px" align="right" bgcolor="#dfe8ff" height="30">
                                                    <div align="right">
                                                        Account:</div>
                                                </td>
                                                <td bgcolor="#ecf1ff" height="30">
                                                    <input type="text" id="txtTypeName" runat="server" size="20" name="userid">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="font-size: 12px" align="right" width="24%" bgcolor="#dfe8ff" height="30">
                                                    <div align="right">
                                                        Password:</div>
                                                </td>
                                                <td width="76%" bgcolor="#ecf1ff" height="30">
                                                    <input id="txtOrderId" runat="server" type="password" size="20">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td bgcolor="#dfe8ff" height="30">
                                                    &nbsp;
                                                    <div align="left">
                                                    </div>
                                                </td>
                                                <td bgcolor="#ecf1ff" height="30">
                                                    <asp:Button ID="btnAdd" runat="server" Text="Add" Width="50px" OnClick="btnAdd_Click"></asp:Button>
                                                    <input class="button" type="reset" value="Reset" Width="50px" name="Submit2">
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </td>
        </tr>
    </table>
    </form>
    </div>
</body>
</html>
