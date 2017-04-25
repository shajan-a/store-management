<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Store.aspx.cs" Inherits="StockManagement.Account.Store" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-store" style="position: absolute; left: 316px; top: 175px; width: 40%; height: 40%">
        <h4 align="center" style="text-decoration: underline">
            <strong>Stock details</strong>

        </h4>
        <div class="form-group" align="center">
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#00000" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False" DataKeyNames="Id" ShowHeaderWhenEmpty="True" EmptyDataText="No records Found">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="UserId" HeaderText="User Id" SortExpression="UserId" />
                    <asp:BoundField DataField="ItemId" HeaderText="Item Id" SortExpression="ItemId" />
                    <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
                    <asp:BoundField DataField="Accessdate" HeaderText="Access Date" SortExpression="Accessdate" />
                    <asp:BoundField DataField="DeptId" HeaderText="Dept Id" SortExpression="DeptId" />
                    <asp:BoundField DataField="RolesId" HeaderText="Roles Id" SortExpression="RolesId" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" SelectCommand="SELECT [Id], [UserId], [ItemId], [Stock], [Accessdate], [DeptId], [RolesId] FROM [tbl_StockTrack]">
            </asp:SqlDataSource>
            <asp:Button ID="Create" runat="server" Text="Add" OnClick="Create_Click" />
            <asp:Button ID="Update" runat="server" Text="Change" OnClick="Update_Click" />
            <asp:Button ID="Delete" runat="server" Text="Delete" OnClick="Delete_Click" />
        </div>
    </div>
</asp:Content>