<%@ Page Language="C#" AutoEventWireup="true" Inherits="MainHome" Codebehind="MainHome.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Css/MainHome.css" rel="Stylesheet" type="text/css" />
</head>
<body>
    <div id="main">
        <div class="top-main">
            <div class="title-main">
                <table>
                    <tr>
                        <td>
                            <img alt="" src="images/green.gif" />
                        </td>
                        <td>
                            <a>ALL NEW</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="line-main">
                <img alt="" src="images/line-1.png" />
            </div>
            <div class="link-main">
                <marquee scrollamount="3" onmouseover="this.stop();" onmouseout="this.start();"><%= newStr %></marquee>
            </div>
        </div>
        <div class="bottom-main">
            <div class="title-main">
                <table>
                    <tr>
                        <td>
                            <img alt="" src="images/green.gif" />
                        </td>
                        <td>
                            <a>PROMOTION</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="line-main">
                <img src="images/line-1.png" />
            </div>
            <div class="link-main">
                <marquee scrollamount="3" onmouseover="this.stop();" onmouseout="this.start();"><%= promotionStr %></marquee>
            </div>
        </div>
    </div>
</body>
</html>
