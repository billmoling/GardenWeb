<%@ Page language="c#" Inherits="NewsProject.admin.EditAadmin" CodeFile="EditAadmin.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
	<head>
		<title>EditAadmin</title>
		
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<link rel="stylesheet" href="css/RightStyleSheet.css" type="text/css" charset="utf-8" />
		<script type="text/javascript" src="JScript.js"></script>
		<style type="text/css">.STYLE1 { FONT-WEIGHT: bold; COLOR: #ff0000 }
	BODY { BACKGROUND-COLOR: #d0ddff }
	.STYLE3 { FONT-WEIGHT: bold; COLOR: #ffffff }
	.STYLE4 { COLOR: #ff0000 }
	.STYLE5 { COLOR: #ffffff }
	.head { BACKGROUND-IMAGE: url(../images/admin_bg_1.gif); COLOR: white; HEIGHT: 30px }
	A.dlink:link { COLOR: dimgray; TEXT-DECORATION: none }
	A.dlink:visited { COLOR: dimgray; TEXT-DECORATION: none }
	A.dlink:hover { COLOR: orange; TEXT-DECORATION: underline }
	.leftcolumn { PADDING-LEFT: 50px }
		</style>
	</head>
<body class="body_style">
    <div class="rightbody_bg">
		<form id="Form1" method="post" runat="server">
                    <div class="content_title">
            <h2>
                Edit Administrator</h2>
        </div>
			<table cellSpacing="0" cellPadding="0" width="500" align="center" border="0">
				<tr>
					<td width="100%">
						<div align="center" style="WIDTH:100%">
							<table cellSpacing="0" borderColorDark="#e6e4c4" cellPadding="1" width="100%" align="center"
								borderColorLight="#6d8e4d" border="0">
								<tbody>
									<tr>
										<td vAlign="top" align="left" height="29" width="100%">
											<div align="center" style="WIDTH:100%"><FONT face="ËÎÌו"></FONT><FONT face="ËÎÌו"></FONT><br>
												<table cellSpacing="3" cellPadding="2" width="100%" border="0">
													<tr>
														<td align="right" style="background-color:Gray; font-weight:bold;" colSpan="2" height="23" width="100%">
															<div class="STYLE5" style="FONT-SIZE: 12px" align="left">Edit Administrator Information</div>
														</td>
													</tr>
													<tr>
														<td style="FONT-SIZE: 12px" align="right" bgColor="#dfe8ff" height="30">
															<div align="right">Account:</div>
														</td>
														<td bgColor="#ecf1ff" height="30"><input type="text" id="txtTypeName" runat="server" size="18" name="userid">
														</td>
													</tr>
													<tr>
														<td style="FONT-SIZE: 12px" align="right" width="24%" bgColor="#dfe8ff" height="30">
															<div align="right">Original Password:</div>
														</td>
														<td bgColor="#ecf1ff" height="30"><input id="txtOldPwd" runat="server" type="password" size="18" NAME="txtOrderId">
														</td>
													</tr>
													<tr>
														<td style="FONT-SIZE: 12px" align="right" width="24%" bgColor="#dfe8ff" height="30">
															<div align="right">New Password:</div>
														</td>
														<td bgColor="#ecf1ff" height="30"><input id="txtNewPwd" runat="server" type="password" size="18" NAME="txtOrderId">
														</td>
													</tr>
													<tr>
														<td style="FONT-SIZE: 12px" align="right" width="24%" bgColor="#dfe8ff" height="30">
															<div align="right">Confirm Password:</div>
														</td>
														<td bgColor="#ecf1ff" height="30"><input id="txtSurePwd" runat="server" type="password" size="18" NAME="txtOrderId">
														</td>
													</tr>
													<tr>
														<td bgColor="#dfe8ff" height="30">&nbsp;
															<div align="right"></div>
														</td>
														<td bgColor="#ecf1ff" height="30"><asp:button id="btnAdd" runat="server" Width="50px" Text="Edit" onclick="btnAdd_Click"></asp:button>
										
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
