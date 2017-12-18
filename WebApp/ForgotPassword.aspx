<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Forgot Password
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyContent" Runat="Server">
    <div class="col-sm-offset-1" style="padding: 16px;">
        <div class="row form-group">
            <label class="col-sm-2">Enter First Name:</label>
            <div class="col-sm-3">
                <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-5">
                <asp:RequiredFieldValidator runat="server" ID="reqFirstName" ControlToValidate="txtFirstName" ErrorMessage="First Name is required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row form-group">
            <label class="col-sm-2">Enter Last Name:</label>
            <div class="col-sm-3">
                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-5">
                <asp:RequiredFieldValidator runat="server" ID="reqLastName" ControlToValidate="txtLastName" ErrorMessage="Last Name is required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row form-group">
            <label class="col-sm-2">Enter Username:</label>
            <div class="col-sm-3">
                <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-5">
                <asp:RequiredFieldValidator runat="server" ID="reqUserName" ControlToValidate="txtUserName" ErrorMessage="User Name is required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group row">
            <div style="padding-right:500px">
                <asp:Button ID="btnGetPassowrd" runat="server" Text="Get Password" CssClass="btn btn-primary" OnClick="btnGetPassowrd_Click" />                                
            </div>
        </div>
    </div>
</asp:Content>

