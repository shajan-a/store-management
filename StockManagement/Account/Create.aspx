<%@ Page Title="Create" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="StockManagement.Account.Create" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="form-create" style="position: absolute; left: 316px; top: 175px; width: 40%; height: 40%">
        <h4 align="center">Create New</h4>
        <div class="form-group" align="center">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="User Name:"></asp:Label>
                    </td><td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Item:"></asp:Label>
                    </td><td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Count:"></asp:Label>
                    </td><td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Department:"></asp:Label>
                    </td><td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Designation:"></asp:Label>
                    </td><td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="Add" runat="server" Text="Create" OnClick="Add_Click"/>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
