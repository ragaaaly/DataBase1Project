<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="Milstone3.Courses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView  ID="GridView3"  runat="server" AutoGenerateColumns="false" >
                <Columns>
                <asp:BoundField  DataField="code" HeaderText="Code" />
                <asp:BoundField  DataField="grade" HeaderText="Grade " />
                
            </Columns>

           </asp:GridView>
        </div>
    </form>
</body>
</html>
