<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PhoneNumber.aspx.cs" Inherits="Milstone3.PhoneNumber" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Please Enter your phone number"></asp:Label>
        </div>
        <p>
            <asp:TextBox ID="phone" runat="server" required="required"></asp:TextBox>

        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Add Phone Number" OnClick="Button1_Click" />
        </p>
    </form>
</body>
</html>
