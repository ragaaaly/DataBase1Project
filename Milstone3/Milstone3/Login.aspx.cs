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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loggingIn_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["postGradOffice"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            int user = Int16.Parse(id.Text);
            String pass = password.Text;
            SqlCommand Loginproc = new SqlCommand("userLogin", conn);
            Loginproc.CommandType = CommandType.StoredProcedure;
            Loginproc.Parameters.Add(new SqlParameter("@id", id));
            Loginproc.Parameters.Add(new SqlParameter("@password ", pass));
            SqlParameter success = Loginproc.Parameters.Add("@success", SqlDbType.Int);
            SqlParameter type = Loginproc.Parameters.Add("@type", SqlDbType.Int);
            success.Direction = ParameterDirection.Output;
            type.Direction = ParameterDirection.Output;
            conn.Open();
            Loginproc.ExecuteNonQuery();
            conn.Close();
            if (success.Value.ToString() == "1")
            {
                if (type.Value.ToString()=="0")
                {
                    Response.Redirect("Gucian");

                }
                else if(type.Value.ToString() == "1")
                {
                    Response.Redirect("Admin");

                }
                else if (type.Value.ToString() == "2")
                {
                    Response.Redirect("Supervisor");

                }
                else if (type.Value.ToString() == "3")
                {
                    Response.Redirect("Examiner");

                }
                else
                {
                    Response.Redirect("NonGucian");

                }
               
                Response.Write("Hello");
            }
            else
            {

            }

        }
    }
}