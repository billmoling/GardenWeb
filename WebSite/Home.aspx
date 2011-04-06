<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home"
    MasterPageFile="HomePage.master" %>

<asp:Content ContentPlaceHolderID="head_main" runat="server">
    <link href="Css/MainHome.css" rel="Stylesheet" type="text/css" />
</asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceMain" runat="server">
    <div id="main">
        <div class="top-main">
            <div class="title-main">
                <table style="float:left;">
                    <tr>
                        <td>
                            <img alt="" src="images/green.gif" />
                        </td>
                        <td>
                            <a href="new.aspx" class="a_title">What's <b><i>New</i></b></a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="line-main">
                <img alt="" src="images/line-1.png" />
            </div>
            <div class="link-main" id="demo" style="overflow: hidden; width: 688px;">
                <table border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td valign="top" id="demo1">
                            <%-- <marquee scrollamount="3" onmouseover="this.stop();" onmouseout="this.start();"><%= newStr %></marquee>--%>
                            <%= newStr %>
                        </td>
                        <td id="demo2">
                        </td>
                    </tr>
                </table>
            </div>
            <script language="javascript" type="text/javascript">
                var speed = 20//速度数值越大速度越慢
                var demo2 = document.getElementById("demo2");
                var demo = document.getElementById("demo");
                var demo1 = document.getElementById("demo1");
                demo2.innerHTML = demo1.innerHTML
                function Marquee() {
                    if (demo2.offsetWidth - demo.scrollLeft <= 0)
                        demo.scrollLeft -= demo1.offsetWidth
                    else {
                        demo.scrollLeft++
                    }
                }
                var MyMar = setInterval(Marquee, speed)
                demo.onmouseover = function () { clearInterval(MyMar) }
                demo.onmouseout = function () { MyMar = setInterval(Marquee, speed) }
            </script>
        </div>
        <div class="bottom-main">
            <div class="title-main">
                <table style="float:left;">
                    <tr>
                        <td>
                            <img alt="" src="images/green.gif" />
                        </td>
                        <td>
                            <a href="Promotion.aspx" class="a_title">Sales Promotion</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="line-main">
                <img src="images/line-1.png" />
            </div>
            <div class="link-main" id="promotion" style="overflow: hidden; width: 688px;">
                <table border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td valign="top" id="promotion1">
                            <%= promotionStr%>
                        </td>
                        <td id="promotion2">
                        </td>
                    </tr>
                </table>
            </div>
        </div>
                    <script language="javascript" type="text/javascript">
                        var speed2 = 20//速度数值越大速度越慢
                        var promotion2 = document.getElementById("promotion2");
                        var promotion = document.getElementById("promotion");
                        var promotion1 = document.getElementById("promotion1");
                        promotion2.innerHTML = promotion1.innerHTML
                        function Marquee2() {
                            if (promotion2.offsetWidth - promotion.scrollLeft <= 0)
                                promotion.scrollLeft -= promotion1.offsetWidth
                            else {
                                promotion.scrollLeft++
                            }
                        }
                        var MyMar2 = setInterval(Marquee2, speed2)
                        promotion.onmouseover = function () { clearInterval(MyMar2) }
                        promotion.onmouseout = function () { MyMar2 = setInterval(Marquee2, speed2) }
            </script>
    </div>
</asp:Content>
