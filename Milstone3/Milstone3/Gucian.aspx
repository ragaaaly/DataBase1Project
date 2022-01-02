<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gucian.aspx.cs" Inherits="Milstone3.Gucian" %>

<!DOCTYPE html>
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
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
        rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
        crossorigin="anonymous" />
</head>
<body style="height: 317px">
    <form id="form2" runat="server">
        <h2>Welcome Student!</h2>
        <br />
        <p>
            <asp:Button ID="profile" runat="server" Text=" My Profile" OnClick="profile_Click" />
        </p>
        <p>
            <asp:Button ID="phone" runat="server" Text="Add Phone Number" OnClick="phone_Click" />
        </p>
        <p>
            <asp:Button ID="Theses" runat="server" Text="View My Theses" OnClick="Theses_Click" />
        </p>
        <p>
            <asp:Button ID="Publication" runat="server" Text="Add Publication" OnClick="pub_Click" />
        </p>
        <asp:Button ID="report" runat="server" Text="Add Progress Report" OnClick="report_Click" />
    </form>
</body>
</html>


