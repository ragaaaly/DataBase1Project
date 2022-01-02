<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminIssueInstallPayment.aspx.cs" Inherits="Milstone3.AdminIssueInstallPayment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<style>
    form {
        text-align: center;
        margin: auto;
        width: 80%;
        border: 5px solid #000000;
        padding: 10px;
    }
</style>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Payment ID"></asp:Label>
            <br />
            <asp:TextBox ID="paymentID" runat="server" required="required"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Install Start Date"></asp:Label>
            <br />
            <asp:TextBox ID="InstallStartDate" runat="server" required="required"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="AdminIssueInstallPaymentProc" Text="Save" />
        </div>
    </form>
</body>
</html>
