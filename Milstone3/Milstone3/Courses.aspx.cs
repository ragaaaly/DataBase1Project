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
    public partial class Courses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["post"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand ViewCoursesGrades = new SqlCommand("ViewCoursesGrades", conn);
            ViewCoursesGrades.CommandType = CommandType.StoredProcedure;
            int id = (int)Session["user"];
            ViewCoursesGrades.Parameters.Add(new SqlParameter("@studentId", id));
            conn.Open();
            GridView3.EmptyDataText = "No Records Found";
            GridView3.DataSource = ViewCoursesGrades.ExecuteReader();
            GridView3.DataBind();
            conn.Close();
        }
    }
}