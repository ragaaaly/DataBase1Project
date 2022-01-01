<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Milstone3.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
        crossorigin="anonymous">
</head>
<style>
    form {
        text-align: center;
        margin: auto;
        width: 30%;
        border: 5px solid #000000;
        padding: 10px;
        font-family: "Sansita Swashed", cursive
    }
</style>
<body style="height: 478px">
    <form id="form1" runat="server">
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Welcome"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Please enter your User-ID and password! "></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="User-ID"></asp:Label>
            <br />
            <asp:TextBox ID="id" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
            <br />
            <asp:TextBox ID="password" type="password" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="loggingIn" runat="server" class="btn btn-outline-dark" Text="Login" OnClick="loggingIn_Click" />
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Not registered yet?"></asp:Label>
            <br />
            <br />
            <asp:Button ID="register" runat="server" class="btn btn-outline-dark" Text="Register" OnClick="register_Click" />
        </div>
    </form>
</body>
</html>
