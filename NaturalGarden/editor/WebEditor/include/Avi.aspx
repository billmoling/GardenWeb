<%@ Page language="c#" Codebehind="Avi.aspx.cs" AutoEventWireup="false" Inherits="WebEditor.include.Avi" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Avi</title>
		 
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		 
		<link rel="stylesheet" href="Editor.css" type="text/css">
		<script language="javascript" type="text/javascript">
// <!CDATA[

function Button1_onclick() {
var flashhtml;
flashhtml="<object classid='clsid:6BF52A52-394A-11D3-B153-00C04F79FAA6' width='"+document.getElementById("flashk").value+"' height='"+document.getElementById("flashg").value+"' >";
flashhtml=flashhtml+"<param name='URL' value='"+document.getElementById("flashurl").value+"'>";
flashhtml=flashhtml+"<param name='rate' value='1'><param name='balance' value='0'><param name='currentPosition' value='0'>";
flashhtml=flashhtml+"<param name='defaultFrame' value><param name='playCount' value='1'>";
flashhtml=flashhtml+"<param name='autoStart' value='-1'><param name='currentMarker' value='0'>";
flashhtml=flashhtml+"<param name='invokeURLs' value='-1'><param name='baseURL' value><param name='volume' value='100'>";
flashhtml=flashhtml+"<param name='mute' value='0'><param name='uiMode' value='full'><param name='stretchToFit' value='0'>";
flashhtml=flashhtml+"<param name='windowlessVideo' value='0'><param name='enabled' value='-1'><param name='enableContextMenu' value='-1'>";
flashhtml=flashhtml+"<param name='fullScreen' value='0'><param name='SAMIStyle' value><param name='SAMILang' value>";
flashhtml=flashhtml+"<param name='SAMIFilename' value><param name='captioningID' value><param name='enableErrorDialogs' value='0'></object>";

dialogArguments.insertHTML(flashhtml);
window.close();
}

// ]]>
		</script>
	</HEAD>
	<body class="alertbgc">
		<form id="Form1" method="post" runat="server">
			<div>
				<div class="flash0">
					<fieldset><legend>视频属性</legend>
						<div>视频地址：<input name="flashurl" class="alt_txt1" type="text" style="WIDTH: 320px" value="http://"></div>
						<div>
							视频尺寸：宽度：<input name="flashk" class="alt_txt1" type="text" style="WIDTH: 24px" value="280">
							高度：<input name="flashg" class="alt_txt1" type="text" style="WIDTH: 24px" value="180">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;<input id="Button1" type="button" value="确 定" onclick="return Button1_onclick()" />
						</div>
					</fieldset>
				</div>
			</div>
		</form>
	</body>
</HTML>
