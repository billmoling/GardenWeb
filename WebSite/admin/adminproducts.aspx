<%@ Page Language="c#" Inherits="NewsProject.admin.adminProducts" CodeFile="adminProducts.aspx.cs" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
<head>
    <title>Products Management</title>
    <meta name="CODE_LANGUAGE" content="C#">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link rel="stylesheet" href="css/RightStyleSheet.css" type="text/css" charset="utf-8" />
    <script type="text/javascript" src="JScript.js"></script>
    <style type="text/css">
        .STYLE1
        {
            font-weight: bold;
            color: #ff0000;
        }
        BODY
        {
            background-color: #d0ddff;
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
           /* background-image: url(../images/admin_bg_1.gif);*/
           background-color:Gray;
            color: white;
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
        #viewProducts
        {
            margin-left: 5px;
            margin-right:5px;
        }
    </style>
</head>
<body class="body_style">
    <div class="rightbody_bg">
        <form id="Form1" method="post" runat="server">
        <div class="content_title">
            <h2>
                Products Management</h2>
        </div>
        <div class="content_main">
            <table cellspacing="0" cellpadding="0" width="100%" border="0">
                <tr>
                    <td style="text-align: center">
                        <asp:Label ID="panelNoInfo" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <asp:Panel ID="Panel" runat="server" Width="836px">
                <asp:DataGrid ID="viewProducts" runat="server" AutoGenerateColumns="False"
                Font-Size="12px" BorderWidth="1px" AllowPaging="True" PageSize="7" 
                Height="300px" Width="836px">
                <HeaderStyle CssClass="head"></HeaderStyle>
                <Columns>
                    <asp:BoundColumn DataField="pinId" HeaderText="Item Code" HeaderStyle-Width="80px"
                        ItemStyle-Width="80px">
                        <HeaderStyle Font-Size="12px" Font-Bold="True" HorizontalAlign="Center" 
                            Font-Italic="False" Font-Overline="False" Font-Strikeout="False" 
                            Font-Underline="False" Width="70px"></HeaderStyle>
                        <ItemStyle Height="35px" Font-Bold="False" 
                            Font-Italic="False" Font-Overline="False" Font-Strikeout="False" 
                            Font-Underline="False" HorizontalAlign="center"></ItemStyle>
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="productName" HeaderText="Name" HeaderStyle-Width="120px">
                        <HeaderStyle Font-Size="12px" Font-Bold="True" HorizontalAlign="Center" 
                            Width="80px"></HeaderStyle>
                        <ItemStyle HorizontalAlign="Left" Font-Bold="False" Font-Italic="False" 
                            Font-Overline="False" Font-Strikeout="False" Font-Underline="False"></ItemStyle>
                    </asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="Has PDF?" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="100px"
                        ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%#GetHasPdf(DataBinder.Eval(Container, "DataItem.pdf"))%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <HeaderStyle Font-Size="12px" HorizontalAlign="Center" Width="100px" Font-Bold="True"></HeaderStyle>
                        <ItemStyle HorizontalAlign="Left" Font-Bold="False" Font-Italic="False" 
                            Font-Overline="False" Font-Strikeout="False" Font-Underline="False"></ItemStyle>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="Image" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="160px">
                        <ItemTemplate>
                            <%#GetImg(DataBinder.Eval(Container, "DataItem.pic"))%>
                        </ItemTemplate>
                        <HeaderStyle Font-Size="12px" HorizontalAlign="Center" Width="160px" Font-Bold="True"></HeaderStyle>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="Description" HeaderStyle-HorizontalAlign="Center"
                        HeaderStyle-Width="220px">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Width="220px" Height="53" ToolTip='<%#GetLittleMinfo(DataBinder.Eval(Container, "DataItem.mainInfo"))%>' style="overflow:hidden;" Text='<%#GetLittleMinfo(DataBinder.Eval(Container, "DataItem.mainInfo"))%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <HeaderStyle Font-Size="12px" Font-Bold="True" HorizontalAlign="Center" Width="220px"></HeaderStyle>
                        <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" 
                            Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" />
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="Action" HeaderStyle-Width="90px">
                        <HeaderStyle Font-Size="12px" Font-Bold="True" HorizontalAlign="Center"></HeaderStyle>
                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        <ItemTemplate>
                            <a href='EditAProduct.aspx?&pId=<%#DataBinder.Eval(Container, "DataItem.productId")%>'
                                class="dlink">Edit</a>
                            <asp:LinkButton runat="server" Text="Delete" CommandName="Delete" CommandArgument='<%#DataBinder.Eval(Container, "DataItem.productId")%>'
                                CausesValidation="false" CssClass="dlink" ID="Linkbutton1">
                            </asp:LinkButton>
                            <input type="checkbox" id="cbItem" runat="server" value='<%#DataBinder.Eval(Container, "DataItem.productId")%>'>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                </Columns>
                <PagerStyle Visible="False" />
            </asp:DataGrid>
            </asp:Panel>
            
            <div class="pageButton" style="font-size: 12px; margin-bottom: 0px; width: 100%;
                text-align: left; padding-top:20px;padding-left:10px;">
                <asp:HyperLink ID="btnFirst1" CssClass="dlink" runat="server" ToolTip="Home">Home</asp:HyperLink>&nbsp;
                <asp:HyperLink ID="btnUp1" runat="server" ToolTip="Pre" CssClass="dlink">Pre</asp:HyperLink>&nbsp;
                <asp:HyperLink ID="btnDown1" runat="server" ToolTip="Next" CssClass="dlink">Next</asp:HyperLink>&nbsp;
                <asp:HyperLink ID="btnLast1" runat="server" ToolTip="Last" CssClass="dlink">Last</asp:HyperLink>&nbsp;&nbsp;&nbsp;
                Page£º<span id="yeci1" runat="server"></span>Page&nbsp;&nbsp;&nbsp; To£º<asp:DropDownList
                    ID="listPage1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="listPage1_SelectedIndexChanged">
                </asp:DropDownList>
                Page&nbsp;
                <asp:Button ID="btnDelete" runat="server" Text="Batch Delete" Height="22px" OnClick="btnDelete_Click">
                </asp:Button>
            </div>
        </div>
        </form>
    </div>
</body>
</html>
