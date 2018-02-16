<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" ValidateRequest="false" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SDS_ListView" DataKeyNames="Id" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
        </AlternatingItemTemplate>
        <EditItemTemplate>          
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>      
        </InsertItemTemplate>
        <ItemTemplate>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1><%# Eval("name") %></h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <%# Eval("content") %>
                    </div>
                </div>    
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <div runat="server" id="itemPlaceholderContainer" style=""><span runat="server" id="itemPlaceholder" /></div>
        </LayoutTemplate>
        <SelectedItemTemplate>
        </SelectedItemTemplate>
    </asp:ListView>

    <asp:DataPager PagedControlID="ListView1" ID="DataPager1" PageSize="10" runat="server">
        <Fields>
            <asp:NumericPagerField ButtonCount="10" />
        </Fields>
    </asp:DataPager>



    <asp:SqlDataSource runat="server" ID="SDS_ListView" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand="DELETE FROM [Test] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Test] ([name], [content]) VALUES (@name, @content)" SelectCommand="SELECT * FROM [Test]" UpdateCommand="UPDATE [Test] SET [name] = @name, [content] = @content WHERE [Id] = @Id">
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

