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
    public partial class RegisterSupervisor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["post"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            String first = firstName.Text;
            String last = lastName.Text;
            String pass = password.Text;
            String fac = faculty.Text;
            String mail = email.Text;
           
            SqlCommand RegisterSupervisorproc = new SqlCommand("supervisorRegister", conn);
            RegisterSupervisorproc.CommandType = CommandType.StoredProcedure;
            RegisterSupervisorproc.Parameters.Add(new SqlParameter("@first_name", first));
            RegisterSupervisorproc.Parameters.Add(new SqlParameter("@last_name ", last));
            RegisterSupervisorproc.Parameters.Add(new SqlParameter("@password", pass));
            RegisterSupervisorproc.Parameters.Add(new SqlParameter("@faculty", fac));
            RegisterSupervisorproc.Parameters.Add(new SqlParameter("@email", mail));
            SqlParameter user = RegisterSupervisorproc.Parameters.Add("@id", SqlDbType.Int);
            user.Direction = ParameterDirection.Output;
            conn.Open();
            RegisterSupervisorproc.ExecuteNonQuery();
            String supervisorid = "Your User-ID is: " + user.Value.ToString();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
             "alert('" + supervisorid + "');window.location ='Login.aspx';", true);
            //Response.Redirect("IntermediateSupervisor.aspx");
            conn.Close();
        }
    }
}