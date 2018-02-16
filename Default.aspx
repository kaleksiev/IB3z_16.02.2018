<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SDS_Test" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" InsertVisible="False" SortExpression="Id"></asp:BoundField>
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name"></asp:BoundField>
            <asp:BoundField DataField="content" HeaderText="content" SortExpression="content"></asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White"></FooterStyle>

        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White"></HeaderStyle>

        <PagerStyle HorizontalAlign="Center" BackColor="#FFCC66" ForeColor="#333333"></PagerStyle>

        <RowStyle BackColor="#FFFBD6" ForeColor="#333333"></RowStyle>

        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy"></SelectedRowStyle>

        <SortedAscendingCellStyle BackColor="#FDF5AC"></SortedAscendingCellStyle>

        <SortedAscendingHeaderStyle BackColor="#4D0000"></SortedAscendingHeaderStyle>

        <SortedDescendingCellStyle BackColor="#FCF6C0"></SortedDescendingCellStyle>

        <SortedDescendingHeaderStyle BackColor="#820000"></SortedDescendingHeaderStyle>
    </asp:GridView>

    <asp:SqlDataSource runat="server" ID="SDS_Test" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand="DELETE FROM [Test] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Test] ([name], [content]) VALUES (@name, @content)" SelectCommand="SELECT * FROM [Test]" UpdateCommand="UPDATE [Test] SET [name] = @name, [content] = @content WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String"></asp:Parameter>
            <asp:Parameter Name="content" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String"></asp:Parameter>
            <asp:Parameter Name="content" Type="String"></asp:Parameter>
            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

