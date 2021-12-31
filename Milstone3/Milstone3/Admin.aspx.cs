using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Milstone3
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void AdminViewSupervisorProfile(object sender, EventArgs e)
        {
            Response.Redirect("AdminViewSupervisorProfile.aspx");
        }
        protected void AdminViewAllTheses(object sender, EventArgs e)
        {
            Response.Redirect("AdminViewAllTheses.aspx");
        }
        protected void AdminViewOnGoingTheses(object sender, EventArgs e)
        {
            Response.Redirect("AdminViewOnGoingTheses.aspx");
        }
        protected void AdminIssueThesisPayment(object sender, EventArgs e)
        {
            Response.Redirect("AdminIssueThesisPayment.aspx");
        }
        protected void AdminIssueInstallPayment(object sender, EventArgs e)
        {
            Response.Redirect("AdminIssueInstallPayment.aspx");
        }
        protected void AdminUpdateExtension(object sender, EventArgs e)
        {
            Response.Redirect("AdminUpdateExtension.aspx");
        }
    }
}