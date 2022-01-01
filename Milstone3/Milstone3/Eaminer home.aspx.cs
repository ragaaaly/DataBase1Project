using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proj
{
    public partial class Eaminer_home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Prework.aspx");
        }

        protected void profile_Click(object sender, EventArgs e)
        {
            Response.Redirect("ExaminarInfo.aspx");
        }

        protected void Search_Click(object sender, EventArgs e)
        {
            Response.Redirect("theeeesis.aspx");
        }

        protected void grade_Click(object sender, EventArgs e)
        {
            Response.Redirect("Comments.aspx");
        }
    }
}