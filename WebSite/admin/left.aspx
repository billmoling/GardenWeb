

<%@ Page Language="c#" Inherits="NewsProject.admin.left" CodeFile="left.aspx.cs" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
<head>
    <title>Natural Garden--Backend Management</title>
     
    <meta content="C#" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
     
    <link rel="stylesheet" href="css/LeftStyleSheet.css" type="text/css" charset="utf-8">
    <script language="javascript" type="text/javascript">
        if (document.getElementById) { //DynamicDrive.com change
            document.write('<style type="text/css">\n')
            document.write('.submenu{display: none;}\n')
            document.write('</style>\n')
        }

        function SwitchMenu(obj) {
            if (document.getElementById) {
                var el = document.getElementById(obj);
                var ar = document.getElementById("masterdiv").getElementsByTagName("span"); //DynamicDrive.com change
                if (el.style.display != "block") { //DynamicDrive.com change
                    for (var i = 0; i < ar.length; i++) {
                        if (ar[i].className == "submenu") //DynamicDrive.com change
                            ar[i].style.display = "none";
                    }
                    el.style.display = "block";
                } else {
                    el.style.display = "none";
                }
            }
        }

        function killErrors() {
            return true;
        }
        window.onerror = killErrors;
    </script>
    <script language="JScript">

<!--
        function mOvr(src, clrOver) { if (!src.contains(event.fromElement)) { src.style.cursor = 'hand'; src.bgColor = clrOver; } }
        function mOut(src, clrIn) { if (!src.contains(event.toElement)) { src.style.cursor = 'default'; src.bgColor = clrIn; } }
        //---->

        function turnit(ss, ii, aa) {

            if (ss.style.display == "none") {
                ss.style.display = "";
                aa.style.display = "";
                ii.src = "images/plusoff.gif";
            }

            else {
                ss.style.display = "none";
                aa.style.display = "none";
                ii.src = "images/plus.gif";
            }
        }

        function urll(url) {
            totalx = screen.availWidth;
            totaly = screen.availHeight;
            x = totalx / 2 - 600 / 2;
            y = totaly / 2 - 420 / 2;
            window.open(url, "", "toolbar=0,location=0,status=1,menubar=0,scrollbars=1,resizable=1,height=420,width=600,top=" + y + ",left=" + x + "");
        }
        function urll2(url) {
            totalx = screen.availWidth;
            totaly = screen.availHeight;
            x = totalx / 2 - 700 / 2;
            y = totaly / 2 - 420 / 2;
            window.open(url, "", "toolbar=0,location=0,status=1,menubar=0,scrollbars=1,resizable=0,height=420,width=700,top=" + y + ",left=" + x + "");
        }
    </script>
</head>
<body>
    <div id="masterdiv">
        <form id="Form1" method="post" runat="server">
        <table width="100%">
            <tr>
                <td valign="middle" align="center">
                    <div id="summary">
                        <p class="title">
                            Wellcome:<span id="showLoginer" runat="server">Fill Login Name</span>
                        </p>
                        <p class="info">
                            <img src="../images/admin/btn_refresh.gif" />
                            <a href="loginout.aspx" target="_top">Logout</a>
                            <img src="../images/admin/btn_logout.gif" />
                            <a href="../home.aspx" target="_blank">Home</a>
                        </p>
                    </div>
                    <div id="nav_list">
                        <div id="nav_menu">
                            <div class="menutitle" onclick="SwitchMenu('sub1')">
                            </div>
                            <span class="submenu" id="sub1"></span>
                            <table cellspacing="0" cellpadding="0" width="157" border="0">
                                <tr>
                                    <td height="2">
                                    </td>
                                </tr>
                            </table>
                            <div class="menutitle" onclick="SwitchMenu('sub2')">
                                <table height="28" cellspacing="0" cellpadding="0" width="157" border="0">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <div class="sub_bg">
                                                Products
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <span class="submenu" id="sub2">
                                <table cellspacing="0" cellpadding="0" width="157" border="0">
                                    <tr>
                                        <td width="20%" style="height: 30px">
                                            <img height="10" src="../images/admin/bullet.jpg" width="9">
                                        </td>
                                        <td style="width: 80%; height: 30px">
                                            <a href="addAProduct.aspx" target="mainframe">Add Product</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="20%">
                                            <img height="10" src="../images/admin/bullet.jpg" width="9">
                                        </td>
                                        <td height="25" style="width: 80%">
                                            <a href="adminProducts.aspx" target="mainframe">Manage Products</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="20%">
                                            <img height="10" src="../images/admin/bullet.jpg" width="9">
                                        </td>
                                        <td height="25" style="width: 80%">
                                            <a href="addaType.aspx" target="mainframe">Manage Category</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="20%">
                                            <img height="10" src="../images/admin/bullet.jpg" width="9">
                                        </td>
                                        <td height="25" style="width: 80%">
                                            <a href="SideBarUpdate.aspx" target="mainframe">
                                            Manage SideBar</a>
                                        </td>
                                    </tr>
                                </table>
                            </span>
                            <table cellspacing="0" cellpadding="0" width="157" border="0">
                                <tr>
                                    <td background="img/menu_1.gif" height="2">
                                    </td>
                                </tr>
                            </table>
                            <div class="menutitle" onclick="SwitchMenu('sub21')">
                                <table height="28" cellspacing="0" cellpadding="0" width="157" border="0">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <div class="sub_bg">
                                                Admin
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <span class="submenu" id="sub21">
                                <table cellspacing="0" cellpadding="0" width="157" background="img/menu_2.gif" border="0">
                                    <tr>
                                        <td width="20%">
                                            <img height="10" src="../images/admin/bullet.jpg" width="9">
                                        </td>
                                        <td width="80%" height="25">
                                            <a href="addAadmin.aspx" target="mainframe">Admin information</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="20%">
                                            <img height="10" src="../images/admin/bullet.jpg" width="9">
                                        </td>
                                        <td width="80%" height="25">
                                            <asp:HyperLink ID="HyperLink1" runat="server" Target="mainframe">Reset Password</asp:HyperLink>
                                        </td>
                                    </tr>
                                </table>
                            </span>
                            <table cellspacing="0" cellpadding="0" width="157" border="0">
                                <tr>
                                    <td background="img/menu_1.gif" height="2">
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div id="left_bottom">
                            <img src="../images/admin/poweredby.gif" alt="Powered by ilazysoft" />
                        </div>
                    </div>
                </td>
            </tr>
        </table>
        </form>
    </div>
</body>
</html>
