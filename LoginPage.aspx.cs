using System;
using System.Data.SqlClient;

namespace Login_Project
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection con = new SqlConnection(@"data source=(localdb)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Datadb.mdf;integrated security=true");

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand com = new SqlCommand("exec Select_username @un", con);
            com.Parameters.AddWithValue("@un", TextBox1.Text);
            int temp = int.Parse(com.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1)
            {
                con.Open();
                SqlCommand com1 = new SqlCommand("exec Select_pass @usern", con);
                com1.Parameters.AddWithValue("@usern", TextBox1.Text);
                string password = com1.ExecuteScalar().ToString().Replace(" ", "");
                if (TextBox2.Text == password)
                {
                    Session["new"] = TextBox1.Text;
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    Label4.Text = "The given Username and password does not match.";
                }
                con.Close();
            }
            else
            {
                Label4.Text = "Username does not exist. Try regiter new account";
            }
        }
    }
}