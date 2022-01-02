<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SupervisorEvaluateReport.aspx.cs" Inherits="Milstone3.SupervisorEvaluateReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Please enter the data of the Report.
        </div>
         <p>

              Thesis Serial No</p>
        <asp:TextBox ID="thesisSerialNo" runat="server"></asp:TextBox>      
         <p>

            Progress Report No</p>
        <asp:TextBox ID="progressReportNo" runat="server"></asp:TextBox>  
         <p>

              Evaluation</p>
        <asp:TextBox ID="evaluation" runat="server"></asp:TextBox> 
          
         <p>
        <asp:Button ID="EvaluateProgressReport" runat="server" Text="Add Evaluation" OnClick="EvaluateProgressReport_Click" />
            </p>
    </form>
</body>
</html>
