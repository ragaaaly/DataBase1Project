<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SupervisorAddExaminer.aspx.cs" Inherits="Milstone3.SupervisorAddExaminer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                    <h2> Add an Examiner</h2>
            Please insert the data of the thesis and the respected Examiner.
        </div>
         <p>

            Thesis Serial No</p>
        <asp:TextBox ID="thesisSerialNo" runat="server"></asp:TextBox>      
         <p>
                                                            <!--Still not done yet we are just getting started with it -->
            Defense Date</p>
     <%--    <input type="date" id="defenseDate" name="defenseDate"/>--%>

        <asp:TextBox ID="defenseDate" runat="server"></asp:TextBox>      
         <p>

              Examiner Name</p>
        <asp:TextBox ID="examinerName" runat="server"></asp:TextBox>      
         <p>

            Password</p>
        <asp:TextBox ID="password" runat="server"></asp:TextBox>      
          
            <p>
        <asp:RadioButton ID="national" runat="server"  Text="National"/>
         </p>
            <p>

            Field of Work</p>
        <asp:TextBox ID="fieldOfWork" runat="server"></asp:TextBox> 
        
        <p>
        <asp:Button ID="AddExaminer" runat="server" Text="Add" OnClick="AddExaminer_Click" />
            </p>
    </form>
</body>
</html>
