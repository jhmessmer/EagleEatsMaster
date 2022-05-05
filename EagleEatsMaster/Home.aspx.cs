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

        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader reader;
        protected void btnLogin_Click(object sender, EventArgs e)
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

            /*
            string Username = tbUser.Text;
            string Password = tbPassword.Text;
            int loggedinUserId;

            //SqlConnection conn = 
            string constring = ConfigurationManager.ConnectionStrings["EagleEatsDBConnectionString"].ConnectionString;
            string query = "SELECT [User_Id], [UserName], [Passwd] FROM [User] WHERE (([UserName] = @UserName) AND ([Passwd] = @Passwd))";
            
            using (var con = new SqlConnection(constring))
            {
                var command = new SqlCommand(query, con);
                command.Parameters.AddWithValue("@UserName", Username);
                command.Parameters.AddWithValue("@Passwd", Password);

                try
                {
                    con.Open();
                    using (var reader = command.ExecuteReader(CommandBehavior.CloseConnection))
                    {
                        if (reader.HasRows)
                        {
                            if (reader.Read())
                            {
                                loggedinUserId = (int)reader["Id"];
                                Session["User_Id"] = loggedinUserId.ToString();
                                Session["UserName"] = reader["UserName"].ToString();
                                //Session["User_Id"] = Convert.ToInt32(reader["Id"]);
                                Response.Redirect("MyDelivery.aspx");
                            }
                        }
                    }
                }
                catch (Exception)
                {
                   MessageBox.Show("Invalid Username: Please re-check information or Sign Up.");
                }
            
            }
            
        }

    } */
}
    