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
    public partial class Profile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database2.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(Session["User"] != null)
            {
                Label1.Text = Session["User"].ToString();
            }
            else
            {
                Response.Redirect("login.aspx");
            }
            

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database2.mdf;Integrated Security=True");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Remove("User");
            Session.RemoveAll();
            Response.Redirect("LOGIN.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("search.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("updateform.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("personalData.aspx");
        }
    }
}