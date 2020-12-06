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
    public partial class deleteform : System.Web.UI.Page
    {
        bool flag = false;

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
            con.Open();

            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = "select EMAIL_ID from [Registered_Users] ";
            cmd1.Connection = con;

            SqlDataReader read = cmd1.ExecuteReader();

            while (read.Read())
            {
                if (read[0].ToString() == TextBox1.Text)
                {
                    flag = true;
                    break;
                }
                    

            }
            con.Close();
            SqlConnection con1 = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database2.mdf;Integrated Security=True");
            con1.Open();
            if (flag == true)
            {
                SqlCommand cmd = con1.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "delete from Registered_Users where EMAIL_ID='" + TextBox1.Text + "' and PASSWORD='" + TextBox2.Text + "'";
                cmd.ExecuteNonQuery();
                con1.Close();
                Session.Remove("User");
                Session.RemoveAll();
                //Response.Redirect("REGISTRATION.aspx");
            }
            else
            {
                Label1.Text = "RECORD NOT FOUND";
            }



            
           
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("registration.aspx");
        }
    }
}