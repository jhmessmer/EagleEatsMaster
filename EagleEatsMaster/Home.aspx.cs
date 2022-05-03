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
            string Username = tbUser.Text;
            string Password = tbPassword.Text;
            int loggedIntUser ID;

            string constring = ConfigurationManager.ConnectionString["EagleEastConnectionString"].ConnectionString;
            string query = "SELECT [Id], [Username], [Password] FROM [User] WHERE (([Username] = @Username) AND ([Password] = @Password));
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            { 
                System.Diagnostics.Process.Start("");
            }
            else
            {
                MessageBox.Show("Invalid Login please check username and password");
            }
        }
    }
}
    