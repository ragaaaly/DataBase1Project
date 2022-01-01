<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gucian.aspx.cs" Inherits="Milstone3.Gucian" %>

<!DOCTYPE html>
 <html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
        <title></title>
</head>
<body style="height: 317px">
   <form id="form2" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Welcome"></asp:Label>
    <p>
        <asp:Button ID="profile" runat="server" Text=" My Profile" OnClick="profile_Click" />
    </p>
    <p>
         <asp:Button ID="phone" runat="server" Text="Add Phone Number" OnClick="phone_Click" />
    </p>
    <p>
         <asp:Button ID="Theses" runat="server" Text="View My Theses"  OnClick="Theses_Click" />
    </p>
       <p>
         <asp:Button ID="Publication" runat="server" Text="Add Publication"  OnClick="pub_Click" />
    </p>
       <asp:Button ID="report" runat="server" Text="Add Progress Report" OnClick="report_Click" />
</form>
</body>
</html>


