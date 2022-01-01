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
        width: 50%;
        border: 5px solid #000000;
        padding: 10px;
    }
</style>
<body style="height: 478px">
    <form id="form1" runat="server">
        <%--<div>--%>
        </div>
        <div class="form-group">
            Welcome<p>
                Please enter your User-ID and password
            </p>
            <p>
                User-ID
            </p>
            <p>
                <asp:TextBox ID="id" runat="server"></asp:TextBox>
            </p>
            <p>
                Password
            </p>
            <p>
                <asp:TextBox ID="password" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="loggingIn" runat="server" class="btn btn-primary" Text="Login" OnClick="loggingIn_Click" />
            </p>
            Not registered yet?<br />
            <p>
                <asp:Button ID="register" runat="server" class="btn btn-primary" Text="Register" OnClick="register_Click" />
            </p>
        </div>
    </form>
</body>
</html>
