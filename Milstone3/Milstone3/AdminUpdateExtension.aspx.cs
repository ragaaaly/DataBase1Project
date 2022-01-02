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
            try
            {
                int ThesisSerialNo1 = Int16.Parse(ThesisSerialNo.Text);
                SqlCommand AdminUpdateExtension = new SqlCommand("AdminUpdateExtension", conn);
                AdminUpdateExtension.CommandType = CommandType.StoredProcedure;
                AdminUpdateExtension.Parameters.Add(new SqlParameter("@ThesisSerialNo", ThesisSerialNo1));
                SqlParameter success = AdminUpdateExtension.Parameters.Add("@success", SqlDbType.Bit);
                success.Direction = ParameterDirection.Output;
                conn.Open();
                AdminUpdateExtension.ExecuteNonQuery();
                if (success.Value.ToString() == "True")
                {
                    Response.Write("<script>alert('Your data has been successfully updated!')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Please enter a valid Thesis Serial Number!')</script>");

                }
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Please enter a valid Thesis Serial Number!')</script>");
            }



        }
    }
}