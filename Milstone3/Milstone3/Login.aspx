<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Milstone3.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 478px">
    <form id="form1" runat="server">
        <%--<div>--%>
        </div>
        Welcome<p>
            Please enter your User-ID and password</p>
        <p>
            User-ID</p>
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
        Not registered yet?<br />
        <p>
        <asp:Button ID="register" runat="server" Text="Register" OnClick="register_Click" />
        </p>
    </form>
</body>
</html>
