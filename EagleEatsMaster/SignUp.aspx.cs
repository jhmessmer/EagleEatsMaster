using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EagleEatsMaster
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
                return;
            //step 1 prepare all parameters
            var parameters = this.SqlDataSource1.InsertParameters;
            parameters["UserId"].DefaultValue = tbUser.Text;
            parameters["Password"].DefaultValue = tbPassword.Text;
            parameters["Address"].DefaultValue = tbAddress.Text;

            try
            {
                //step 2 insert into db
                this.SqlDataSource1.Insert();

                //step 3 reset the controls
                resetControls();

                //step 4 redirect to itself to avoid resubmit the insert action
                Response.Redirect("SignUp.aspx");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

            protected void btnReset_Click(object sender, EventArgs e)
            {
                resetControls();
            }
            private void resetControls()
            {
                tbUser.Text = "";
                tbPassword.Text = "";
                tbAddress.Text = "";
            }
    }
}