using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

public partial class _Default : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();

    string FirstName, LastName, UserID, Password;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Data source=DESKTOP-K6UI2A1;initial catalog=CodeFighters; integrated Security=true";
        con.Open();
    }
    protected void btnGetPassowrd_Click(object sender, EventArgs e)
    {
        //SqlCommand cmd = new SqlCommand("Select from UserDetails " + "(FirstName,LastName,Email,UserName,Password)values(@FirstName,@LastName,@Email,@UserName,@Password)", con);

        string query = "select FirstName,LastName,UserName,Password from UserDetails where UserName ='" + txtUserName.Text + "'";
        //string query = "select top 1000 * from UserDetails";
        cmd = new SqlCommand(query, con);
        cmd.CommandType = CommandType.Text;

        using (SqlDataReader dr = cmd.ExecuteReader())
        {
            if(dr.Read())
            {
                FirstName = dr["FirstName"].ToString();
                LastName = dr["LastName"].ToString();
                UserID = dr["UserName"].ToString();
                Password = dr["Password"].ToString();
                string decryptedPassword = DecryptPassword(Password);

                if ((txtFirstName.Text == FirstName) && (txtLastName.Text == LastName) && (txtUserName.Text == UserID))
                {
                    DialogResult dialogResult = MessageBox.Show(decryptedPassword, "Password Recovered", MessageBoxButtons.OK);
                    if (dialogResult == DialogResult.OK)
                    {
                        Response.Redirect("~/LoginAndRegister.aspx");
                    }
                }
                else
                {
                    DialogResult dialogResult = MessageBox.Show("No Records Found!", "Error", MessageBoxButtons.OK);
                    if (dialogResult == DialogResult.OK)
                    {
                        Response.Redirect("~/ForgotPassword.aspx");
                    }
                }
                con.Close();
            }
        }
    }
    public string DecryptPassword(string EncryptedPassword)
    {
        byte[] bytes = Convert.FromBase64String(EncryptedPassword);
        string DecryptPassword = System.Text.Encoding.Unicode.GetString(bytes);
        return DecryptPassword;
    }
}