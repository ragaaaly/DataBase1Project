<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Publication.aspx.cs" Inherits="Milstone3.Publication" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <p>
            <asp:Label ID="Label5" runat="server" Text="Add A publication to a Thesis:"></asp:Label>
        </p>
         <p>
            <asp:Label ID="Label3" runat="server" Text="Title"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="title" runat="server"></asp:TextBox>
        </p>
         <p>
            <asp:Label ID="Label2" runat="server" Text="Thesis Serial Number"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="SSN" runat="server"></asp:TextBox>
        </p>
         <p>
             <asp:Calendar ID="pubDate" runat="server"></asp:Calendar>
        </p>
         <p>
            <asp:Label ID="Label1" runat="server" Text="Host"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="host" runat="server"></asp:TextBox>
        </p>
         <p>
            <asp:Label ID="Label4" runat="server" Text="Place"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="place" runat="server"></asp:TextBox>
        </p>
         <p>
             <asp:RadioButton ID="accepted" runat="server" Text ="accepted"/>
        </p>
        <p>
            <asp:Button ID="add" runat="server" Text="Add" OnClick="add_Click" />
        </p>
    </form>
</body>
</html>
