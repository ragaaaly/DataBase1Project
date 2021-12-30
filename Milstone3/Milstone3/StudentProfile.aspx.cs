using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
namespace Milstone3
{
    public partial class StudentProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["post"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand viewMyProfile= new SqlCommand("viewMyProfile", conn);
            viewMyProfile.CommandType = CommandType.StoredProcedure;
            int id = (int)Session["user"];
            viewMyProfile.Parameters.Add(new SqlParameter("@studentId", id));
            conn.Open();
            GridView1.EmptyDataText = "No Records Found";
            GridView1.DataSource = viewMyProfile.ExecuteReader();
            GridView1.DataBind();
            conn.Close();
        }
    }
}