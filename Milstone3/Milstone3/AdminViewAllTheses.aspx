<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminViewAllTheses.aspx.cs" Inherits="Milstone3.AdminViewAllTheses" %>

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
</style>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="serialNumber" HeaderText="Serial Number" />
                    <asp:BoundField DataField="field" HeaderText="Field" />
                    <asp:BoundField DataField="type" HeaderText="Type" />
                    <asp:BoundField DataField="title" HeaderText="Title" />
                    <asp:BoundField DataField="startDate" HeaderText="Start Date" />
                    <asp:BoundField DataField="endDate" HeaderText="End Date" />
                    <asp:BoundField DataField="defenseDate" HeaderText="Defense Date" />
                    <asp:BoundField DataField="years" HeaderText="Years" />
                    <asp:BoundField DataField="grade" HeaderText="Grade" />
                    <asp:BoundField DataField="payment_id" HeaderText="Payment ID" />
                    <asp:BoundField DataField="noOfExtensions" HeaderText="No Of Extensions" />
                </Columns>

            </asp:GridView>
        </div>
    </form>
</body>
</html>
