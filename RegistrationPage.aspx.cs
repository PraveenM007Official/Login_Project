using System;
using System.Data.SqlClient;

namespace Login_Project
{
    public partial class RegistrationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection con = new SqlConnection(@"data source=(localdb)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Datadb.mdf;integrated security=true");

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                con.Open();
                SqlCommand cm = new SqlCommand("exec Userdata_insert @nm,@ag,@em,@ph,@un,@ps", con);
                cm.Parameters.AddWithValue("@nm", TextBox1.Text);
                cm.Parameters.AddWithValue("@ag", TextBox2.Text);
                cm.Parameters.AddWithValue("@em", TextBox3.Text);
                cm.Parameters.AddWithValue("@ph", TextBox4.Text);
                cm.Parameters.AddWithValue("@un", TextBox5.Text);
                cm.Parameters.AddWithValue("@ps", TextBox7.Text);
                cm.ExecuteNonQuery();
                Label1.Text = "Successfully Registered.";
                con.Close();
            }
            catch (Exception)
            {
                Label1.Text = "Check if username is availabe";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("exec Select_username @un", con);
            cmd.Parameters.AddWithValue("@un", TextBox5.Text);
            int temp = int.Parse(cmd.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Label1.Text = "UserName Already Exists";
            }
            else if (string.IsNullOrEmpty(TextBox5.Text))
            {
                Label1.Text = "Please Enter A UserName";
            }
            else
            {
                Label1.Text = "UserName Available";
            }
            con.Close();
        }
    }
}