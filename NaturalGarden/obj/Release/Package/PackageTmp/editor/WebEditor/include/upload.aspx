<%@ Page language="c#" Codebehind="upload.aspx.cs" AutoEventWireup="false" Inherits="WebEditor.include.upload" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>upload</title>
		 
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link rel="stylesheet" href="Editor.css" type="text/css">
	</HEAD>
	<body>
		<form name="form1" method="post" id="form1">
			<div>正在上传，请稍等</div>
			<div id="DIV1"><img src="../image/waiting.gif" alt="正在上传"></div>
			<br>
			<div>插入前请不要选中编辑器中的图片，<BR>
				否则将无法再上传或弹出错误窗口！！</div>
		</form>
	</body>
</HTML>
