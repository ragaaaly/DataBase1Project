<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Milstone3.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<style>
    form {
        text-align: center;
    }
</style>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Button ID="Button1" runat="server" OnClick="AdminViewSupervisorProfile" Text="List all supervisors" />

            <asp:Button ID="Button2" runat="server" OnClick="AdminViewAllTheses" Text="List all Theses" />

            <asp:Button ID="Button3" runat="server" OnClick="AdminViewOnGoingTheses" Text="View on going Theses" />

            <asp:Button ID="Button4" runat="server" OnClick="AdminIssueThesisPayment" Text="Issue a thesis payment" />

            <asp:Button ID="Button5" runat="server" OnClick="AdminIssueInstallPayment" Text="Issue installments" />

            <asp:Button ID="Button6" runat="server" OnClick="AdminUpdateExtension" Text="Update the number of thesis extension" />

        </div>
    </form>
</body>
</html>
