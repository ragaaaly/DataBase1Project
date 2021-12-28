<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Milstone3.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
            Welcome
        </p>
        <p>
            Choose what would you like to register as
        </p>
        <asp:Button ID="student" runat="server" Text="Student" OnClick="Student_Click" />
        <asp:Button ID="supervisor" runat="server" Text="Supervisor"  OnClick="Supervisor_Click"/>
        <asp:Button ID="examiner" runat="server" Text="Examiner" OnClick="Examiner_Click"/>
    </form>
</body>
</html>
