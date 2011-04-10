<%@ Page Language="C#" AutoEventWireup="true" Inherits="admin_login" Codebehind="login.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Natural Garden Backend Management System</title>
    <style type="text/css">
        body{
            background-image: url("../images/admin/home.jpg");
            background-color:#00285C;
            background-position: center top;
            background-repeat: no-repeat;
            margin-left: auto;
            margin-right: auto;
            font-family:verdana, Arial, 微软雅黑;
        } 
        
        table td 
        {
            color:#fff;
        }
    </style>
    <script type="text/javascript">
		<!--
        function check1() {
            var str = "'";
            var name = document.getElementById("txtUserName").value;
            var pwd = document.getElementById("txtPwd").value;
            //var yzma=document.getElementById("txtYzcode").value;
            //alert(name+"***"+"***"+pwd+"***"+yzma);

            if (name == "" || name.indexOf(str) > -1) {
                alert("Login failed, please check you account and password.");
                document.getElementById("txtUserName").focus();
                return false;
            }
            if (pwd == "" || pwd.indexOf(str) > -1) {
                alert("Login failed, please check you account and password.");
                document.getElementById("txtPwd").focus();
                return false;
            }
        }
        -->
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <table width="523px" align="center" cellpadding="2" cellspacing="0" style="margin-top:270px;">
				<tr>
                    
					<td align="right" width="300px;">
						Account: 
					</td>
                    <td>
                        <input type="text" name="txtUserName" style="width:160px" id="txtUserName"/>
                    </td>
				</tr>
				<tr>
					<td align="right">
                        Password:
					</td>
                    <td>
                        <input type="password" name="password" style="width:160px" id="txtPwd"/>
                    </td>
				</tr>
				<!--
				<tr>
					<td bgcolor="#f1f3f5" style="padding-left:100px;">
						<div align="left">验证码: <input name="yzcode" type="text" id="txtYzcode" size="10" class="login">
							<img id="picYz" src="../CheckNumControl/getImg.aspx?bgcolor=DeepSkyBlue&forecolor=white" alt=""> <a href="javascript:changeNum();">看不清,换一个</a>
						</div>
					</td>
				</tr>
				-->
				<tr>
                    <td></td>
					<td>
						<div align="left">
                            <asp:Button ID="btnLogin" runat="server" Text="Login" style="WIDTH:60px;HEIGHT:28px" OnClientClick="return check1();" OnClick="btnLogin_Click"/>
							<input type="reset" name="close2" value="Reset" style="WIDTH:60px;HEIGHT:28px">
						</div>
					</td>
				</tr>
			</table>
    </form>
</body>
</html>
