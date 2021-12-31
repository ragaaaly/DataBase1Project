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
    public partial class AdminIssueThesisPayment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AdminIssueThesisPaymentProc(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["post"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            int ThesisSerialNo1 = Int16.Parse(ThesisSerialNo.Text);
            decimal amount1 = Decimal.Parse(amount.Text);
            int noOfInstallments1 = Int16.Parse(noOfInstallments.Text);
            decimal fundPercentage1 = Decimal.Parse(fundPercentage.Text);
            SqlCommand AdminIssueThesisPayment = new SqlCommand("AdminIssueThesisPayment", conn);
            AdminIssueThesisPayment.CommandType = CommandType.StoredProcedure;
            AdminIssueThesisPayment.Parameters.Add(new SqlParameter("@ThesisSerialNo", ThesisSerialNo1));
            AdminIssueThesisPayment.Parameters.Add(new SqlParameter("@amount ", amount1));
            AdminIssueThesisPayment.Parameters.Add(new SqlParameter("@noOfInstallments", noOfInstallments1));
            AdminIssueThesisPayment.Parameters.Add(new SqlParameter("@fundPercentage", fundPercentage1));
            conn.Open();
            AdminIssueThesisPayment.ExecuteNonQuery();
            conn.Close();
        }
    }
}