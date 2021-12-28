<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Milstone3.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        Welcome<p>
            Please enter your Email and password</p>
        <p>
            Email</p>
        <p>
            <asp:TextBox ID="id" runat="server"></asp:TextBox>
        </p>
        <p>
            Password</p>
        <p>
            <asp:TextBox ID="password" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="loggingIn" runat="server" Text="Login" OnClick="loggingIn_Click" />
        </p>
    </form>
</body>
</html>
