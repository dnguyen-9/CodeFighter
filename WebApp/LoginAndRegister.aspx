<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LoginAndRegister.aspx.cs" Inherits="LoginAndRegister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Login/Register
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" Runat="Server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyContent" Runat="Server">
    <div class="col-sm-offset-1" style="padding: 16px;">
        <div class="row form-group">
            <label class="col-sm-2">Enter Username:</label>
            <div class="col-sm-3">
                <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-5">
                <asp:RequiredFieldValidator runat="server" ID="reqUserName" ControlToValidate="txtUserName" ErrorMessage="User Name is required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row form-group">
            <label class="col-sm-2">Enter Password:</label>
            <div class="col-sm-3">
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            </div>
            <div class="col-sm-5">
                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="txtPassword" CssClass="text-danger" ErrorMessage="Password is required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-6">
                <asp:Label ID="lblWarning" runat="server" Text="Incorrect Username or Password!" Font-Size="Medium" CssClass="text-danger" ForeColor="Red" Visible="False"></asp:Label>
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-6 col-sm-offset-2">
                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="btnLogin_Click" />
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-primary" OnClick="btnCancel_Click" />
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-offset-2 col-sm-10">
                <p>
                    Not a registered user?
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignUp.aspx">Sign Up</asp:HyperLink>
                </p>
            </div>
            <div class="col-sm-offset-2 col-sm-10">
                <p>
                    Forgot Password?
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ForgotPassword.aspx">Click Here</asp:HyperLink>
                </p>
            </div>
        </div>
    </div>
</asp:Content>


