<%@ Page Language="C#" AutoEventWireup="true" Inherits="Product"
    MasterPageFile="ProductPage.master" Codebehind="Product.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head_p" runat="server">
    <link href="Css/Left_p.css" rel="Stylesheet" type="text/css" />
    <link href="Css/Product.css" rel="Stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceMain" runat="server">
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

        <table>
            <tr>
            <td>
                <table>
                    <tr>
                        <td>
                            <img alt="" src="images/green.gif" />
                        </td>
                        <td>
                            <span class="title">Product Information</span>
                        </td>
                    </tr>
                </table>
                </td>
            </tr>
            <tr>
                <td><img alt="" src="images/line-1.png" /></td>
            </tr>
            <tr>
                <table>
                    <tr>
                        <td>
                            <asp:Image ID="Image1" runat="server" Height="210px" ImageUrl="~/productPic/20110223115322127001.jpg" Width="259px" />
                        </td>
                        <td width="20px"></td>
                        <td>
                            <table  class="t-left">
                                <tr>
                                    <td align="left">
                                        <asp:Label ID="Label1" runat="server" Text="Name:" CssClass="lb_title"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label_name" runat="server" Text="Name" ForeColor="Black" CssClass="lb_content"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left">
                                        <asp:Label ID="Label2" runat="server" Text="Item Code:" CssClass="lb_title"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label_id" runat="server" Text="Item Code" ForeColor="#000099" CssClass="lb_content"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left">
                                        <asp:Label ID="Label3" runat="server" Text="Price:" CssClass="lb_title"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label_price" runat="server" Text="Price" ForeColor="Red" CssClass="lb_content"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left">
                                        <asp:Label ID="Label5" runat="server" Text="PDF:" CssClass="lb_title"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:HyperLink ID="a_pdf" runat="server" CssClass="lb_content">Download</asp:HyperLink>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                        <table class="t-left" cellspacing="10px">
                            <tr>
                                <td align="left" >
                                    <asp:Label ID="Label6" runat="server" Text="Product Details:" CssClass="lb_title"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" width="650px">
                                    <%= infoStr %>
                                </td>
                            </tr>
                        </table>
                    </tr>
                </table>
            </tr>
        </table>

        </div>
    </div>
</asp:Content>
