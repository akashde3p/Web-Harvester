using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Net.Http;
using HtmlAgilityPack;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
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
    public partial class personalData : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database2.mdf;Integrated Security=True;Connect Timeout=30";


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] != null)
            {
                
                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    SqlCommand cmd = sqlCon.CreateCommand();
                    //cmd.Commandtype = CommandType.Text;
                    cmd.CommandText = "SELECT * FROM User_Data where Id in (select Id from Refer where EMAIL_ID ='" + Session["User"] + "')";
                    cmd.ExecuteNonQuery();
                    DataTable dtbl = new DataTable();
                    SqlDataAdapter sqlDa = new SqlDataAdapter(cmd);

                    //SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM User_Data Id in (select Id from Refer where EMAIL_ID ='"+Session["User"]+"'"), sqlCon);


                    sqlDa.Fill(dtbl);
                    GridView1.DataSource = dtbl;
                    GridView1.DataBind();
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("profile.aspx");
        }
    }
}