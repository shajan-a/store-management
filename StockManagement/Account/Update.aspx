<%@ Page Title="Update" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="StockManagement.Account.Update" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="form-update" style="position: absolute; left: 316px; top: 175px; width: 40%; height: 40%">
        <h4 align="center">Update Existing</h4>
        
        <div class="form-group" align="center">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label11" runat="server" Text="Name:"></asp:Label>
                    </td><td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label12" runat="server" Text="Item:"></asp:Label>
                    </td><td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label13" runat="server" Text="Count:"></asp:Label>
                    </td><td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label14" runat="server" Text="Department:"></asp:Label>
                    </td><td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label15" runat="server" Text="Designation:"></asp:Label>
                    </td><td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="Change" runat="server" Text="Update" OnClick="Change_Click"/>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
