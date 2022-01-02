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
    public partial class SupervisorDefenseNonGUCian : System.Web.UI.Page
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


            SqlCommand AddDefenseNonGucian = new SqlCommand("AddDefenseNonGucian", conn);
            AddDefenseNonGucian.CommandType = CommandType.StoredProcedure;
            AddDefenseNonGucian.Parameters.Add(new SqlParameter("@ThesisSerialNo", thesisNo));
            AddDefenseNonGucian.Parameters.Add(new SqlParameter("@DefenseDate", defDate));
            AddDefenseNonGucian.Parameters.Add(new SqlParameter("@DefenseLocation", defLocation));
            SqlParameter fail = AddDefenseNonGucian.Parameters.Add("@fail", SqlDbType.Bit);
            fail.Direction = ParameterDirection.Output;
            SqlParameter failCourses = AddDefenseNonGucian.Parameters.Add("@failCourses", SqlDbType.Bit);
            failCourses.Direction = ParameterDirection.Output;


            conn.Open();
            AddDefenseNonGucian.ExecuteNonQuery();
            if (fail.Value.ToString() == "True")
            {
                Response.Write("<script>alert('There is an exsiting defense for this thesis')</script>");

            }
            else
            {
                if (failCourses.Value.ToString() == "True") {
                    Response.Write("<script>alert('Sadly, you can not add a defenese for a student who has failed a course')</script>");
                }
                else {
                    Response.Write("<script>alert('You have added the defense data successfully!')</script>");
                }
            }
            conn.Close();
        }
    }
}