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
    public partial class RegisterExaminer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["postGradOffice"].ToString();       //is this the db name or the sql file name?
            SqlConnection conn = new SqlConnection(connStr);
            String first = firstName.Text;
            String last = lastName.Text;
            String pass = password.Text;
            String mail = email.Text;
            String field = fieldOfWork.Text;
            bool nation = false;
            if (national.Checked)
            {
                nation = true;
            }

            SqlCommand RegisterExaminerproc = new SqlCommand("ExaminerRegister", conn);
            RegisterExaminerproc.CommandType = CommandType.StoredProcedure;
            RegisterExaminerproc.Parameters.Add(new SqlParameter("@first_name", first));
            RegisterExaminerproc.Parameters.Add(new SqlParameter("@last_name ", last));
            RegisterExaminerproc.Parameters.Add(new SqlParameter("@password", pass));
            RegisterExaminerproc.Parameters.Add(new SqlParameter("@email", mail));
            RegisterExaminerproc.Parameters.Add(new SqlParameter("@fieldOfWork", field));
            RegisterExaminerproc.Parameters.Add(new SqlParameter("@isNational", nation));

            conn.Open();
            RegisterExaminerproc.ExecuteNonQuery();
            conn.Close();
        }
    
    }
}