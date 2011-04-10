<%@ Page language="c#" Inherits="NewsProject.admin.addAType" Codebehind="addAType.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
	<head>
		<title>Category Management</title>
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<link rel="stylesheet" href="css/RightStyleSheet.css" type="text/css" charset="utf-8" />
		<script type="text/javascript" src="JScript.js"></script>
		<style type="text/css">.STYLE1 { FONT-WEIGHT: bold; COLOR: #ff0000 }
	BODY { BACKGROUND-COLOR: #d0ddff }
	.STYLE3 { FONT-WEIGHT: bold; COLOR: #ffffff }
	.STYLE4 { COLOR: #ff0000 }
	.head { background-color:Gray; HEIGHT: 30px ;}
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
                Category Management</h2>
        </div>
        <div class="content_main">
			<div style="WIDTH: 100%; TEXT-ALIGN: center">
				<asp:datagrid id="viewType" Runat="server" Width="500px" AutoGenerateColumns="False" Font-Size="12px"
					HeaderStyle-CssClass="head" BorderWidth="1">
					<Columns>
						<asp:BoundColumn DataField="ptypename" HeaderText="Category Name" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="True"
							ItemStyle-Height="35px" ItemStyle-CssClass="leftcolumn" HeaderStyle-Font-Size="12px"></asp:BoundColumn>
						<asp:BoundColumn DataField="orderid" HeaderText="Order Id" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="True"
							ItemStyle-HorizontalAlign="Center" HeaderStyle-Font-Size="12px"></asp:BoundColumn>
						<asp:TemplateColumn HeaderText="Action" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Size="12px"
							HeaderStyle-Font-Bold="True" ItemStyle-HorizontalAlign="Center">
							<ItemTemplate>
								<asp:LinkButton runat="server" Text="Delete" CommandName="Delete" CommandArgument='<%#DataBinder.Eval(Container, "DataItem.ptypeid")%>' CausesValidation="false" CssClass="dlink">
								</asp:LinkButton>
								<a href='addAType.aspx?isedit=1&tId=<%#DataBinder.Eval(Container, "DataItem.ptypeid")%>' class="dlink">
									Edit</a>
							</ItemTemplate>
						</asp:TemplateColumn>
					</Columns>
				</asp:datagrid>
				<div class="pageButton" style="FONT-SIZE: 12px; MARGIN-BOTTOM: 0px; WIDTH: 100%; TEXT-ALIGN: center"><asp:hyperlink id="btnFirst1" runat="server" ToolTip="Home page">Home</asp:hyperlink>&nbsp;
					<asp:hyperlink id="btnUp1" runat="server" ToolTip="Pre page">Pre</asp:hyperlink>&nbsp;
					<asp:hyperlink id="btnDown1" runat="server" ToolTip="Next page">Next</asp:hyperlink>&nbsp;
					<asp:hyperlink id="btnLast1" runat="server" ToolTip="Last page">Last</asp:hyperlink>&nbsp; 
					Page£º<span id="yeci1" runat="server"></span>Page To:<asp:dropdownlist id="listPage1" runat="server" AutoPostBack="True" onselectedindexchanged="listPage1_SelectedIndexChanged"></asp:dropdownlist>Page
				</div>
			</div>
			<table cellSpacing="0" cellPadding="0" width="500px" align="center" border="0">
				<tr>
					<td>
						<div align="center">
							<table cellSpacing="0" borderColorDark="#e6e4c4" cellPadding="1" width="100%" align="center"
								borderColorLight="#6d8e4d" border="0">
								<tbody>
									<tr>
										<td vAlign="top" align="left" height="29">
											<div align="center"><FONT face="ËÎÌå"></FONT><FONT face="ËÎÌå"></FONT><FONT face="ËÎÌå"></FONT><br>
												<table cellSpacing="3" cellPadding="2" width="82%" border="0">
													<tr>
														<td align="right" style="background-color:gray;" colSpan="2" height="23">
															<div style="FONT-SIZE: 12px; font-weight:bold; color:#fff;" align="left">Add Product Category</div>
														</td>
													</tr>
													<tr>
														<td style="FONT-SIZE: 12px" align="right" bgColor="#dfe8ff" height="30">
															<div align="right">Name:</div>
														</td>
														<td bgColor="#ecf1ff" height="30"><input type="text" id="txtTypeName" runat="server" size="18" name="userid">
														</td>
													</tr>
													<tr>
														<td style="FONT-SIZE: 12px" align="right" width="24%" bgColor="#dfe8ff" height="30">
															<div align="right">Order Id:</div>
														</td>
														<td width="76%" bgColor="#ecf1ff" height="30"><input id="txtOrderId" runat="server" type="text" size="18" onkeyup="checkNan(this)">
														</td>
													</tr>
													<tr>
														<td bgColor="#dfe8ff" height="30">&nbsp;
															<div align="left"></div>
														</td>
														<td bgColor="#ecf1ff" height="30"><asp:button id="btnAdd" runat="server" Width="50px" Text="Add" onclick="btnAdd_Click"></asp:button>
															
															<input class="button" type="reset" value="Reset"  Width="50px" name="Submit2">
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
            </div>
		</form>
    </div>
</body>
</html>
