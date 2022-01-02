<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SupervisorUpdateProfile.aspx.cs" Inherits="Milstone3.SupervisorUpdateProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Please Enter the Updated Data
        </div>
         <p>

              Name</p>
        <asp:TextBox ID="supervisorname" runat="server"></asp:TextBox>      
         <p>

            Faculty</p>
        <asp:TextBox ID="faculty" runat="server"></asp:TextBox>  
        
         <p>
             <asp:Button ID="UpdateSupProfile" runat="server" Text="Update" OnClick="UpdateSupProfile_Click" style="height: 29px" />
                   </p>
    </form>
</body>
</html>
