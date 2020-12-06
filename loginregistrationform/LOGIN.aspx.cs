using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;

namespace loginregistrationform
{
    public partial class LOGIN : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database2.mdf;Integrated Security=True");


        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database2.mdf;Integrated Security=True");


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database2.mdf;Integrated Security=True");
            if (TextBox1.Text!="" && TextBox2.Text!="")
            {
                con.Open();
                String s = "select * from Registered_Users where EMAIL_ID='" + TextBox1.Text + "' and PASSWORD='" + TextBox2.Text + "'";
                SqlDataAdapter da = new SqlDataAdapter(s, con);
                DataSet ds = new DataSet();
                da.Fill(ds, "a");
                if(ds.Tables["a"].Rows.Count > 0)
                {
                    Session["User"] = TextBox1.Text;
                   // Session.RemoveAll();
                    Response.Redirect("Profile.aspx");
                }
                else
                {
                    Label1.Text = "INVALID CREDENTIALS";
                }

            }
           

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("updateform.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("deleteform.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("registration.aspx");
        }
    }
}