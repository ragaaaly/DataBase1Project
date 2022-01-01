<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Milstone3.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
        rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
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

            <asp:Button ID="Button1" class="btn btn-outline-dark" runat="server" OnClick="AdminViewSupervisorProfile" Text="List all supervisors" Height="38px" Width="380px" />

            <br />
            <br />

            <asp:Button ID="Button2" class="btn btn-outline-dark" runat="server" OnClick="AdminViewAllTheses" Text="List all Theses" Height="38px" Width="380px" />

            <br />
            <br />

            <asp:Button ID="Button3" class="btn btn-outline-dark" runat="server" OnClick="AdminViewOnGoingTheses" Text="Count of on going Theses" Height="38px" Width="380px" />

            <br />
            <br />

            <asp:Button ID="Button4" class="btn btn-outline-dark" runat="server" OnClick="AdminIssueThesisPayment" Text="Issue a thesis payment" Height="38px" Width="380px" />

            <br />
            <br />

            <asp:Button ID="Button5" class="btn btn-outline-dark" runat="server" OnClick="AdminIssueInstallPayment" Text="Issue installments" Height="38px" Width="380px" />

            <br />
            <br />

            <asp:Button ID="Button6" class="btn btn-outline-dark" runat="server" OnClick="AdminUpdateExtension" Text="Update the number of thesis extension" Height="38px" Width="380px" />

        </div>
    </form>
</body>
</html>
