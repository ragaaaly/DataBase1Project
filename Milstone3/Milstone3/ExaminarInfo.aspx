<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExaminarInfo.aspx.cs" Inherits="Proj.ExaminarInfo" %>

<!DOCTYPE html>
<style>
    form {
        text-align: center;
        margin: auto;
        width: 40%;
        border: 5px solid #000000;
        padding: 10px;
    }
</style>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            direction: ltr;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        Please Update Your Info<p>
            Name
        </p>
        <asp:TextBox ID="name" runat="server" required="required"></asp:TextBox>
        <br />
        <br />
        Field OFWork<br />
        <asp:TextBox ID="work" runat="server" required="required"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:CheckBox ID="True" Text="National" runat="server" OnCheckedChanged="True_CheckedChanged" />
        <br />
        <br />
        <asp:Button ID="Save" runat="server" Text="Save" OnClick="Supervisior" />
    </form>
</body>
</html>
