<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="theeeesis.aspx.cs" Inherits="Proj.theeeesis" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            Search For Thesis :
            <br />
        </div>
        <asp:TextBox ID="TextBox1" runat="server" Height="42px" Width="771px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Search" runat="server" Height="43px" OnClick="Button1_Click" Text="Search" Width="143px" />
        <br />
        <br />
        <br />

          <asp:GridView ID="GridView1" runat="server" HeaderStyle-BackColor="Orange" AutoGenerateColumns="False" Width="426px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="SerialNumber" HeaderText="ID" />
                    <asp:BoundField DataField="title" HeaderText="Name" />
                </Columns>
            </asp:GridView>
        <br />
       <%-- <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        </asp:GridView>--%>
        <br />
    </form>
</body>
</html>
