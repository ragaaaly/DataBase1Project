<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterSupervisor.aspx.cs" Inherits="Milstone3.RegisterSupervisor" %>

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
        width: 40%;
        border: 5px solid #000000;
        padding: 10px;
    }
</style>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
            First Name
        </p>
        <asp:TextBox ID="firstName" runat="server"></asp:TextBox>
        <p>
            Last Name
        </p>
        <p>
            <asp:TextBox ID="lastName" runat="server"></asp:TextBox>
        </p>

        <p>
            Password
        </p>
        <asp:TextBox ID="password" runat="server"></asp:TextBox>
        <p>
            Faculty
        </p>
        <asp:TextBox ID="faculty" runat="server"></asp:TextBox>
        <br />
        <br />
        Email<p>
            <asp:TextBox ID="email" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="submit" class="btn btn-outline-dark" runat="server" OnClick="Button1_Click" Text="Submit" />
        </p>
    </form>
</body>
</html>
