<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:ListView ID="ListView1" runat="server" DataSourceID="SDS_ListView" DataKeyNames="Id" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            
        </AlternatingItemTemplate>
        <EditItemTemplate>
            
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <span style="">name:
                <asp:TextBox Text='<%# Bind("name") %>' runat="server" ID="nameTextBox" /><br />
                content:
                <asp:TextBox TextMode="MultiLine" Rows="30" Text='<%# Bind("content") %>' runat="server" ID="contentTextBox" /><br />
                <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" /><asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" /><br />
                <br />
            </span>
        </InsertItemTemplate>
        <ItemTemplate>
            
        </ItemTemplate>
        <LayoutTemplate>
            <div runat="server" id="itemPlaceholderContainer" style=""><span runat="server" id="itemPlaceholder" /></div>
            <div style="">
                <asp:DataPager runat="server" ID="DataPager1">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False"></asp:NextPreviousPagerField>
                        <asp:NumericPagerField></asp:NumericPagerField>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False"></asp:NextPreviousPagerField>
                    </Fields>
                </asp:DataPager>

            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
 
        </SelectedItemTemplate>
    </asp:ListView>
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

