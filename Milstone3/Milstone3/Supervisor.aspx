<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Supervisor.aspx.cs" Inherits="Milstone3.Supervisor" %>

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
            <h2>Hello Supervisor! </h2>
        </div>
        <br />

        <p>
            <asp:Button ID="SupViewProfile" runat="server" Text="My Profile" OnClick="SupViewProfil_Click" />
        </p>

        <p>
            <asp:Button ID="UpdateSupProfile" runat="server" Text="Update My Profile" OnClick="UpdateSupProfile_Click" />
        </p>

        <p style="direction: ltr">
            <asp:Button ID="ViewSupStudentsYears" runat="server" Text="My students' profiles" OnClick="ViewSupStudentsYears_Click" />
        </p>
        <p>
            <asp:Button ID="EvaluateProgressReport" runat="server" Text="Evaluate A Progress Report" OnClick="EvaluateProgressReport_Click" />
        </p>

        <p></p>

        <p>
            <asp:Button ID="CancelThesis" runat="server" Text="Cancel A Thesis" OnClick="CancelThesis_Click" />
        </p>

        <p>
            <asp:Button ID="AddExaminer" runat="server" Text="Add an Examiner" OnClick="AddExaminer_Click" />
        </p>

        <p>
            <asp:Button ID="AddDefenseGucian" runat="server" Text="Add a Defense for Gucian" OnClick="AddDefenseGucian_Click" />
        </p>
        <p>
            <asp:Button ID="AddDefenseNonGucian" runat="server" Text="Add a Defense for NonGucian" OnClick="AddDefenseNonGucian_Click" />

        </p>


    </form>
</body>
</html>
