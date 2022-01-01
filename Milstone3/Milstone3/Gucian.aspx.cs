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
    public partial class Gucian : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Theses_Click (object sender, EventArgs e)
        {
            Response.Redirect("GUCianTheses.aspx");
        }

        protected void profile_Click(object sender, EventArgs e)
        {
            Response.Redirect("GUCianProfile.aspx");

            
            //conn.Close();
            //SqlCommand addMobileproc = new SqlCommand("addMobile", conn);
            //addMobileproc.CommandType = CommandType.StoredProcedure;
            //int id = (int)Session["user"];
            //addMobileproc.Parameters.Add(new SqlParameter("@studentId ", id));
            //conn.Open();
            //addMobileproc.ExecuteNonQuery();
            //GridView1.EmptyDataText = "Exception For No Results Found";
            //GridView1.DataSource = RegisterSupervisorproc.ExecuteReader();
            //GridView1.DataBind();

        }

        protected void report_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddProgressReport.aspx");
        }

        protected void pub_Click(object sender, EventArgs e)
        {
            Response.Redirect("Publication.aspx");

        }

        protected void phone_Click(object sender, EventArgs e)
        {
            Response.Redirect("PhoneNumber.aspx");
        }
    }
}