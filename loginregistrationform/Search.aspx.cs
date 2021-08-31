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

namespace loginregistrationform
{
    public partial class Search : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database2.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        SqlConnection conuser = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database2.mdf;Integrated Security=True");
        SqlCommand cmduser = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database2.mdf;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            SqlConnection conuser = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database2.mdf;Integrated Security=True");
            SqlCommand cmduser = new SqlCommand();

            if (Session["User"]!=null)
            {
                WebRequest wReq = WebRequest.Create("https://www.ebay.com/sch/ebayadvsearch");
                WebResponse mRes = wReq.GetResponse();
                StreamReader sr = new StreamReader(mRes.GetResponseStream());
                string sHTML = sr.ReadToEnd();
                sr.Close();
                mRes.Close();

                if (sHTML != string.Empty && sHTML != null)
                {
                    Literal1.Text = sHTML;

                }
            }

            else
            {
                Response.Redirect("Login.aspx");
            }
            
        }

        void Main(string[] args)
        {
            
            //Console.ReadLine();
        }
        async void GetHtmlAsync()
        {

            var url = TextBoxURL.Text;
            var httpclient = new HttpClient();
            var html = await httpclient.GetStringAsync(url);

            var htmlDocument = new HtmlDocument();
            htmlDocument.LoadHtml(html);
            var ProductsHtml = htmlDocument.DocumentNode.Descendants("ul")
                .Where(node => node.GetAttributeValue("id", "")
                    .Equals("ListViewInner")).ToList();

            var ProductListItems = ProductsHtml[0].Descendants("li")
                .Where(node => node.GetAttributeValue("id", "")
                    .Contains("item")).ToList();
            //Console.WriteLine(ProductListItems.Count());
            //Console.WriteLine();
            foreach (var ProductListItem in ProductListItems)
            {

                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database2.mdf;Integrated Security=True");
                SqlConnection conuser = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database2.mdf;Integrated Security=True");


                con.Open();
                conuser.Open();



                SqlCommand cmd = new SqlCommand("insert into User_Data values(@Id,@Product_Name,@Cost,@Info,@Link)", con);
                SqlCommand cmduser = new SqlCommand("insert into Refer values (@EMAIL_ID,@Id)", con);



                cmd.Parameters.AddWithValue("@Id", ProductListItem.GetAttributeValue("listingid", ""));//ID

                cmduser.Parameters.AddWithValue("@EMAIL_ID", Session["User"]);
                cmduser.Parameters.AddWithValue("@Id", ProductListItem.GetAttributeValue("listingid", ""));//ID



                cmd.Parameters.AddWithValue("@Product_Name", ProductListItem.Descendants("h3")
                    .Where(node => node.GetAttributeValue("class", "")
                    .Equals("lvtitle")).FirstOrDefault().InnerText.Trim('\r', '\n', '\t'));//ProductName


                cmd.Parameters.AddWithValue("@Cost", ProductListItem.Descendants("li")
                    .Where(node => node.GetAttributeValue("class", "")
                    .Equals("lvprice prc")).FirstOrDefault().InnerText.Trim('\r', '\n', '\t'));//Price


                cmd.Parameters.AddWithValue("@Info", ProductListItem.Descendants("li")
                    .Where(node => node.GetAttributeValue("class", "")
                    .Equals("lvformat")).FirstOrDefault().InnerText.Trim('\r', '\n', '\t'));//ListingType


                cmd.Parameters.AddWithValue("@Link", ProductListItem.Descendants("a").FirstOrDefault().GetAttributeValue("href", ""));//URL


                cmd.ExecuteNonQuery();
                cmduser.ExecuteNonQuery();

                con.Close();
                conuser.Close();

                TextBoxURL.Text = "";

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database2.mdf;Integrated Security=True");
            SqlConnection conuser = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database2.mdf;Integrated Security=True");

            GetHtmlAsync();
        }

        protected void ButtonPersonal_Click(object sender, EventArgs e)
        {
            Response.Redirect("personalData.aspx");
        }
    }
}

