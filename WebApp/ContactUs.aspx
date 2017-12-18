<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Contact Us
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyContent" Runat="Server">
    <div>
        <h1 style="text-align:center; font-weight:bold;">Contact Us</h1>
        <br />
        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell CssClass="col-sm-offset-1">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12015.938452546141!2d-73.25883255290832!3d41.15668708714721!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x76d50a52d2ea290b!2sFairfield+University!5e0!3m2!1sen!2sus!4v1512672374793" width="460" height="350" style="border:1px solid;"></iframe>
                </asp:TableCell>
                <asp:TableCell>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </asp:TableCell>
                <asp:TableCell CssClass="col-sm-offset-1">
                    <h4>127 bannow science center</h4>
                    <h4>Fairfield University</h4>
                    <h4>1073 N Benson Rd</h4>
                    <h4>Fairfield CT 06824</h4>
                    <h3><strong>Phone:</strong><h4>(123)-456-7890</h4></h3>
                    <h3><strong>Email:</strong><h4>abc@codefighters.com</h4></h3>
                    <br /><br /><br /><br /><br />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />
    </div>
</asp:Content>

