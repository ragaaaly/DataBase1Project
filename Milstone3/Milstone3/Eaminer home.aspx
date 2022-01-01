
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Eaminer home.aspx.cs" Inherits="Proj.Eaminer_home" %>

<!DOCTYPE html>
<style>
    form {
        text-align: center;
        margin: auto;
        width: 80%;
        border: 5px solid #000000;
        padding: 10px;
    }
</style>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Welecome Home
            <br />
            <br />
            <asp:Button ID="profile" runat="server" Text="Update Profile" OnClick="profile_Click" />
            <br />
            <br />
            <asp:Button ID="Search" runat="server" Text="Search For Thesis" OnClick="Search_Click" />
            <br />
            <br />
            <asp:Button ID="view" runat="server" OnClick="Button1_Click" Text="View My Previous Work" />
            <br />
            <br />
            <asp:Button ID="grade" runat="server" Text="Add Defense Grade And Comment" OnClick="grade_Click" />
        </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
