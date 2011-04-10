<%@ Page language="c#" Codebehind="FindReplace.aspx.cs" AutoEventWireup="false" Inherits="WebEditor.include.FindReplace" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>FindReplace</title>
		 
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		 
		<style type="text/css"> body, a, table, div, span, td, th, input, select{font-size:9pt;font-family: "宋体", Verdana, Arial, Helvetica, sans-serif;}
	body {padding:5px}
		</style>
		<LINK href="Editor.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body class="alertbgc">
		<form class="alertbgc" id="frmSearch" name="frmSearch" method="post">
			<script language="JavaScript" type="text/javascript">
var oSelection;
oSelection = dialogArguments.document.selection.createRange();

function searchtype(){
    var retval = 0;
    var matchcase = 0;
    var matchword = 0;
    if (document.getElementById("blnMatchCase").checked) matchcase = 4;
    if (document.getElementById("blnMatchWord").checked) matchword = 2;
    retval = matchcase + matchword;
    return(retval);
}

function checkInput(){
    if (document.getElementById("strSearch").value.length < 1) {
        alert("请输入查找内容");
        return false;
    } else {
        return true;
    }
}

function findtext(){
    if (checkInput()) {
        var searchval = document.getElementById("strSearch").value;
        oSelection.collapse(false);
        if (oSelection.findText(searchval, 1000000000, searchtype())) {
            oSelection.select();
        } else {
            var startfromtop = confirm("搜索完成，是否要从顶部开始重新搜索？");
            if (startfromtop) {
                oSelection.expand("textedit");
                oSelection.collapse();
                oSelection.select();
                findtext();
            }
        }
    }
}

function replacetext(){
    if (checkInput()) {
        if (document.getElementById("blnMatchCase").checked){
            if (oSelection.text == document.getElementById("strSearch").value) oSelection.text = document.getElementById("strReplace").value
        } else {
            if (oSelection.text.toLowerCase() == document.getElementById("strSearch").value.toLowerCase()) oSelection.text = document.getElementById("strReplace").value
        }
        findtext();
    }
}

function replacealltext(){
    if (checkInput()) {
        var searchval = document.getElementById("strSearch").value;
        var wordcount = 0;
        var msg = "";
        oSelection.expand("textedit");
        oSelection.collapse();
        oSelection.select();
        while (oSelection.findText(searchval, 1000000000, searchtype())){
            oSelection.select();
            oSelection.text = document.getElementById("strReplace").value;
            wordcount++;
        }
        if (wordcount == 0) msg = "要查找的内容没有找到"
        else msg = wordcount + " 处文本被替换成功";
        alert(msg);
    }
}
			</script>
			<div class="alertbgc">
				<TABLE class="alertbgc" cellSpacing="0" cellPadding="5" border="0">
					<TR>
						<TD vAlign="top" noWrap align="left"><label for="strSearch">查找内容</label><br>
							<INPUT id="strSearch" style="WIDTH: 200px" type="text" size="40" name="strSearch"><br>
							<label for="strReplace">替换内容</label><br>
							<INPUT id="strReplace" style="WIDTH: 200px" type="text" size="40" name="strReplace"><br>
							<INPUT id="blnMatchCase" type="checkbox" size="40" name="blnMatchCase"><label for="blnMatchCase">区分大小写&nbsp;&nbsp;</label>
							<INPUT id="blnMatchWord" type="checkbox" size="40" name="blnMatchWord"><label for="blnMatchWord">全部匹配</label>
						</TD>
						<td vAlign="top" rowSpan="2"><input style="MARGIN-TOP: 0px; WIDTH: 80px" onclick="findtext();" type="button" value="查找下一个"
								name="btnFind"><br>
							<input style="MARGIN-TOP: 3px; WIDTH: 80px" onclick="window.close();" type="button" value="关闭"
								name="btnCancel"><br>
							<input style="MARGIN-TOP: 3px; WIDTH: 80px" onclick="replacetext();" type="button" value="替换"
								name="btnReplace"><br>
							<input style="MARGIN-TOP: 3px; WIDTH: 80px" onclick="replacealltext();" type="button" value="全部替换"
								name="btnReplaceall"><br>
						</td>
					</TR>
				</TABLE>
			</div>
		</form>
	</body>
</HTML>
