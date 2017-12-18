using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.Security;
using System.Windows.Forms;

public partial class SignUp : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Data source=DESKTOP-K6UI2A1;initial catalog=CodeFighters; integrated Security=true";
        con.Open();
    }
    protected void btnSignUp_Click(object sender, EventArgs e)
    {
        if (AgreeID.Checked == true)
        {
            //string sha1 = "SHA1";
            string hashedPassword = EncryptedPassword(txtPassword.Text);
            SqlCommand cmd = new SqlCommand("Insert into UserDetails " + "(FirstName,LastName,Email,UserName,Password)values(@FirstName,@LastName,@Email,@UserName,@Password)", con);
            cmd.Parameters.AddWithValue("@FirstName", txtFirstName.Text);
            cmd.Parameters.AddWithValue("@LastName", txtLastName.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@UserName", txtUserName.Text);
            cmd.Parameters.AddWithValue("@Password", hashedPassword);
            cmd.ExecuteNonQuery();
            con.Close();
            DialogResult dialogResult = MessageBox.Show("User registered sucessfully!", "Message Box", MessageBoxButtons.OK);
            if (dialogResult == DialogResult.OK)
            {
                Response.Redirect("~/Home.aspx");
            }
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('user registered sucessfully!');</script>");
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('You must agree with the terms and conditions');</script>");
        }
    }
    private string EncryptedPassword(string Password)
    {
        byte[] bytes = System.Text.Encoding.Unicode.GetBytes(Password);
        string EncryptedPassword = Convert.ToBase64String(bytes);
        return EncryptedPassword;
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtFirstName.Text = "";
        txtLastName.Text = "";
        txtEmail.Text = "";
        txtUserName.Text = "";
        txtPassword.Text = "";
        txtPassword2.Text = "";
    }
}