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
    public partial class SupervisorAddExaminer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
                             
        protected void AddExaminer_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["post"].ToString();       //is this the db name or the sql file name?
            SqlConnection conn = new SqlConnection(connStr);
            String thesisNo = thesisSerialNo.Text;
            String examName = examinerName.Text;
            String pass = password.Text;
            String field = fieldOfWork.Text;
            DateTime defDate = DateTime.Parse(defenseDate.Text);

            bool nation = false;
            if (national.Checked)
            {
                nation = true;
            }

            SqlCommand AddExaminer = new SqlCommand("AddExaminer", conn);
            AddExaminer.CommandType = CommandType.StoredProcedure;
            AddExaminer.Parameters.Add(new SqlParameter("@ThesisSerialNo", thesisNo));
            AddExaminer.Parameters.Add(new SqlParameter("@ExaminerName", examName));
            AddExaminer.Parameters.Add(new SqlParameter("@Password", pass));
            AddExaminer.Parameters.Add(new SqlParameter("@DefenseDate", defDate));
            AddExaminer.Parameters.Add(new SqlParameter("@fieldOfWork", field));
            AddExaminer.Parameters.Add(new SqlParameter("@National", nation));
            SqlParameter user = AddExaminer.Parameters.Add("@eid", SqlDbType.Int);
            user.Direction = ParameterDirection.Output;
            SqlParameter fail = AddExaminer.Parameters.Add("@fail", SqlDbType.Bit);
            fail.Direction = ParameterDirection.Output;


            conn.Open();
            AddExaminer.ExecuteNonQuery();
            if (fail.Value.ToString() == "True") {
                Response.Write("<script>alert('Please Enter Valid Data!')</script>");
            }
            else {
                String examinerid = "Examiner User-ID is: " + user.Value.ToString();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
                         "alert('" + examinerid + "');window.location ='Login.aspx';", true);

                Response.Write("<script>alert('You have added an Examiner successfully!')</script>");

            }
            conn.Close();
        }
    }
 
    

}