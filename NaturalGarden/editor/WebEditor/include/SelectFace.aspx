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
				<div id="����һ" class="selface_bq_a">����һ
					<script event="onmouseover" for="����һ" language="JavaScript" type="text/javascript">
						huifu(); ����һ.className="selface_bq_b"; ����һͼ.style.display="block"; slef="����һ";
					</script>
					<script event="onmouseout" for="����һ" language="JavaScript" type="text/javascript">
						if(slef=="����һ"){����һ.className="selface_bq_b";}
					</script>
				</div>
				<div id="�����" class="selface_bq_a">�����
					<script event="onmouseover" for="�����" language="JavaScript" type="text/javascript">
						huifu(); �����.className="selface_bq_b"; �����ͼ.style.display="block"; slef="�����";
					</script>
					<script event="onmouseout" for="�����" language="JavaScript" type="text/javascript">
						if(slef=="�����"){�����.className="selface_bq_b";}
					</script>
				</div>
				<div id="������" class="selface_bq_a">������
					<script event="onmouseover" for="������" language="JavaScript" type="text/javascript">
						huifu(); ������.className="selface_bq_b"; ������ͼ.style.display="block"; slef="������";
					</script>
					<script event="onmouseout" for="������" language="JavaScript" type="text/javascript">
						if(slef=="������"){������.className="selface_bq_b";}
					</script>
				</div>
				<div id="������" class="selface_bq_a">������
					<script event="onmouseover" for="������" language="JavaScript" type="text/javascript">
						huifu(); ������.className="selface_bq_b"; ������ͼ.style.display="block"; slef="������";
					</script>
					<script event="onmouseout" for="������" language="JavaScript" type="text/javascript">
						if(slef=="������"){������.className="selface_bq_b";}
					</script>
				</div>
				<div id="������" class="selface_bq_a">������
					<script event="onmouseover" for="������" language="JavaScript" type="text/javascript">
						huifu(); ������.className="selface_bq_b"; ������ͼ.style.display="block"; slef="������";
					</script>
					<script event="onmouseout" for="������" language="JavaScript" type="text/javascript">
						if(slef=="������"){������.className="selface_bq_b";}
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
			<div id="����һͼ" style="DISPLAY:block"><%=strdiv1%></div>
			<div id="�����ͼ" style="DISPLAY:none"><%=strdiv2%></div>
			<div id="������ͼ" style="DISPLAY:none"><%=strdiv3%></div>
			<div id="������ͼ" style="DISPLAY:none"><%=strdiv4%></div>
			<div id="������ͼ" style="DISPLAY:none"><FONT face="����"></FONT><%=strdiv5%></div>
		</form>
		<script language="javascript" type="text/javascript">
			����һ.className="selface_bq_b";
			var slef;
			function huifu()
			{
				����һ.className="selface_bq_a";
				�����.className="selface_bq_a";
				������.className="selface_bq_a";
				������.className="selface_bq_a";
				������.className="selface_bq_a";
    
				����һͼ.style.display="none";
				�����ͼ.style.display="none";
				������ͼ.style.display="none";
				������ͼ.style.display="none";
				������ͼ.style.display="none";
			}
			function ylpic(picid) { document.getElementById("img_yulan").src = document.getElementById(picid).src;  }
			function crpic(picid) { dialogArguments.insertHTML("<IMG SRC=" + document.getElementById(picid).src + ">"); }
		</script>
	</body>
</HTML>
