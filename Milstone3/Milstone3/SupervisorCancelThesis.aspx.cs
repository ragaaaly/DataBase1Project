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
    public partial class SupervisorCancelThesis : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
                              //Make sure that it does what's intended

        protected void CancelThesis_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["post"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            int thesisNo = Int16.Parse(thesisSerialNo.Text);

            SqlCommand CancelThesis = new SqlCommand("CancelThesis", conn);
            CancelThesis.CommandType = CommandType.StoredProcedure;
            CancelThesis.Parameters.Add(new SqlParameter("@thesisSerialNo", thesisNo));
            SqlParameter success = CancelThesis.Parameters.Add("@success", SqlDbType.Bit);
            success.Direction = ParameterDirection.Output;

            conn.Open();
            CancelThesis.ExecuteNonQuery();

            if (success.Value.ToString() == "True")
            {
                Response.Write("<script>alert('Sadly, The thesis was cancelled!')</script>");

            }
            else
            {
                Response.Write("<script>alert('Thesis does not have last progress report evaluation as zero ')</script>");
            }
            conn.Close();
        }
    }
}