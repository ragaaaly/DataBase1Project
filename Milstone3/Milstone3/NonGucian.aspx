<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NonGucian.aspx.cs" Inherits="Milstone3.NonGucian" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
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
                <asp:Button ID="courses" runat="server" Text="View My Courses" OnClick="courses_Click" />
        </p>
        <p>
                <asp:Button ID="Button2" runat="server" Text="Add Publication" OnClick="pub_Click" />
        </p>
            <p>
                <asp:Button ID="Button1" runat="server" Text="Add Progress Report" OnClick="report_Click" />
        </p>
         
            </form>

</body>
</html>
