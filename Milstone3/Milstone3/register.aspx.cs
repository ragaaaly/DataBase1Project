using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Milstone3
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Student_Click(object sender, EventArgs e)
        {
           Response.Redirect("RegisterStudent.aspx");

        }

        protected void Supervisor_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterSupervisor.aspx");

        }
        protected void Examiner_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterExaminer.aspx");
        }
    }
}