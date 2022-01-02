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
    public partial class SupervisorUpdateProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                                
        }
                                 
        protected void UpdateSupProfile_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["post"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            String supName = supervisorname.Text;
            String fac = faculty.Text;
            int id = (int)Session["user"];

            SqlCommand UpdateSupProfileproc = new SqlCommand("UpdateSupProfile", conn);
            UpdateSupProfileproc.CommandType = CommandType.StoredProcedure;
            UpdateSupProfileproc.Parameters.Add(new SqlParameter("@name", supName));
            UpdateSupProfileproc.Parameters.Add(new SqlParameter("@faculty", fac));
            UpdateSupProfileproc.Parameters.Add(new SqlParameter("@supervisorID", id));


            conn.Open();
            UpdateSupProfileproc.ExecuteNonQuery();
            conn.Close();

            // I don't know whether to place gwa el connection or not and make sure it does work properly

            Response.Write("<script>alert('Your data has been updated!')</script>");       

        }
    }
}