<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProgressReport.aspx.cs" Inherits="Milstone3.AddProgressReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:Label ID="Label5" runat="server" Text="Add Progress Report(s) for a thesis:"></asp:Label>
        </p>
         <p>
            <asp:Label ID="Label3" runat="server" Text="Thesis Serial Number"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="SSN" runat="server"></asp:TextBox>
        </p>
      <%--  <p>
            <asp:Label ID="Label1" runat="server" Text="Progress Report Date"></asp:Label>
        </p>
        <p>
           <asp:Calendar ID="reportDate" runat="server"></asp:Calendar>

        </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Your User-ID"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="userId" runat="server"></asp:TextBox>
        </p>--%>
       
         <p>
            <asp:Label ID="Label4" runat="server" Text="Progress Report Number"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="reportNo" runat="server"></asp:TextBox>
        </p>
         <p>
            <asp:Label ID="Label1" runat="server" Text="Status"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="status" runat="server"></asp:TextBox>
        </p>
         <p>
            <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="description" runat="server" Height="109px" Width="472px"></asp:TextBox>
        </p>
        <p >
            <asp:Button ID="Button1" runat="server" Text="Add" Width="144px" OnClick="add_Click" />
        </p>
    </form>
</body>
</html>
