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
    public partial class AdminUpdateExtension : System.Web.UI.Page
    {
        protected void AdminUpdateExtensionProc(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["post"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            int ThesisSerialNo1 = Int16.Parse(ThesisSerialNo.Text);
            SqlCommand AdminUpdateExtension = new SqlCommand("AdminUpdateExtension", conn);
            AdminUpdateExtension.CommandType = CommandType.StoredProcedure;
            AdminUpdateExtension.Parameters.Add(new SqlParameter("@ThesisSerialNo", ThesisSerialNo1));
            if (ThesisSerialNo.Text == "")
                conn.Open();
            AdminUpdateExtension.ExecuteNonQuery();
            Response.Write("<script>alert('Your data has been successfully updated!')</script>");
            conn.Close();

        }
    }
}