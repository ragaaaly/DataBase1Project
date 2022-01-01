<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterExaminer.aspx.cs" Inherits="Milstone3.RegisterExaminer" %>

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
        </div>
        <p>
            First Name
        </p>
        <asp:TextBox ID="firstName" runat="server"></asp:TextBox>
        <p>
            Last Name
        </p>
        <asp:TextBox ID="lastName" runat="server"></asp:TextBox>
        <p>
            Password
        </p>
        <asp:TextBox ID="password" runat="server"></asp:TextBox>
        <br />
        <br />
        Email<p>
            <asp:TextBox ID="email" runat="server"></asp:TextBox>
        </p>
        <p>
            Field of Work
        </p>
        <p>
            <asp:TextBox ID="fieldOfWork" runat="server"></asp:TextBox>
        </p>
        <asp:RadioButton ID="national" runat="server" Text="National" />
        <asp:RadioButton ID="notNational" runat="server" Text="Not National" />
        <p>
            <asp:Button ID="submit" runat="server" Text="Submit" OnClick="Button1_Click" />
        </p>
    </form>
</body>
</html>
