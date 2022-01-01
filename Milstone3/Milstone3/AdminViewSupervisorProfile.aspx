<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminViewSupervisorProfile.aspx.cs" Inherits="Milstone3.AdminViewSupervisorProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<style>
    form {
        text-align: center;
        margin: auto;
        width: 80%;
        border: 5px solid #000000;
        padding: 10px;
    }

    #GridView1 {
        text-align: center;
        margin: auto;
        width: 80%;
        padding: 10px;
    }
</style>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>All Supervisors in the System!</h3>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID" />
                    <asp:BoundField DataField="email" HeaderText="Email" />
                    <asp:BoundField DataField="password" HeaderText="Password" />
                    <asp:BoundField DataField="name" HeaderText="Name" />
                    <asp:BoundField DataField="faculty" HeaderText="Faculty" />
                </Columns>

            </asp:GridView>

        </div>
    </form>
</body>
</html>
