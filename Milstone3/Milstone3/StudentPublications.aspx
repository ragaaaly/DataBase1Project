<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentPublications.aspx.cs" Inherits="Milstone3.StudentPublications" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                 <h2>   Student's Publications   </h2>

        </div>
         <p style="direction: ltr">
            <asp:GridView  ID="GridView1"  runat="server" AutoGenerateColumns="false" >
                <Columns>
                <asp:BoundField  DataField="id" HeaderText="Publication ID" />
                <asp:BoundField  DataField="title" HeaderText="Title" />
                <asp:BoundField  DataField="dateOfPublication" HeaderText="Date of Publication" />
                <asp:BoundField  DataField="place" HeaderText="Place" />
                <asp:BoundField  DataField="accepted" HeaderText="Accepted" />
                <asp:BoundField  DataField="host" HeaderText="Host" />

            </Columns>

           </asp:GridView>
                </p>
    </form>
</body>
</html>
