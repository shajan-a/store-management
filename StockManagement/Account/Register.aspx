<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="StockManagement.Account.Register" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="form-register" style="position: absolute; left: 316px; top: 175px; width: 40%; height: 40%">
        <h4 align="center">Register a new account</h4>
        <div class="form-group" align="center">
            <table border="solid black 1px">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Label">Username</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="form-control" Id="Username" runat="server" TextMode="SingleLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server">Gender</asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList Id="DropDownList1" runat="server" DataSourceID="SqlDataSource" DataTextField="Gender" DataValueField="Id"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" DeleteCommand="DELETE FROM [tbl_Genders] WHERE [Id] = @Id" InsertCommand="INSERT INTO [tbl_Genders] ([Gender]) VALUES (@Gender)" SelectCommand="SELECT [Id], [Gender] FROM [tbl_Genders]" UpdateCommand="UPDATE [tbl_Genders] SET [Gender] = @Gender WHERE [Id] = @Id">
                            <DeleteParameters>
                                <asp:Parameter Name="Id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Gender" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Gender" Type="String" />
                                <asp:Parameter Name="Id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server">Mobile</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" Id="Mobile" CssClass="form-control" TextMode="Phone" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server">Password</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" Id="Password" TextMode="Password" CssClass="form-control" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server">Confirm password</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" Id="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button runat="server" ID="Submit" OnClick="CreateUser_Click" Text="Submit" CssClass="btn btn-default" />
                    </td>
                </tr>
            </table>
        </div>
        <div class="form-group" align="center">
            <asp:RequiredFieldValidator runat="server" ControlToValidate="Username"
                CssClass="text-danger" ErrorMessage="The email field is required." />
            <br />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="DropDownList1"
                CssClass="text-danger" ErrorMessage="The Gender field is required." />
            <br />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                CssClass="text-danger" ErrorMessage="The password field is required." />
            <br />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
            <br />
            <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
        </div>
    </div>
</asp:Content>