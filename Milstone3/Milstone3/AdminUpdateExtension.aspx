<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminUpdateExtension.aspx.cs" Inherits="Milstone3.AdminUpdateExtension" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<style>
    form {
        text-align: center;
        margin: auto;
        width: 50%;
        border: 5px solid #000000;
        padding: 10px;
    }
</style>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Thesis Serial Number"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="ThesisSerialNo" runat="server" required="required"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="AdminUpdateExtensionProc" Text="Update No Of Extension by 1" />

        </div>
    </form>
</body>
</html>
