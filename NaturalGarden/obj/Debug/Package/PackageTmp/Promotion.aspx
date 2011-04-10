<%@ Page Language="C#" AutoEventWireup="true" Inherits="Promotion" MasterPageFile="HomePage.master" Codebehind="Promotion.aspx.cs" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head_main" runat="server">
    <link href="Css/MainProductAll.css" rel="Stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceMain" runat="server">
<div id="main">
        <div class="top-main">
            <div class="title-main">
                <table style="float:left;">
                    <tr>
                        <td>
                            <img alt="" src="images/green.gif" />
                        </td>
                        <td>
                            <span>Sales Promotion</span>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="line-main">
                <img alt="" src="images/line-1.png" />
            </div>
            
            <div class="link-main">
                <asp:DataList ID="DataList1" runat="server" 
                    RepeatColumns="4" RepeatDirection="Horizontal" BorderWidth="0px" 
                    CellPadding="0" ShowFooter="False" ShowHeader="False" Font-Bold="False" 
                    Font-Italic="False" Font-Overline="False" Font-Strikeout="False" 
                    Font-Underline="False" HorizontalAlign="Center">
                    <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" 
                        Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <ItemTemplate>
                    <a href="Product.aspx?id=<%# Eval("productId") %>">
                        <table>
                            <tr>
                                <td>
                                    <img alt="" src='productPic/<%# Eval("pic") %>'/>
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
                <asp:SqlDataSource ID="isNew" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:NaturalGardenConnectionString %>" 
                    
                    
                    SelectCommand="SELECT * FROM [productinfo] WHERE (([isPromotion] = @isPromotion) AND ([isPrivate] = @isPrivate))">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="true" Name="isPromotion" Type="Boolean" />
                        <asp:Parameter DefaultValue="false" Name="isPrivate" Type="Boolean" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>

            <div class="pageButton">
                    <asp:HyperLink ID="btnFirst1" runat="server" >FristPage</asp:HyperLink>
                    &nbsp;
                    <asp:HyperLink ID="btnUp1" runat="server" >Pre</asp:HyperLink>
                    &nbsp;
                    <asp:HyperLink ID="btnDown1" runat="server" >Next</asp:HyperLink>
                    &nbsp;
                    <asp:HyperLink ID="btnLast1" runat="server" >LastPage</asp:HyperLink>
                    &nbsp; Page:<span id="yeci1" runat="server"></span> To:<asp:DropDownList 
                        ID="listPage1" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="listPage1_SelectedIndexChanged">
                    </asp:DropDownList>
                </div>
        </div>
    </div>
</asp:Content>
