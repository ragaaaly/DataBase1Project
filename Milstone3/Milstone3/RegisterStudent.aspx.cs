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
    public partial class RegisterStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["postGradOffice"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            String first = firstName.Text;
            String last = lastName.Text;
            String pass = password.Text;
            String fac = faculty.Text;
            String mail = email.Text;
            String add = address.Text;
            bool Guc=false;
            if (gucian.Checked)
            {
                Guc = true;
            }
            SqlCommand RegisterStudentproc = new SqlCommand("studentRegister", conn);
            RegisterStudentproc.CommandType = CommandType.StoredProcedure;
            RegisterStudentproc.Parameters.Add(new SqlParameter("@first_name", first));
            RegisterStudentproc.Parameters.Add(new SqlParameter("@last_name ", last ));
            RegisterStudentproc.Parameters.Add(new SqlParameter("@password", pass));
            RegisterStudentproc.Parameters.Add(new SqlParameter("@faculty", fac));
            RegisterStudentproc.Parameters.Add(new SqlParameter("@email", mail));
            RegisterStudentproc.Parameters.Add(new SqlParameter("@Gucian", Guc));
            RegisterStudentproc.Parameters.Add(new SqlParameter("@address", add));
            conn.Open();
            RegisterStudentproc.ExecuteNonQuery();
            conn.Close();

        }
    }
}