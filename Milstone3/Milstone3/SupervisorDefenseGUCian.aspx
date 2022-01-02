<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SupervisorDefenseGUCian.aspx.cs" Inherits="Milstone3.SupervisorDefenseGUCian" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Please Enter the data of the thesis's defense for GUCian
        </div>
        <p>
              Thesis Serial No</p>
        <asp:TextBox ID="thesisSerialNo" runat="server"></asp:TextBox>      
         <p>

            DefenseDate</p>
        <asp:TextBox ID="defenseDate" runat="server"></asp:TextBox>    
   
        <p>

            DefenseLocation</p>
        <asp:TextBox ID="defenseLocation" runat="server"></asp:TextBox>   

         <p>
        <asp:Button ID="AddDefenseGucian" runat="server" Text="Add" OnClick="AddDefenseGucian_Click" />
            </p>

    </form>
</body>
</html>
