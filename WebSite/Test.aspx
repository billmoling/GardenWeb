<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" 
    MasterPageFile="ProductPage.master" %>

<asp:Content ContentPlaceHolderID="head_p" runat="server">
    <link href="Css/Left_p.css" rel="Stylesheet" type="text/css" />
    <link href="Css/MainProductAll.css" rel="Stylesheet" type="text/css" />
</asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceMain" runat="server">
    <div id="middle-left">
        <div id="slide">
            <div class="title">
                <table>
                    <tr>
                        <td>
                            <img alt="" src="images/book.gif" />
                        </td>
                        <td>
                            <span>Product Category</span>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="line">
                <img alt="" src="images/line-1.png" />
            </div>
            <div class="link">
                <ul>
                    <%= typeStr %>
                </ul>
            </div>
        </div>
    </div>
    <div id="middle-main">
        <div id="main">
            <div class="top-main">
                <div class="title-main">
                    <table>
                        <tr>
                            <td>
                                <img alt="" src="images/green.gif" />
                            </td>
                            <td>
                                <span>Products</span>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="line-main">
                    <img alt="" src="images/line-1.png" />
                </div>
                <div class="link-main">
                    <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal"
                        BorderWidth="0px" CellPadding="0" ShowFooter="False" ShowHeader="False" Font-Bold="False"
                        Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False"
                        HorizontalAlign="Center">
                        <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                            Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemTemplate>
                            <a href="Testinfo.aspx?id=<%# Eval("productId") %>">
                                <table>
                                    <tr>
                                        <td>
                                            <img alt="" src='productPic/<%# Eval("pic") %>' />
                                        </td>
                                    </tr>
                                    </tr>
                                    <td height="20px" align="center">
                                        <%# Eval("productName") %>
                                    </td>
                                    </tr>
                                </table>
                            </a>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
                <div class="pageButton">
                    <asp:HyperLink ID="btnFirst1" runat="server">FristPage</asp:HyperLink>
                    &nbsp;
                    <asp:HyperLink ID="btnUp1" runat="server">Pre</asp:HyperLink>
                    &nbsp;
                    <asp:HyperLink ID="btnDown1" runat="server">Next</asp:HyperLink>
                    &nbsp;
                    <asp:HyperLink ID="btnLast1" runat="server">LastPage</asp:HyperLink>
                    &nbsp; Page:<span id="yeci1" runat="server"></span> To:<asp:DropDownList ID="listPage1"
                        runat="server" AutoPostBack="True" OnSelectedIndexChanged="listPage1_SelectedIndexChanged">
                    </asp:DropDownList>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

