<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SupervisorStudents.aspx.cs" Inherits="Milstone3.SupervisorStudents" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <h1> Your Students   </h1>
            <p>
                Please Enter a Student's ID      
                  <asp:TextBox ID="studentID" runat="server"></asp:TextBox>
                <asp:Button ID="ViewAStudentPublications" runat="server" Text="View Publications" OnClick="ViewAStudentPublications_Click" />

                </p>
            <p>
            <asp:GridView  ID="GridView1"  runat="server" AutoGenerateColumns="false" >
                <Columns>
                <asp:BoundField  DataField="sid" HeaderText="ID" />
                <asp:BoundField  DataField="firstName" HeaderText="First Name" />
                <asp:BoundField  DataField="lastName" HeaderText="Last Name" />
                <asp:BoundField  DataField="years" HeaderText="Years Spent in Thesis" />
                
            </Columns>

           </asp:GridView>
                </p>
        </div>
    </form>
</body>
</html>
