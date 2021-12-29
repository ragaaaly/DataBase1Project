<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SupervisorIntermediate.aspx.cs" Inherits="Milstone3.SupervisorIntermediate" %>

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
            Welcome Supervisor!
        </p>
         <p>
             How's torturing students?     Hope you are having fun.
       </p>
        <p>
            <asp:Button ID="login" runat="server" Text="Login" OnClick="Button1_Click" style="direction: ltr" />
        </p>

        <p>
            <asp:Button ID="close" runat="server" Text="Close" OnClick="Button1_Click" />
        </p>

    </form>
</body>
</html>
