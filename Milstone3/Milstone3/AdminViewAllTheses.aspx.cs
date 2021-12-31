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
    public partial class AdminViewAllTheses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["post"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand AdminViewAllTheses = new SqlCommand("AdminViewAllTheses", conn);
            AdminViewAllTheses.CommandType = CommandType.StoredProcedure;
            conn.Open();
            GridView1.EmptyDataText = "No Records Found";
            GridView1.DataSource = AdminViewAllTheses.ExecuteReader();
            GridView1.DataBind();
            conn.Close();

        }
    }
}