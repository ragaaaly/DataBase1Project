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
    public partial class SupervisorDefenseGUCian : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddDefenseGucian_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["post"].ToString();       //is this the db name or the sql file name?
            SqlConnection conn = new SqlConnection(connStr);
            String thesisNo = thesisSerialNo.Text;
            String defLocation = defenseLocation.Text;
            DateTime defDate = DateTime.Parse(defenseDate.Text);


            SqlCommand AddDefenseGucian = new SqlCommand("AddDefenseGucian", conn);
            AddDefenseGucian.CommandType = CommandType.StoredProcedure;
            AddDefenseGucian.Parameters.Add(new SqlParameter("@ThesisSerialNo", thesisNo));
            AddDefenseGucian.Parameters.Add(new SqlParameter("@DefenseDate", defDate));
            AddDefenseGucian.Parameters.Add(new SqlParameter("@DefenseLocation", defLocation));
            SqlParameter fail = AddDefenseGucian.Parameters.Add("@fail", SqlDbType.Bit);
            fail.Direction = ParameterDirection.Output;


            conn.Open();
            AddDefenseGucian.ExecuteNonQuery();
            if (fail.Value.ToString() == "True")
            {
                Response.Write("<script>alert('There is an exsiting defense for this thesis')</script>");

            }
            else {
                Response.Write("<script>alert('You have added the defense data successfully!')</script>");
            }
            conn.Close();
        }
    }
}