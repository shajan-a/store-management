<%@ Page Title="Upadte" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="StockManagement.Account.Update" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="form-update" style="position: absolute; left: 316px; top: 175px; width: 40%; height: 40%">
        <h4 align="center">Delete</h4>
        <div class="form-group" align="center">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
                    </td><td>
                        <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Item:"></asp:Label>
                    </td><td>
                        <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Count:"></asp:Label>
                    </td><td>
                        <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Department:"></asp:Label>
                    </td><td>
                        <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Designation:"></asp:Label>
                    </td><td>
                        <asp:Label ID="Label10" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="Change" runat="server" Text="Change"/>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
