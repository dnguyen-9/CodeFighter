using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

public partial class LoginAndRegister : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Data source=DESKTOP-K6UI2A1;initial catalog=CodeFighters; integrated Security=true";
        con.Open();
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string username = txtUserName.Text;
        string password = txtPassword.Text;

        if (username.Equals("AdminMadanVeerarouth1995") && password.Equals("adminpassword"))
        {
            Session["user"] = "MadanVeerarouth1995";
            Session["role"] = "admin";
            Response.Redirect("~/Home.aspx");
        }
        else
        {
            SqlCommand cmd = new SqlCommand("Select UserName, Password from UserDetails where UserName = '" + txtUserName.Text + "'", con);
            using (SqlDataReader dr = cmd.ExecuteReader())
            {
                if (dr.Read())
                {
                    string username_Database = dr[0].ToString();
                    string password_Database = DecryptPassword(dr[1].ToString());

                    if (username.Equals(username_Database) && password.Equals(password_Database))
                    {
                        Session["user"] = username;

                        Response.Redirect("~/Home.aspx");
                    }
                    else
                    {
                        DialogResult dialogResult = MessageBox.Show("Incorrect Username or Password!", "Error", MessageBoxButtons.OK);
                        if (dialogResult == DialogResult.OK)
                        {
                            Response.Redirect("~/Home.aspx");
                        }
                    }
                }
            }
        }
    }
    public string DecryptPassword(string EncryptedPassword)
    {
        byte[] bytes = Convert.FromBase64String(EncryptedPassword);
        string DecryptPassword = System.Text.Encoding.Unicode.GetString(bytes);
        return DecryptPassword;
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
}