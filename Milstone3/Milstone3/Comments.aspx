<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Comments.aspx.cs" Inherits="Proj.Comments" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Add Comments<br />
            <br />
            Thesis Id&nbsp;
            <asp:TextBox ID="thesisid" required="required" runat="server" Height="16px" Style="margin-right: 35px" Width="117px"></asp:TextBox>
            <br />
            <br />
            Defense date
            <br />
            <br />
            <asp:Calendar ID="Calendar1" required="required" runat="server" BackColor="White" BorderColor="White" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" Width="350px" BorderWidth="1px" NextPrevFormat="FullMonth">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                <NextPrevStyle VerticalAlign="Bottom" Font-Bold="True" Font-Size="8pt" ForeColor="#333333" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="White" BorderColor="Black" Font-Bold="True" BorderWidth="4px" Font-Size="12pt" ForeColor="#333399" />
                <TodayDayStyle BackColor="#CCCCCC" />
            </asp:Calendar>
            <br />
            Grade;<br />
            <br />
            <asp:TextBox ID="Grade" required="required" runat="server"></asp:TextBox>
            <br />
            <br />
            Comments :<br />
            <asp:TextBox ID="commentbox" required="required" runat="server" Height="72px" Width="855px"></asp:TextBox>
            <br />
        </div>
        <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
    </form>
</body>
</html>
