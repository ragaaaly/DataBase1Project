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
    public partial class SupervisorEvaluateReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void EvaluateProgressReport_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["post"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            int thesisNo = Int16.Parse(thesisSerialNo.Text);
            int reportNo = Int16.Parse(progressReportNo.Text);
            int eval = Int16.Parse(evaluation.Text);

            SqlCommand EvaluateProgressReport = new SqlCommand("EvaluateProgressReport", conn);
            EvaluateProgressReport.CommandType = CommandType.StoredProcedure;
            EvaluateProgressReport.Parameters.Add(new SqlParameter("@thesisSerialNo", thesisNo));
            EvaluateProgressReport.Parameters.Add(new SqlParameter("@progressReportNo", reportNo));
            EvaluateProgressReport.Parameters.Add(new SqlParameter("@evaluation", eval));
            int id = (int)Session["user"];
            EvaluateProgressReport.Parameters.Add(new SqlParameter("@supervisorID", id));
            SqlParameter success = EvaluateProgressReport.Parameters.Add("@success", SqlDbType.Bit);
            success.Direction = ParameterDirection.Output;


            conn.Open();
            EvaluateProgressReport.ExecuteNonQuery();
            if (eval == 0 || eval == 1 || eval == 2 || eval == 3)
            {
                if (success.Value.ToString() == "True")
                {
                    Response.Write("<script>alert('Your evaluation has been added')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Please Enter a valid thesis!')</script>");

                }

            }
            else
            {
                Response.Write("<script>alert('Please Enter an Evaluation value from 0 to 3!')</script>");
            }
            conn.Close();
        }

    }
}