using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proj
{
    public partial class Comments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String connstr = WebConfigurationManager.ConnectionStrings["post"].ToString();
            SqlConnection conn = new SqlConnection(connstr);

            string thess = thesisid.Text;
            DateTime dedate = Calendar1.SelectedDate;
            String comm = commentbox.Text;


            SqlCommand commproc = new SqlCommand("AddCommentsGrade", conn);

            commproc.Parameters.Add(new SqlParameter("@ThesisSerialNo", thess));
            commproc.Parameters.Add(new SqlParameter("@DefenseDate", dedate));
            commproc.Parameters.Add(new SqlParameter("@comments", comm));

            commproc.CommandType = CommandType.StoredProcedure;

            decimal grade = Decimal.Parse(Grade.Text) ;
                //Int16.Parse(Grade.Text);

            SqlCommand Gradeproc = new SqlCommand("AddDefenseGrade", conn);
            Gradeproc.Parameters.AddWithValue("@grade", grade);
            Gradeproc.Parameters.Add(new SqlParameter("@ThesisSerialNo", thess));
            Gradeproc.Parameters.Add(new SqlParameter("@DefenseDate", dedate));
            Gradeproc.CommandType = CommandType.StoredProcedure;


            conn.Open();
            commproc.ExecuteNonQuery();
            Gradeproc.ExecuteNonQuery();
            conn.Close();

        }

        protected void Grade_TextChanged(object sender, EventArgs e)
        {

        }
    }
}