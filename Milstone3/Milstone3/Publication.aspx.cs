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
    public partial class Publication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void add_Click(object sender, EventArgs e)
        {
            try
            {
                string connStr = WebConfigurationManager.ConnectionStrings["post"].ToString();
                SqlConnection conn = new SqlConnection(connStr);
                SqlCommand addAndLinkPublication = new SqlCommand("addAndLinkPublication", conn);
                addAndLinkPublication.CommandType = CommandType.StoredProcedure;
                String Title = title.Text;
                String Serial = SSN.Text;
                DateTime publDate = pubDate.SelectedDate;
                String pubHost = host.Text;
                String pubPlace = place.Text;
                bool accept = accepted.Checked;
                addAndLinkPublication.Parameters.Add(new SqlParameter("@title", Title));
                addAndLinkPublication.Parameters.Add(new SqlParameter("@pubDate", publDate));
                addAndLinkPublication.Parameters.Add(new SqlParameter("@host ", pubHost));
                addAndLinkPublication.Parameters.Add(new SqlParameter("@place", pubPlace));
                addAndLinkPublication.Parameters.Add(new SqlParameter("@accepted", accept));
                addAndLinkPublication.Parameters.Add(new SqlParameter("@thesisSerialNo ", Serial));
                SqlParameter success = addAndLinkPublication.Parameters.Add("@success", SqlDbType.Bit);
                success.Direction = ParameterDirection.Output;

                conn.Open();
                addAndLinkPublication.ExecuteNonQuery();
                if (success.Value.ToString() == "True")
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Publication added successfully" + "');", true);

                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Publication could not be added. You must enter a serial number for an ongoing thesis" + "');", true);

                }
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Please enter valid data!')</script>");

            }


        }
    }
}