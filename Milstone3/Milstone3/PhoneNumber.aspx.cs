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
    public partial class PhoneNumber : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["post"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand addMobileproc = new SqlCommand("addMobile", conn);
            addMobileproc.CommandType = CommandType.StoredProcedure;
            String id = (String)Session["user"];
            String number = phone.Text;
            addMobileproc.Parameters.Add(new SqlParameter("@ID", id));
            addMobileproc.Parameters.Add(new SqlParameter("@mobile_number", number));

            conn.Open();
            addMobileproc.ExecuteNonQuery();
           
            conn.Close();
        }
    }
}