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

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            /*
            string constring = ConfigurationManager.ConnectionStrings["EagleEatsDBConnectionString"].ConnectionString;
            //con = new SqlConnection("constring");

            string user = tbUser.Text;
            string password = tbPassword.Text;
            cmd = new SqlCommand();
            //con.Open();
            cmd.Connection = con;
            cmd.CommandText = "SELECT * FROM tblUser where usr='" + tbUser.Text + "' AND pwd='" + tbPassword.Text + "'";
            reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                Response.Redirect("MyDelivery.aspx");
            }
            else
            {
                MessageBox.Show("Invalid Login please check username and password");
            }
            */


            string Username = tbUser.Text;
            string Password = tbPassword.Text;
            int UserId;

            string constring = ConfigurationManager.ConnectionStrings["EagleEatsDBConnectionString"].ConnectionString;
            string query = "SELECT [Id], [Username], [Password] FROM [User] WHERE (([Username] = @Username) AND ([Password] = @Password))";

            using (var con = new SqlConnection(constring))
            {
                var command = new SqlCommand(query, con);
                command.Parameters.AddWithValue("@Username", Username);
                command.Parameters.AddWithValue("@Password", Password);

                try
                {
                    con.Open();
                    using (var reader = command.ExecuteReader(CommandBehavior.CloseConnection))
                    {
                        if (reader.Read())
                        {
                            Session["UserId"] = Convert.ToInt32(reader["Id"]);
                            Session["Password"] = Password;
                            Response.Redirect("MyDelivery.aspx");
                        }
                        /*
                        else
                        {
                            MessageBox.Show("Invalid Username: check information or sign up");
                        }
                        */
                    }
                }
                catch (Exception)
                {
                    MessageBox.Show("Invalid Username: Please re-check information or Sign Up.");
                }
            }
        }
    }
}