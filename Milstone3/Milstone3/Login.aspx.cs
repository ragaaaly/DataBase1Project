using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel;
using System.Drawing;
using System.Text;
using System.Threading.Tasks;
//using System.Windows.Forms;

namespace Milstone3
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void loggingIn_Click(object sender, EventArgs e)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["post"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            try
            {
                int user = Int16.Parse(id.Text);
                String pass = password.Text;
                SqlCommand Loginproc = new SqlCommand("userLogin", conn);
                Loginproc.CommandType = CommandType.StoredProcedure;
                Loginproc.Parameters.Add(new SqlParameter("@id", user));
                Loginproc.Parameters.Add(new SqlParameter("@password ", pass));
                SqlParameter success = Loginproc.Parameters.Add("@success", SqlDbType.Bit);
                SqlParameter type = Loginproc.Parameters.Add("@type", SqlDbType.Int);
                success.Direction = ParameterDirection.Output;
                type.Direction = ParameterDirection.Output;
                conn.Open();
                Loginproc.ExecuteNonQuery();
                if (success.Value.ToString() == "True")
                {
                    Session["user"] = user;
                    if (type.Value.ToString() == "0")
                    {
                        Response.Redirect("Gucian.aspx");

                    }
                    else if (type.Value.ToString() == "1")
                    {
                        Response.Redirect("Admin.aspx");

                    }
                    else if (type.Value.ToString() == "2")
                    {
                        Response.Redirect("Supervisor.aspx");

                    }
                    else if (type.Value.ToString() == "3")
                    {
                        Response.Redirect("Eaminer home.aspx");

                    }
                    else
                    {
                        Response.Redirect("NonGucian.aspx");

                    }

                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Wrong User-id or password" + "');", true);

                }
                conn.Close();
                Response.Write("<script>alert('Welcome!')</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Please enter valid data!')</script>");
            }

        }
        protected void register_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }

    }
}