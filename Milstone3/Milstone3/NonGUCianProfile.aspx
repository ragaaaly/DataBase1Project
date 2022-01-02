<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NonGUCianProfile.aspx.cs" Inherits="Milstone3.NonGUCianProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                 <asp:GridView  ID="GridView2"  runat="server" AutoGenerateColumns="false" >
                <Columns>
                <asp:BoundField  DataField="firstName" HeaderText="First Name" />
                <asp:BoundField  DataField="lastName" HeaderText="Last Name" />
                <asp:BoundField  DataField="type" HeaderText="Type" />
                <asp:BoundField  DataField="faculty" HeaderText="Faculty" />
               <asp:BoundField  DataField="address" HeaderText="Address" />
                <asp:BoundField  DataField="GPA" HeaderText="GPA" />
                <asp:BoundField  DataField="email" HeaderText="Email" />

            </Columns>

           </asp:GridView>
        </div>
    </form>
</body>
</html>
