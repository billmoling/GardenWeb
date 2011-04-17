<%@ Page Language="C#" AutoEventWireup="true" Inherits="Contact"
    MasterPageFile="ProductPage.master" Codebehind="Contact.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head_p" runat="server">
    <link href="Css/Left_c.css" rel="Stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceMain" runat="server">
    <div id="middle-left">
        <div class="title">
            <table>
                <tr>
                    <td>
                        <img alt="" src="images/book.gif" />
                    </td>
                    <td>
                        <span>Contacts</span>
                    </td>
                </tr>
            </table>
        </div>
        <div class="line">
            <img alt="" src="images/line-1.png" />
        </div>
        <div id="left-bottom">
            <asp:PlaceHolder ID="LeftBar" runat="server"></asp:PlaceHolder> 
        </div>
    </div>
    <div id="middle-main">
        <div class="title">
            <table>
                <tr>
                    <td>
                        <img alt="" src="images/green.gif" />
                    </td>
                    <td>
                        <span>Company Introduction</span>
                    </td>
                </tr>
            </table>
        </div>
        <div class="line">
            <img alt="" src="images/line-1.png" style="float:left;" />
        </div>
        <div id="main">
            <asp:PlaceHolder ID="ContactMain" runat="server"></asp:PlaceHolder>
        </div>
    </div>
</asp:Content>
