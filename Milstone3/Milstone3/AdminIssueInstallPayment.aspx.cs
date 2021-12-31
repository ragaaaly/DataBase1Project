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
    public partial class AdminIssueInstallPayment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void AdminIssueInstallPaymentProc(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["post"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            int paymentID1 = Int16.Parse(paymentID.Text);
            DateTime InstallStartDate1 = DateTime.Parse(InstallStartDate.Text);
            SqlCommand AdminIssueInstallPayment = new SqlCommand("AdminIssueInstallPayment", conn);
            AdminIssueInstallPayment.CommandType = CommandType.StoredProcedure;
            AdminIssueInstallPayment.Parameters.Add(new SqlParameter("@paymentID", paymentID1));
            AdminIssueInstallPayment.Parameters.Add(new SqlParameter("@InstallStartDate ", InstallStartDate1));
            conn.Open();
            AdminIssueInstallPayment.ExecuteNonQuery();
            conn.Close();
        }
    }
}