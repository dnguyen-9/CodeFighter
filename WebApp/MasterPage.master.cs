using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Data source=DESKTOP-K6UI2A1;initial catalog=CodeFighters; integrated Security=true";
        con.Open();

        SqlCommand cmd = new SqlCommand("Select FirstName, LastName from UserDetails where UserName = '" + Session["user"] + "'", con);
        using (SqlDataReader dr = cmd.ExecuteReader())
        {
            if(dr.Read())
            {
                lblFirstName.Text = dr[0].ToString();
                lblLastName.Text = dr[1].ToString();
            }
        }
    }
    protected void Logout_Click(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            Session.Clear();
            Response.Redirect("Home.aspx");
        }
    }
}
