<%@ Page Language="C#" AutoEventWireup="true" Inherits="SideBarUpdate"  validateRequest="false" Codebehind="SideBarUpdate.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
            <td>Choose page:</td>
            <td>
                <asp:DropDownList ID="Dl_CustomizePage" runat="server" AutoPostBack="true" 
                    onselectedindexchanged="Dl_CustomizePage_SelectedIndexChanged"></asp:DropDownList>
                
            </td>
        </tr>
        <tr>
            <td>Html Code:</td>
            <td>
                <asp:TextBox ID="Txt_SourceCode" runat="server" TextMode="MultiLine" Width="500px" Height="400px"></asp:TextBox>
            </td>
        </tr>
        <tr align="center">
            <td colspan="2"><asp:Button ID="Btn_Update" runat="server" Text="Update" onclick="Btn_Update_Click" /> </td>
        </tr>
    </table>
    
    
            



    </div>
    </form>
</body>
</html>
