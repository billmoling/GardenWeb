<%@ Page language="c#" Codebehind="selcolor.aspx.cs" AutoEventWireup="false" Inherits="WebEditor.include.selcolor" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>颜色选取</title>
		 
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		 
		<link rel="stylesheet" href="Editor.css" type="text/css">
		<STYLE type="text/css"> TD {FONT-SIZE: 10.8pt}
	BODY {FONT-SIZE: 10.8pt}
	BUTTON {WIDTH: 5em}
		</STYLE>
		<SCRIPT language="JavaScript">
				var sTitle = "";
				var color = "#333333";
				var oSelection;
				var oControl;
				var sRangeType;
				
				if (!color) color = "#000000";
				function N2Color(s_Color)
				{
					s_Color = s_Color.toString(16);
					switch (s_Color.length) 
					{
						case 1:s_Color = "0" + s_Color + "0000"; break;
						case 2:s_Color = s_Color + "0000";break;
						case 3:s_Color = s_Color.substring(1,3) + "0" + s_Color.substring(0,1) + "00" ;break;
						case 4:s_Color = s_Color.substring(2,4) + s_Color.substring(0,2) + "00" ;break;
						case 5:s_Color = s_Color.substring(3,5) + s_Color.substring(1,3) + "0" + s_Color.substring(0,1) ;break;
						case 6:s_Color = s_Color.substring(4,6) + s_Color.substring(2,4) + s_Color.substring(0,2) ;break;
						default:s_Color = "";
					}
					return '#' + s_Color;
				}
				
				/*
				* 函数说明：取出对象，等于document.getElementById()
				* 参数：	 对象名，参数可以多个，用逗号隔开
				* 返回值：	对象
				* 时间：2006-6-27
				*/
				function $() 
				{
					var elements = new Array();  
					for (var i = 0; i < arguments.length; i++) {
						var element = arguments[i];
						if (typeof element == 'string')
						element = document.getElementById(element);

						if (arguments.length == 1) 
						return element; 
						elements.push(element);
					}
					return elements;
				}
				
				function InitDocument()
				{
					$("ShowColor").bgColor = color;
					RGB.innerHTML = color;
					$("SelColor").value = color;
				}
				var SelRGB = color;
				var DrRGB = '';
				var SelGRAY = '120';
				var hexch = new Array('0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F');
				function ToHex(n) 
				{
					var h, l;
					n = Math.round(n);
					l = n % 16;
					h = Math.floor((n / 16)) % 16;
					return (hexch[h] + hexch[l]);
				}
				function DoColor(c, l)
				{
					var r, g, b;
					r = '0x' + c.substring(1, 3);
					g = '0x' + c.substring(3, 5);
					b = '0x' + c.substring(5, 7);
					if(l > 120)
					{
						l = l - 120;
						r = (r * (120 - l) + 255 * l) / 120;
						g = (g * (120 - l) + 255 * l) / 120;
						b = (b * (120 - l) + 255 * l) / 120;
					}
					else
					{
						r = (r * l) / 120;
						g = (g * l) / 120;
						b = (b * l) / 120;
					}
					$("c_r").value=ToHex(r);
					$("c_g").value=ToHex(g);
					$("c_b").value=ToHex(b);
					return '#' + ToHex(r) + ToHex(g) + ToHex(b);
				}
				function EndColor()
				{
					var i;
					if(DrRGB != SelRGB)
					{
						DrRGB = SelRGB;
						for(i = 0; i <= 30; i ++)
						{
							GrayTable.rows(i).bgColor = DoColor(SelRGB, 240 - i * 8);
						}
					}
					$("SelColor").value = DoColor(RGB.innerText, GRAY.innerText);
					$("ShowColor").style.backgroundColor = $("SelColor").value;
				}
		</SCRIPT>
		<SCRIPT event="onclick" for="ColorTable" language="JavaScript">
				SelRGB = event.srcElement.bgColor;
				EndColor();
		</SCRIPT>
		<SCRIPT event="onmouseover" for="ColorTable" language="JavaScript">
				RGB.innerText = event.srcElement.bgColor;
				EndColor();
		</SCRIPT>
		<SCRIPT event="onmouseout" for="ColorTable" language="JavaScript">
				RGB.innerText = SelRGB;
				EndColor();
		</SCRIPT>
		<SCRIPT event="onclick" for="GrayTable" language="JavaScript">
				SelGRAY = event.srcElement.title;
				EndColor();
		</SCRIPT>
		<SCRIPT event="onmouseover" for="GrayTable" language="JavaScript">
				GRAY.innerText = event.srcElement.title;
				EndColor();
		</SCRIPT>
		<SCRIPT event="onmouseout" for="GrayTable" language="JavaScript">
				GRAY.innerText = SelGRAY;
				EndColor();
		</SCRIPT>
		<%=strJscript%>
	</HEAD>
	<body class="alertbgc" onload="InitDocument()">
		<form id="Form1" method="post" runat="server">
			<div class="alertbgc">
				<div align="center">
					<table border="0" cellpadding="6" cellspacing="0" width="408" style="CURSOR: hand" height="98">
						<tr>
							<td width="183" valign="top">
								<div align="center">
									<table border="0" cellpadding="0" width="198" id="table2" height="130" style="BORDER-RIGHT:#c0c0c0 1px solid; PADDING-RIGHT:0px; BORDER-TOP:#000000 1px solid; PADDING-LEFT:0px; PADDING-BOTTOM:0px; BORDER-LEFT:#000000 1px solid; BORDER-BOTTOM:#c0c0c0 1px solid"
										cellspacing="0" bgcolor="#ffffff">
										<tr>
											<td valign="top"><!--  -->
												<div align="center">
													<table border="0" cellpadding="0" cellspacing="0" id="ColorTable">
														<SCRIPT language="JavaScript">
														function wc(r, g, b, n)
														{
															r = ((r * 16 + r) * 3 * (15 - n) + 0x80 * n) / 15;
															g = ((g * 16 + g) * 3 * (15 - n) + 0x80 * n) / 15;
															b = ((b * 16 + b) * 3 * (15 - n) + 0x80 * n) / 15;
															document.write('<TD BGCOLOR=#' + ToHex(r) + ToHex(g) + ToHex(b) + ' height=8 width=8></TD>');
														}
														var cnum = new Array(1, 0, 0, 1, 1, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 1, 0, 0);
														for(i = 0; i < 16; i ++)
														{
															document.write('<TR>');
															for(j = 0; j < 30; j ++)
															{
																n1 = j % 5;
																n2 = Math.floor(j / 5) * 3;
																n3 = n2 + 3;
																wc((cnum[n3] * n1 + cnum[n2] * (5 - n1)),(cnum[n3 + 1] * n1 + cnum[n2 + 1] * (5 - n1)),(cnum[n3 + 2] * n1 + cnum[n2 + 2] * (5 - n1)), i);
															}
															document.writeln('</TR>');
														}
														</SCRIPT>
													</table>
												</div> <!--  --></td>
										</tr>
									</table>
								</div>
							</td>
							<td width="42" valign="middle">
								<div align="center">
									<table border="0" cellpadding="0" cellspacing="0" width="26" id="GrayTable" style="BORDER-RIGHT: #ffffff 1px solid; BORDER-TOP: #808080 1px solid; BORDER-LEFT: #808080 1px solid; CURSOR: hand; BORDER-BOTTOM: #ffffff 1px solid"
										bgcolor="#ffffff"> <!--==-->
										<SCRIPT language="JavaScript">
										for(i = 255; i >= 0; i -= 8.5)
											document.write('<TR BGCOLOR=#' + ToHex(i) + ToHex(i) + ToHex(i) + '><TD TITLE=' + Math.floor(i * 16 / 17) + ' height=4 width=20></TD></TR>');
										</SCRIPT> <!--==-->
									</table>
								</div>
							</td>
							<td valign="top">
								<div align="left">
									<table border="0" cellpadding="0" cellspacing="0" width="110" id="table5" height="127"
										style="FONT-SIZE: 9pt; LINE-HEIGHT: 150%; FONT-FAMILY: 宋体">
										<tr>
											<td width="46">
												<div style="BORDER-RIGHT: #000000 3px double; PADDING-RIGHT: 4px; BORDER-TOP: #000000 3px double; PADDING-LEFT: 4px; Z-INDEX: 1; LEFT: 0px; PADDING-BOTTOM: 1px; BORDER-LEFT: #000000 3px double; WIDTH: 40px; PADDING-TOP: 1px; BORDER-BOTTOM: #000000 3px double; POSITION: relative; TOP: 0px; HEIGHT: 40px; BACKGROUND-COLOR: #000000"
													id="ShowColor">
												</div>
											</td>
											<td width="55" valign="top"><input type="button" value="确定" id="Ok" class="dhk_anniu" onclick="dialogArguments.sel_color=SelColor.value"></td>
										</tr>
										<tr>
											<td height="74" style="FONT-SIZE: 9pt; LINE-HEIGHT: 150%; FONT-FAMILY: 宋体" width="110"
												colspan="2">
												<p align="left">代 码：<font color="#ff0000"></font><input id="SelColor" type="text" name="T6" size="6" class="dhk_txtk" readonly>
													<font color="#ff0000">
														<br>
														红 色：</font><input type="text" name="c_r" id="c_r" size="6" class="dhk_txtk" value="00" readonly>
													<font color="#008000">
														<br>
														绿 色：</font><input type="text" name="c_g" id="c_g" size="6" class="dhk_txtk" value="00" readonly>
													<font color="#0000ff">
														<br>
														蓝 色：</font><input type="text" name="c_b" id="c_b" size="6" class="dhk_txtk" value="00" readonly></p>
											</td>
										</tr>
									</table>
								</div>
							</td>
						</tr>
					</table>
				</div>
				<div style="DISPLAY:none"><SPAN id="RGB"></SPAN><SPAN id='GRAY'>120</SPAN></div>
			</div>
		</form>
	</body>
</HTML>
