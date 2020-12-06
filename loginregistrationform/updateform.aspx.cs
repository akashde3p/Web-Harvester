using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace loginregistrationform
{
    public partial class updateform : System.Web.UI.Page
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


            if (TextBox1.Text != "" && TextBox3.Text != "")
            {
                con.Open();
                String s = "select * from Registered_Users where EMAIL_ID='" + TextBox1.Text + "' and PASSWORD='" + TextBox3.Text + "'";
                SqlDataAdapter da = new SqlDataAdapter(s, con);
                DataSet ds = new DataSet();
                da.Fill(ds, "a");
                if (ds.Tables["a"].Rows.Count > 0)
                {
                    Response.Redirect("homepage.aspx");
                }
                else
                {
                    Label3.Text = "INVALID EMAIL ID OR PASSWORD";
                }

            }   
            if (TextBox5.Text != "")
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "update Registered_Users set FIRST_NAME='" + TextBox5.Text + "' where  EMAIL_ID='" + TextBox1.Text + "'";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("LOGIN.aspx");
            }
            if (TextBox6.Text != "")
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "update Registered_Users set LAST_NAME='" + TextBox6.Text + "' where EMAIL_ID='" + TextBox1.Text + "'";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("LOGIN.aspx");

            }
            if (TextBox7.Text != "")
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "update Registered_Users set MOBILE_NUMBER='" + TextBox7.Text + "' where EMAIL_ID='" + TextBox1.Text + "'";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("LOGIN.aspx");
            }
            if (TextBox8.Text != "")
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "update Registered_Users set EMAIL_ID='" + TextBox8.Text + "' where EMAIL_ID='" + TextBox1.Text + "'";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("LOGIN.aspx");
            }
            if (TextBox9.Text != "")
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "update Registered_Users set PASSWORD='" + TextBox9.Text + "' where EMAIL_ID='" + TextBox1.Text + "'";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("LOGIN.aspx");
            }
          

        }


    }
}