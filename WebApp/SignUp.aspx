<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Sign Up
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyContent" Runat="Server">
    <div class="col-sm-offset-3 form-group" style="padding:25px">
        <asp:ValidationSummary runat="server" ID="ValidationSummary" CssClass="text-danger summary" HeaderText="Few fields are  missing" />
        <div class="form-group row">
            <label class="col-sm-12">Your First Name:</label>
            <div class="col-sm-7">
                <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-5">
                <asp:RequiredFieldValidator runat="server" ID="reqFirstName" ControlToValidate="txtFirstName" CssClass="text-danger" ErrorMessage="First Name is required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-12">Your Last Name:</label>
            <div class="col-sm-7">
                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-5">
                <asp:RequiredFieldValidator runat="server" ID="reqLastName" ControlToValidate="txtLastName" CssClass="text-danger" ErrorMessage="Last Name is required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-12">Email:</label>
            <div class="col-sm-7">
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
            </div>
            <div class="col-sm-5">
                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ControlToValidate="txtEmail" CssClass="text-danger" ErrorMessage="Email is required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="EmailRegularExpressionValidator" runat="server"
                ControlToValidate="txtEmail" ErrorMessage="Must be a valid email address"
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="text-danger"
                Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-12">Enter a UserName:</label>
            <div class="col-sm-7">
                <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-5">
                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" ControlToValidate="txtUserName" CssClass="text-danger" ErrorMessage="User Name is required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-12">Password:</label>
            <div class="col-sm-7">
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            </div>
            <div class="col-sm-5">
                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ControlToValidate="txtPassword" CssClass="text-danger" ErrorMessage="Password is required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-12">Re-Enter Password:</label>
            <div class="col-sm-7">
                <asp:TextBox ID="txtPassword2" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            </div>
            <div class="col-sm-5">
                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ControlToValidate="txtPassword2" CssClass="text-danger" ErrorMessage="Password is required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator runat="server" ID="comparePassword" ControlToCompare="txtPassword" ControlToValidate="txtPassword2" CssClass="text-danger" ErrorMessage="Password does not match" Display="Dynamic" ForeColor="Red"></asp:CompareValidator>
            </div>
        </div>
        <div class="form-group row col-sm-12">
            <asp:CheckBox runat="server" ID="AgreeID" />
            <label>I have read all the terms and conditions and I agree with these.</label>
        </div>
        <div class="form-group row">
            <div class="col-sm-6 col-sm-offset-2">
                <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" CssClass="btn btn-primary" OnClick="btnSignUp_Click" />
                <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-primary" OnClick="btnClear_Click" />
            </div>
        </div>
    </div>
</asp:Content>

