using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Milstone3
{
    public partial class NonGucian : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
       
        }

        protected void profile_Click(object sender, EventArgs e)
        {
            Response.Redirect("NonGucianProfile.aspx");
        }

        protected void Theses_Click(object sender, EventArgs e)
        {
            Response.Redirect("GUCianTheses.aspx");

        }

        protected void courses_Click(object sender, EventArgs e)
        {

            Response.Redirect("Courses.aspx");

        }

        protected void report_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddProgressReport.aspx");

        }

        protected void pub_Click(object sender, EventArgs e)
        {
            Response.Redirect("Publication.aspx");

        }

        protected void phone_Click(object sender, EventArgs e)
        {
            Response.Redirect("PhoneNumber.aspx");

        }
    }
}
