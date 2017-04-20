<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="StockManagement.Account.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="form-login" style="position: absolute; left: 316px; top: 175px; width: 40%; height: 40%">
        <h4 align="center">Login to your account</h4>
        <div class="form-group" align="center">
            <table border="solid black 1px">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
                    </td><td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                    </td><td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:CheckBox ID="CheckBox1" runat="server"/>
                        Remember me
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="Signin" runat="server" Text="SignIn"/>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>