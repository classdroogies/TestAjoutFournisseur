<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormRegis.aspx.cs" Inherits="TestAjoutFournisseur.WebFormRegis" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IdActeur,IdRole" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="382px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="NomActeur" HeaderText="NomActeur" SortExpression="NomActeur" />
                    <asp:BoundField DataField="IdActeur" HeaderText="IdActeur" InsertVisible="False" ReadOnly="True" SortExpression="IdActeur" />
                    <asp:BoundField DataField="LibelleRole" HeaderText="LibelleRole" SortExpression="LibelleRole" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ajouter" Width="108px" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Sebo_CarysConnectionString %>" SelectCommand="SELECT *  FROM Acteur INNER JOIN Role ON Acteur.IdRole = Role.IdRole"></asp:SqlDataSource>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Afficher" />
        <asp:GridView ID="gridActeurs" runat="server">
        </asp:GridView>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </form>
</body>
</html>
