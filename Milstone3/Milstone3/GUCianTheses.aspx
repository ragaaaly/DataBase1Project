<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GUCianTheses.aspx.cs" Inherits="Milstone3.GUCianTheses" %>

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

                <asp:BoundField  DataField="serialNumber" HeaderText="Serial Number" />
                <asp:BoundField  DataField="field" HeaderText="Field" />
                <asp:BoundField  DataField="type" HeaderText="Type" />
                <asp:BoundField  DataField="title" HeaderText="Title" />
                <asp:BoundField  DataField="startDate" HeaderText="Start Date" />
                <asp:BoundField  DataField="endDate" HeaderText="End Date" />
                <asp:BoundField  DataField="defenseDate" HeaderText="Defense Date" />
                <asp:BoundField  DataField="years" HeaderText="Years" />
                <asp:BoundField  DataField="grade" HeaderText="Grade" />
                <asp:BoundField  DataField="payment_id" HeaderText="Payment ID" />
                <asp:BoundField  DataField="noOfExtensions" HeaderText="No of Extensions" />

            </Columns>

           </asp:GridView>
        </div>
    </form>
</body>
</html>
