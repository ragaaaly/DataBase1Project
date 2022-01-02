<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminIssueThesisPayment.aspx.cs" Inherits="Milstone3.AdminIssueThesisPayment" %>

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
        <asp:Label ID="Label1" runat="server" Text="Thesis Serial Number:"></asp:Label>
        <br />
        <asp:TextBox ID="ThesisSerialNo" runat="server" required="required"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Amount:"></asp:Label>
        <br />

        <asp:TextBox ID="amount" runat="server" required="required"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Number Of Installements:"></asp:Label>
        <br />

        <asp:TextBox ID="noOfInstallments" runat="server" required="required"></asp:TextBox>
        <br />

        <asp:Label ID="Label4" runat="server" Text="Fund Percentage:"></asp:Label>
        <br />

        <asp:TextBox ID="fundPercentage" runat="server" required="required"></asp:TextBox>
        <br />

        <asp:Button ID="Button1" runat="server" OnClick="AdminIssueThesisPaymentProc" Text="Save" />
        <div>
        </div>
    </form>
</body>
</html>
