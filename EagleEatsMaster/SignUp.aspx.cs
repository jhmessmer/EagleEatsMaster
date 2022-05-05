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
    public partial class SignUp : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader reader;

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
                return;
            var parameters = this.SqlDataSource1.InsertParameters;
            parameters["UserName"].DefaultValue = tbUser.Text;
            parameters["Password"].DefaultValue = tbPassword.Text; 
            parameters["Address"].DefaultValue = tbAddress.Text;

            try
            {
                this.SqlDataSource1.Insert();

                Response.Redirect("Home.aspx");

            }
            catch (Exception)
            {
                
            }

           // SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=EagleEatsDB;Integrated Security=True");
           // {
           //     con.Open();
           //     SqlCommand cmd = new SqlCommand("INSERT into User values(@UserName, @Passwd, @Address)", con);
           //     cmd.Parameters.AddWithValue("UserName", tbUser.Text);
           //     cmd.Parameters.AddWithValue("Passwd", tbPassword.Text);
           //     cmd.Parameters.AddWithValue("Address", tbAddress.Text);
           //     cmd.ExecuteNonQuery();
           // }
            /*
            string Username = tbUser.Text;
            string Password = tbPassword.Text;
            string Confirm = tbConfirm.Text;
            string Address = tbAddress.Text;

            string constring = ConfigurationManager.ConnectionStrings["EagleEatsDBConnectionString"].ConnectionString;
            string query = "INSERT into [User] values(@UserName,@Passwd,@Address)";

            /*
            using (var con = new SqlConnection(constring));
            {
                var command = new SqlCommand(query, con);
                command.Parameters.AddWithValue("@UserName", Username);
                command.Parameters.AddWithValue("@Passwd", Password);
                command.Parameters.AddWithValue("@Address", Address);

                try
                {
                    con.Open();
                    using (var reader = command.ExecuteReader(CommandBehavior.CloseConnection))
                    {
                        if(reader.Read())
                        {
                            Session["User_Id"] = Convert.ToInt32(reader["Id"]);
                            Session["Passwd"] = Password;
                            Response.Redirect("Home.aspx");
                        }
                    }
                }
                catch (Exception)
                {
                    MessageBox.Show("Error");
                }
            }
            

            
            using (var con = new SqlConnection(constring))
            {                

                var command = new SqlCommand(query, con);
                if (Confirm != string.Empty || Password != string.Empty || Username != string.Empty || Address != string.Empty)
                {
                    if (Password == Confirm)
                    {
                        cmd = new SqlCommand("SELECT * from [User] WHERE UserName='" + Username + "'", con);
                        var reader = command.ExecuteReader();
                        if (reader.Read())
                        {
                            con.Close();
                            MessageBox.Show("Username already exists, please try another ", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        }
                        else
                        {
                            con.Close();
                            cmd = new SqlCommand("INSERT into [User] values(@UserName,@Passwd,@Address)", con);
                            command.Parameters.AddWithValue("@UserName", Username);
                            command.Parameters.AddWithValue("@Passwd", Password);
                            command.Parameters.AddWithValue("@Address", Address);
                            command.ExecuteNonQuery();
                            MessageBox.Show("Account successfully created. Please login now.", "Done", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            Response.Redirect("Home.aspx");
                        }
                    }
                    else
                    {
                        MessageBox.Show("Please ensure passwords match.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
                else
                {
                    MessageBox.Show("Please fill all fields.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            
           }
            */
           
        }
        }
}