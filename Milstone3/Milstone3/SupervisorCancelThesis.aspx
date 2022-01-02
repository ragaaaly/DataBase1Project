<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SupervisorCancelThesis.aspx.cs" Inherits="Milstone3.SupervisorCancelThesis" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Cancel a Thesis For a Student
        </div>
        Please Enter the Thesis Serial Number
         <p>
             Thesis Serial No
        </p>
        <asp:TextBox ID="thesisSerialNo" runat="server" required="required"></asp:TextBox>

        <p>
            <asp:Button ID="CancelThesis" runat="server" Text="Cancel Thesis" OnClick="CancelThesis_Click" />
        </p>
    </form>
</body>
</html>
