<%@ Page language="c#" Codebehind="SelectFace.aspx.cs" AutoEventWireup="false" Inherits="WebEditor.include.SelectFace" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>SelectFace</title>
		 
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		 
		<LINK href="Editor.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body class="alertbgc">
		<form id="Form1" method="post" runat="server">
			<div class="lfd">
				<div class="selface_kong1"></div>
				<div id="表情一" class="selface_bq_a">表情一
					<script event="onmouseover" for="表情一" language="JavaScript" type="text/javascript">
						huifu(); 表情一.className="selface_bq_b"; 表情一图.style.display="block"; slef="表情一";
					</script>
					<script event="onmouseout" for="表情一" language="JavaScript" type="text/javascript">
						if(slef=="表情一"){表情一.className="selface_bq_b";}
					</script>
				</div>
				<div id="表情二" class="selface_bq_a">表情二
					<script event="onmouseover" for="表情二" language="JavaScript" type="text/javascript">
						huifu(); 表情二.className="selface_bq_b"; 表情二图.style.display="block"; slef="表情二";
					</script>
					<script event="onmouseout" for="表情二" language="JavaScript" type="text/javascript">
						if(slef=="表情二"){表情二.className="selface_bq_b";}
					</script>
				</div>
				<div id="表情三" class="selface_bq_a">表情三
					<script event="onmouseover" for="表情三" language="JavaScript" type="text/javascript">
						huifu(); 表情三.className="selface_bq_b"; 表情三图.style.display="block"; slef="表情三";
					</script>
					<script event="onmouseout" for="表情三" language="JavaScript" type="text/javascript">
						if(slef=="表情三"){表情三.className="selface_bq_b";}
					</script>
				</div>
				<div id="表情四" class="selface_bq_a">表情四
					<script event="onmouseover" for="表情四" language="JavaScript" type="text/javascript">
						huifu(); 表情四.className="selface_bq_b"; 表情四图.style.display="block"; slef="表情四";
					</script>
					<script event="onmouseout" for="表情四" language="JavaScript" type="text/javascript">
						if(slef=="表情四"){表情四.className="selface_bq_b";}
					</script>
				</div>
				<div id="表情五" class="selface_bq_a">表情五
					<script event="onmouseover" for="表情五" language="JavaScript" type="text/javascript">
						huifu(); 表情五.className="selface_bq_b"; 表情五图.style.display="block"; slef="表情五";
					</script>
					<script event="onmouseout" for="表情五" language="JavaScript" type="text/javascript">
						if(slef=="表情五"){表情五.className="selface_bq_b";}
					</script>
				</div>
				<div class="selface_yulan">
					<table border="0" width="100%" id="table1" height="100%" cellspacing="0" cellpadding="0">
						<tr>
							<td>
								<p align="center"><img id="img_yulan" src="../image/anniu/loading.gif" alt=""></p>
							</td>
						</tr>
					</table>
				</div>
			</div>
			<div class="selface_02"></div>
			<div id="表情一图" style="DISPLAY:block"><%=strdiv1%></div>
			<div id="表情二图" style="DISPLAY:none"><%=strdiv2%></div>
			<div id="表情三图" style="DISPLAY:none"><%=strdiv3%></div>
			<div id="表情四图" style="DISPLAY:none"><%=strdiv4%></div>
			<div id="表情五图" style="DISPLAY:none"><FONT face="宋体"></FONT><%=strdiv5%></div>
		</form>
		<script language="javascript" type="text/javascript">
			表情一.className="selface_bq_b";
			var slef;
			function huifu()
			{
				表情一.className="selface_bq_a";
				表情二.className="selface_bq_a";
				表情三.className="selface_bq_a";
				表情四.className="selface_bq_a";
				表情五.className="selface_bq_a";
    
				表情一图.style.display="none";
				表情二图.style.display="none";
				表情三图.style.display="none";
				表情四图.style.display="none";
				表情五图.style.display="none";
			}
			function ylpic(picid) { document.getElementById("img_yulan").src = document.getElementById(picid).src;  }
			function crpic(picid) { dialogArguments.insertHTML("<IMG SRC=" + document.getElementById(picid).src + ">"); }
		</script>
	</body>
</HTML>
