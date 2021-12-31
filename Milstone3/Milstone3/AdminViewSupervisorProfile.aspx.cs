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
    public partial class AdminViewSupervisorProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void AdminViewSupervisorProfileProc(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["post"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand AdminViewSupervisorProfile = new SqlCommand("AdminViewSupervisorProfile", conn);
            AdminViewSupervisorProfile.CommandType = CommandType.StoredProcedure;
            int supId = Int16.Parse(supid.Text);
            AdminViewSupervisorProfile.Parameters.Add(new SqlParameter("@supId", supId));
            conn.Open();
            GridView1.EmptyDataText = "No Records Found";
            GridView1.DataSource = AdminViewSupervisorProfile.ExecuteReader();
            GridView1.DataBind();
            conn.Close();
        }
    }
}