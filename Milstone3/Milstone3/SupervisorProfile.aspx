<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SupervisorProfile.aspx.cs" Inherits="Milstone3.SupervisorProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2> My Profile </h2>
        </div>
        <asp:GridView  ID="GridView1"  runat="server" AutoGenerateColumns="false" >
                <Columns>
                <asp:BoundField  DataField="id" HeaderText="ID" />
                <asp:BoundField  DataField="name" HeaderText="Name" />
                <asp:BoundField  DataField="email" HeaderText="Email" />
                <asp:BoundField  DataField="password" HeaderText="Password" />
               <asp:BoundField  DataField="faculty" HeaderText="Faculty" />
            </Columns>

           </asp:GridView>

    </form>
</body>
</html>
