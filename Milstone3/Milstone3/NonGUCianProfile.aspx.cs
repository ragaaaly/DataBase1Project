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
    public partial class NonGUCianProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["post"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand viewMyProfile = new SqlCommand("viewMyProfile", conn);
            viewMyProfile.CommandType = CommandType.StoredProcedure;
            int id = (int)Session["user"];
            viewMyProfile.Parameters.Add(new SqlParameter("@studentId", id));
            conn.Open();
            GridView2.EmptyDataText = "No Records Found";
            GridView2.DataSource = viewMyProfile.ExecuteReader();
            GridView2.DataBind();
            conn.Close();
        }
    }
}