using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace EagleEatsMaster
{
    public partial class CustomerSignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=EagleEatsDB;Integrated Security=False");
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO [User] (UserName, Passwd, Address) VALUES (@UserName, @Passwd, @Address)", con);
            cmd.Parameters.AddWithValue("@UserName", txtUsername.Text.ToString());
            cmd.Parameters.AddWithValue("@Passwd", txtPassword.Text.ToString());
            cmd.Parameters.AddWithValue("@Address", txtAddress.Text.ToString());
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                Session["User_Id"] = Convert.ToInt32(reader["User_Id"].ToString());
                Session["UserName"] = reader["UserName"].ToString();
                Session["Address"] = reader["Address"].ToString();
                Response.Redirect("Home.aspx");
                reader.Close();
                cmd.Dispose();
                con.Close();
                
            }
            else
            {
                reader.Close();
                cmd.Dispose();
                con.Close();
                Response.Redirect("Home.aspx");
            }
        }
    }
}