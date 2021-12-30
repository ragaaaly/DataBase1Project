<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gucian.aspx.cs" Inherits="Milstone3.Gucian" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 470px;
        }
    </style>
</head>
<body>
    <html xmlns="http://www.w3.org/1999/xhtml">
    <body>
    <form id="form1" runat="server">
        <div>
        </div>
</body>
</html>
    <asp:Label ID="Label1" runat="server" Text="Welcome"></asp:Label>
    <p>
        <asp:Button ID="profile" runat="server" Text=" My Profile" OnClick="profile_Click" />
    </p>
    <asp:Button ID="phone" runat="server" Text="Add Phone Number" />
    </form>

</body>
</html>


