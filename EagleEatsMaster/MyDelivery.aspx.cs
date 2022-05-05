using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EagleEatsMaster
{
    public partial class MyDelivery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void FormView1_ItemDeleted(object sender, FormViewDeletedEventArgs e)
        {
            this.GridView1.DataBind();
        }

        protected void FormView1_ItemCreated(object sender, EventArgs e)
        {
            this.GridView1.DataBind();
        }

        protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            this.GridView1.DataBind();
        }

        protected void btnComplete_Click(object sender, EventArgs e)
        {



        }
        protected void btnReview_Click(object sender, EventArgs e)
        {



        }
    }
    
}