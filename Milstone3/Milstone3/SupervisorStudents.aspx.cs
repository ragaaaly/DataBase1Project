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
    public partial class SupervisorStudents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["post"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand ViewSupStudentsYears = new SqlCommand("ViewSupStudentsYears", conn);
            ViewSupStudentsYears.CommandType = CommandType.StoredProcedure;
            int id = (int)Session["user"];
            ViewSupStudentsYears.Parameters.Add(new SqlParameter("@supervisorID", id));
            conn.Open();
            GridView1.EmptyDataText = "No Records Found";
            GridView1.DataSource = ViewSupStudentsYears.ExecuteReader();
            GridView1.DataBind();
            conn.Close();
        }                           
        protected void ViewAStudentPublications_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(studentID.Text)){ 
                Response.Write("<script>alert('Please Enter an ID')</script>");
            }
            else {
                int sid = Int16.Parse(studentID.Text);
                Session["stID"] = sid;
                Response.Redirect("StudentPublications.aspx");
            }
        }
    }
}