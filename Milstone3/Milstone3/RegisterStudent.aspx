<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterStudent.aspx.cs" Inherits="Milstone3.RegisterStudent" %>

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
        font-family: "Sansita Swashed", cursive
    }
</style>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
            First Name
        </p>
        <asp:TextBox ID="firstName" runat="server" required="required"></asp:TextBox>
        <p>
            Last Name
        </p>
        <p>
            <asp:TextBox ID="lastName" runat="server" required="required"></asp:TextBox>
        </p>
        <p>
            Password
        </p>
        <asp:TextBox ID="password" runat="server" required="required"></asp:TextBox>
        <p>
            Faculty
        </p>
        <asp:TextBox ID="faculty" runat="server" required="required"></asp:TextBox>
        <p>
            <asp:CheckBox ID="gucian" runat="server" Text="GUCian" />
        </p>
        Email<br />
        <p>
            <asp:TextBox ID="email" runat="server" required="required"></asp:TextBox>
        </p>
        <p>
            Address
        </p>
        <p>
            <asp:TextBox ID="address" runat="server" required="required"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="submit" class="btn btn-outline-dark" runat="server" Text="Submit" OnClick="Button1_Click" />
        </p>
        <p>
            &nbsp;
        </p>
    </form>
</body>
</html>
