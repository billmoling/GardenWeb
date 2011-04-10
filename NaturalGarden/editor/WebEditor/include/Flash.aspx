<%@ Page language="c#" Codebehind="Flash.aspx.cs" AutoEventWireup="false" Inherits="WebEditor.include.Flash" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Flash</title>
		 
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		 
		<LINK href="Editor.css" type="text/css" rel="stylesheet">
		<script language="javascript" type="text/javascript">
// <!CDATA[

function ReturnStr(){
var strFlash;
strFlash="<OBJECT codeBase=http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0 height=";
strFlash = strFlash + document.getElementById("FlashHeight").value+" width="+document.getElementById("FlashWidth").value
strFlash = strFlash + " classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000 twffan='done'>";
strFlash = strFlash + "<PARAM NAME='Movie' VALUE='"+document.getElementById("FlashUrl").value + "'>";
strFlash = strFlash + "<PARAM NAME='Src' VALUE='"+document.getElementById("flashurl").value + "'>";
strFlash = strFlash + "<PARAM NAME='WMode' VALUE='Window'><PARAM NAME='Play' VALUE='-1'>";
strFlash = strFlash + "<PARAM NAME='Loop' VALUE='-1'><PARAM NAME='Quality' VALUE='High'>";
strFlash = strFlash + "<PARAM NAME='Menu' VALUE='0'>";
strFlash = strFlash + "<PARAM NAME='Scale' VALUE='ShowAll'><PARAM NAME='DeviceFont' VALUE='0'>";
strFlash = strFlash + "<PARAM NAME='EmbedMovie' VALUE='0'><PARAM NAME='SeamlessTabbing' VALUE='1'>";
strFlash = strFlash + "<PARAM NAME='Profile' VALUE='0'>";
strFlash = strFlash + "<PARAM NAME='ProfilePort' VALUE='0'>";
strFlash = strFlash + "<PARAM NAME='AllowNetworking' VALUE='all'><PARAM NAME='AllowFullScreen' VALUE='false'></OBJECT>";
dialogArguments.insertHTML(strFlash);
window.close();
}

// ]]>
		</script>
	</HEAD>
	<body class="alertbgc">
		<form id="Form1" method="post" runat="server">
			<div>
				<div class="flash0">
					<fieldset><legend>动画属性</legend>
						<div>动画地址：<input class="alt_txt1" style="WIDTH: 320px" type="text" value="http://" name="FlashUrl"></div>
						<div>动画尺寸：宽度：<input class="alt_txt1" style="WIDTH: 30px" type="text" value="200" name="FlashWidth">
							高度：<input class="alt_txt1" style="WIDTH: 30px" type="text" value="100" name="FlashHeight">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input id="Button1" onclick="return ReturnStr()" type="button" value="确 定">
						</div>
					</fieldset>
				</div>
			</div>
		</form>
	</body>
</HTML>
