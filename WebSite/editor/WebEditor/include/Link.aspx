<%@ Page language="c#" Codebehind="Link.aspx.cs" AutoEventWireup="false" Inherits="WebEditor.include.Link" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Link</title>
		 
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		 
		<link rel="stylesheet" href="Editor.css" type="text/css" />
		<script language="javascript" type="text/javascript">
function Button1_onclick()
{
	var flashhtml;
	flashhtml="<a href='"+document.getElementById("urlurl").value+"'>"+document.getElementById("urltxt").value+"</a>";
	dialogArguments.insertHTML(flashhtml);
	window.close();
}
		</script>
	</HEAD>
	<body class="alertbgc">
		<form id="Form1" method="post" runat="server">
			<div>
				<div class="flash0">
					<fieldset><legend>超连接属性</legend>
						<div>
							连接地址：<input name="urlurl" class="alt_txt1" type="text" style="width: 320px" value="http://" /></div>
						<div>
							连接文字：<input name="urltxt" class="alt_txt1" type="text" style="width: 260px" />
							&nbsp;<input id="Button1" type="button" value="确 定" onclick="return Button1_onclick()" />
						</div>
					</fieldset>
				</div>
			</div>
		</form>
	</body>
</HTML>
