<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Milstone3.register" %>

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
            Welcome to the Registaration Page!
        </p>
        <br />
        <br />
        <p>
            Choose what would you like to register as:
        </p>

        <asp:Button ID="student" class="btn btn-outline-dark" runat="server" Text="Student" OnClick="Student_Click" Width="110px" />
        <asp:Button ID="supervisor" class="btn btn-outline-dark" runat="server" Text="Supervisor" OnClick="Supervisor_Click" Width="110px" />
        <asp:Button ID="examiner" class="btn btn-outline-dark" runat="server" Text="Examiner" OnClick="Examiner_Click" Width="110px" />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
