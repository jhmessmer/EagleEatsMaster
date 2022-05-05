using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace EagleEatsMaster
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=EagleEatsDB;Integrated Security=False");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from [User] where UserName=@UserName and Passwd=@Passwd", con);
            cmd.Parameters.AddWithValue("@UserName", tbUser.Text.ToString());
            cmd.Parameters.AddWithValue("@Passwd", tbPassword.Text.ToString());
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                Session["User_Id"] = Convert.ToInt32(reader["User_Id"].ToString());
                Session["UserName"] = reader["UserName"].ToString();
                reader.Close();
                cmd.Dispose();
                con.Close();
                Response.Redirect("MyDelivery.aspx");
            }
            else
            {
                reader.Close();
                cmd.Dispose();
                con.Close();
                MessageBox.Show("Invalid credentials");
            }
        }
    }
}