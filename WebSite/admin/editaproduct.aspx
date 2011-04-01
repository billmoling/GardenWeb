<%@ Reference Control="~/editor/webeditor/editor.ascx" %>
<%@ Register TagPrefix="uc1" TagName="editor" Src="../editor/WebEditor/editor.ascx" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<%@ Page Language="c#" Inherits="NewsProject.admin.EditAProduct" ValidateRequest="false"
    CodeFile="EditAProduct.aspx.cs" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
<head>
    <title>Add products</title>
     
    <meta name="CODE_LANGUAGE" content="C#">
    <meta name="vs_defaultClientScript" content="JavaScript">
     
    <link rel="stylesheet" href="css/RightStyleSheet.css" type="text/css" charset="utf-8" />
    <script type="text/javascript" src="JScript.js"></script>
    <script type="text/javascript">
        function display(id) {
            var traget = document.getElementById(id);
            if (traget.style.display == "none") {
                traget.style.display = "block";
            } else {
                traget.style.display = "none";
            }
        }
        function changeHiddenValue(tag, id) {
            var traget = document.getElementById(id);
            traget.value = tag;
        }
    </script>
</head>
<body class="body_style">
    <div class="rightbody_bg">
        <form id="Form1" method="post" runat="server">
        <div class="content_title">
            <h2>
                Edit Product</h2>
        </div>
        <div class="content_main">
            <table border="0" cellpadding="0" cellspacing="0" style="margin-top: 0px; width: 100%;
                padding-left: 10px;" id="products">
                <tr>
                    <td width="80px" height="2" align="left">
                        Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                    </td>
                    <td height="2">
                        <input type="text" size="30" maxlength="100" id="txtProductName" runat="server" />
                    </td>
                    <td align="left" rowspan="2">
                        Product Picture:
                    </td>
                    <td align="center" rowspan="2">
                        <input id="hidden_pic" type="hidden" value="FLASE" runat="server"/>
                        <input type="button" id="btn_pic" runat="server"  style="display:block;" value="Modify Image" onclick="display('ifr_pic');display('btn_cancelPic');display('btn_pic');changeHiddenValue('TRUE','hidden_pic');" />
                        <iframe id="ifr_pic" src="../uploadPic.aspx" style="display:none;" frameborder="0" height="60"
                            scrolling="no"></iframe>
                        <input type="button" id="btn_cancelPic" style="display:none;" value="Cancel" onclick="display('ifr_pic');display('btn_pic');display('btn_cancelPic');changeHiddenValue('FLASE','hidden_pic');" />
                    </td>
                </tr>
                <tr>
                    <td height="2" align="left">
                        Category:
                    </td>
                    <td height="2">
                        <asp:DropDownList ID="listType" runat="server" BorderStyle="Solid" BorderWidth="1px"
                            Height="16px" Width="216px">
                        </asp:DropDownList>
                        <%--<input name="product" type="text" size="30" maxlength="100">--%>&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td width="80" height="2" align="left">
                        Inventory:
                    </td>
                    <td height="2">
                        <input type="text" size="30" maxlength="100" id="txtLeftCount" runat="server" name="Text1"
                            onkeyup="checkNan(this)">
                    </td>
                    <td height="2" align="left" rowspan="2">
                        Product&nbsp;&nbsp;&nbsp;&nbsp; PDF:
                    </td>
                    <td height="2" align="center" rowspan="2">
                        <input type="button" id="btn_pdf"  style="display:block;" value="Modify PDF" onclick="display('ifr_pdf');display('btn_cancelPdf');display('btn_pdf')" />
                        <iframe id="ifr_pdf" src="../uploadPdf.aspx" style="display:none;" frameborder="0" height="60"
                            scrolling="no"></iframe>
                        <input type="button" id="btn_cancelPdf" style="display:none;" value="Cancel" onclick="display('ifr_pdf');display('btn_pdf');display('btn_cancelPdf');" />
                    </td>
                </tr>
                <tr>
                    <td width="80" height="2" align="left">
                        Price&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                    </td>
                    <td height="2">
                        <input type="text" size="30" maxlength="100" id="txtPrice" runat="server" name="Text2"
                            onkeyup="checkNan(this)"/>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        Code Item:
                    </td>
                    <td align="left">
                        <input type="text" size="30" maxlength="100" id="txtCodeItem" runat="server" name="CodeItem"/>
                    </td>
                    <td height="20px;" colspan="2">
                        <table width="100%">
                            <tr>
                                <td>
                                    <asp:CheckBox ID="cb_isPromotion" runat="server" Text="Promotion" />
                                </td>
                                <td>
                                    <asp:CheckBox ID="cb_isNew" runat="server" Text="New" />
                                </td>
                                <td>
                                    <asp:CheckBox ID="cb_isPrivate" runat="server" Text="Test" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" height="3">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="left" valign="top">
                        Detail&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                    </td>
                    <td colspan="3">
                        <table border="0" cellpadding="0" cellspacing="0" width="100%" align="center">
                            <tbody>
                                <tr>
                                    <td height="17" align="left" width="100%">
                                        <div style="width: 548px;">
                                            <CKEditor:CKEditorControl ID="WebEditor" runat="server" Width="726" Height="160">
		                                    </CKEditor:CKEditorControl>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td width="80" align="center">
                        &nbsp;
                    </td>
                    <td colspan="3">
                        <asp:Button ID="btnSubmit" runat="server" Text="Save" CssClass="button" Width="50"
                            Height="20" OnClick="btnSubmit_Click"></asp:Button>
                        <input type="reset" name="Submit" value="Reset" class="button" style="width: 50px;
                            height: 20px">
                    </td>
                </tr>
            </table>
        </div>
        </form>
    </div>
</body>
</html>
