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
    public partial class AddProgressReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void add_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["post"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand AddProgressReport = new SqlCommand("AddProgressReport", conn);
            AddProgressReport.CommandType = CommandType.StoredProcedure;
            int id = (int)Session["user"];
            String Serial = SSN.Text;
           // DateTime progressDate= reportDate.SelectedDate;
            String progressNumber = reportNo.Text;
            AddProgressReport.Parameters.Add(new SqlParameter("@thesisSerialNo ", Serial));
            AddProgressReport.Parameters.Add(new SqlParameter("@progressReportNo", progressNumber));
            AddProgressReport.Parameters.Add(new SqlParameter("@studentID", id));
            AddProgressReport.Parameters.Add(new SqlParameter("@progressReportDate", DateTime.Now));
            SqlParameter success = AddProgressReport.Parameters.Add("@success", SqlDbType.Bit);
            success.Direction = ParameterDirection.Output;

            SqlCommand FillProgressReport = new SqlCommand("FillProgressReport", conn);
            FillProgressReport.CommandType = CommandType.StoredProcedure;
            int reportStatus = Int16.Parse(status.Text);
            String reportDescription = description.Text;
            FillProgressReport.Parameters.Add(new SqlParameter("@thesisSerialNo ", Serial));
            FillProgressReport.Parameters.Add(new SqlParameter("@progressReportNo", progressNumber));
            FillProgressReport.Parameters.Add(new SqlParameter("@state", reportStatus));
            FillProgressReport.Parameters.Add(new SqlParameter("@description", reportDescription));
            FillProgressReport.Parameters.Add(new SqlParameter("@studentID", id));



            conn.Open();
            AddProgressReport.ExecuteNonQuery();
            FillProgressReport.ExecuteNonQuery();
            //Response.Write(success.Value.ToString());
            //Response.Write("<script>alert('Progress Report was successfully added')</script>");
            if (success.Value.ToString() == "True")
            {
                Response.Write("<script>alert('Progress Report was successfully added')</script>");
            }
            if(success.Value.ToString() == "False")
            {
               
                Response.Write("<script>alert('Could not add a Progress Report to a finished thesis')</script>");
            }
            conn.Close();
        }
    }
}