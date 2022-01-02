using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Milstone3
{
    public partial class Supervisor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ViewSupStudentsYears_Click(object sender, EventArgs e)
        {
            Response.Redirect("SupervisorStudents.aspx");
        }

        protected void AddExaminer_Click(object sender, EventArgs e)
        {
            Response.Redirect("SupervisorAddExaminer.aspx");
        }

        protected void SupViewProfil_Click(object sender, EventArgs e)
        {
            Response.Redirect("SupervisorProfile.aspx");
        }

        protected void UpdateSupProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("SupervisorUpdateProfile.aspx");
        }

        protected void EvaluateProgressReport_Click(object sender, EventArgs e)
        {
            Response.Redirect("SupervisorEvaluateReport.aspx");
        }

        protected void AddDefenseGucian_Click(object sender, EventArgs e)
        {
            Response.Redirect("SupervisorDefenseGUCian.aspx");
        }

        protected void AddDefenseNonGucian_Click(object sender, EventArgs e)
        {
            Response.Redirect("SupervisorDefenseNonGUCian.aspx");

        }

        protected void CancelThesis_Click(object sender, EventArgs e)
        {
            Response.Redirect("SupervisorCancelThesis.aspx");
        }
    }
}