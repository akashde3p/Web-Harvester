using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace loginregistrationform
{
    public partial class REGISTRATION : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database2.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database2.mdf;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database2.mdf;Integrated Security=True");

            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Registered_Users values(@fname,@lname,@phn,@email,@pass)", con);
                    cmd.Parameters.AddWithValue("@fname", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@lname", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@phn", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@email", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@pass", TextBox5.Text);

                    cmd.ExecuteNonQuery();

                Response.Redirect("LOGIN.aspx");
               con.Close();
            }
         
        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }
    }
}