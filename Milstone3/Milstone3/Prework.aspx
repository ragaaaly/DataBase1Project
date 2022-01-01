<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prework.aspx.cs" Inherits="Proj.Prework" %>

<!DOCTYPE html>
<style>
    form {
        text-align: center;
        margin: auto;
        width: 80%;
        border: 5px solid #000000;
        padding: 10px;
    }
</style>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
          Please Choose Operation<br />
          <br />
          <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Gucian Student" />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Button ID="Button2" runat="server" Text="NonGucian Student" OnClick="Button2_Click" />
          <br />
          <br />
          <asp:GridView ID="GridView1" runat="server" HeaderStyle-BackColor="Orange" AutoGenerateColumns="False" Width="336px" Height="183px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="title" HeaderText="Thesis Title" />
                    <asp:BoundField DataField="firstName" HeaderText="first name" />
                    <asp:BoundField DataField="lastName" HeaderText="last name" />
                    <asp:BoundField DataField="name" HeaderText="Supervisor" />
                </Columns>
            </asp:GridView>

          <br />
          <br />

          <asp:GridView ID="GridView2" runat="server" HeaderStyle-BackColor="Orange" AutoGenerateColumns="False" Width="248px" Height="191px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="title" HeaderText="Thesis Title" />
                    <asp:BoundField DataField="firstName" HeaderText="first name" />
                    <asp:BoundField DataField="lastName" HeaderText="last name" />
                    <asp:BoundField DataField="name" HeaderText="Supervisor" />
                </Columns>
            </asp:GridView>
        <div>
        </div>
    </form>
</body>
</html>
