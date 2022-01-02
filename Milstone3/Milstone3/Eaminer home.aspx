<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Eaminer home.aspx.cs" Inherits="Proj.Eaminer_home" %>

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
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Welecome Home!</h2>
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
            &nbsp;
        </p>
    </form>
</body>
</html>
