<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterStudent.aspx.cs" Inherits="Milstone3.RegisterStudent" %>

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
            First Name</p>
        <asp:TextBox ID="firstName" runat="server" ></asp:TextBox>
        <p>
            Last Name</p>
        <p>
            <asp:TextBox ID="lastName" runat="server"></asp:TextBox>
        </p>
        <p>
            Password</p>
        <asp:TextBox ID="password" runat="server"></asp:TextBox>
        <p>
            Faculty</p>
        <asp:TextBox ID="faculty" runat="server"></asp:TextBox>
        <p>
        <asp:RadioButton ID="gucian" runat="server"  Text="GUCain"/> 
        <asp:RadioButton ID="nongucian" runat="server"  Text="Non GUCian"/>
        </p>
        Email<br />
        <p>
            <asp:TextBox ID="email" runat="server"></asp:TextBox>
        </p>
        <p>
            Address</p>
        <p>
            <asp:TextBox ID="address" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="submit" runat="server" Text="Submit" OnClick="Button1_Click" />
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
