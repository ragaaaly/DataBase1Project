<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminViewOnGoingTheses.aspx.cs" Inherits="Milstone3.AdminViewOnGoingTheses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<style>
    #GridView1 {
        text-align: center;
        margin: auto;
        width: 30%;
        border: 5px solid #000000;
        padding: 10px;
    }
</style>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="thesesCount" HeaderText="Number of on going Theses" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
