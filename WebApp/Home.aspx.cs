using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Unnamed_Click(object sender, EventArgs e)
    {
        //Response.RedirectLocation = @"C:/Users/naren/Desktop/MADAN SDM/Web Build/Web Build/index.html";
        //Response.Redirect("https://drive.google.com/file/d/1nKJUIy7hIAuenIIoUajGIzI_MKVyBIO_/view?usp=sharing");
        Response.Redirect("~/index.html");
    }
}