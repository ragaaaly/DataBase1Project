<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterExaminer.aspx.cs" Inherits="Milstone3.RegisterExaminer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
            &nbsp;Name</p>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <p>
            Password</p>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <br />
        Email<p>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </p>
        <p>
            Field of Work</p>
        <p>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </p>
        <asp:RadioButton ID="RadioButton1" runat="server"  Text="National"/>
        <asp:RadioButton ID="RadioButton2" runat="server" Text="Not National" />
    </form>
</body>
</html>
