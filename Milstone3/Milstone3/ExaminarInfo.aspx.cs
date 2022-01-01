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
    public partial class ExaminarInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged1(object sender, EventArgs e)
        {

        }

        protected void Save_Click(object sender, EventArgs e)
        {

        }

        protected void Supervisior(object sender, EventArgs e)
        {
            String connstr = WebConfigurationManager.ConnectionStrings["Post"].ToString();
            SqlConnection conn = new SqlConnection(connstr);
            int id = 3;
                //Int16.Parse();
            String nname = name.Text;
            String fieldof = work.Text;
            Boolean nation = True.Checked;

            SqlCommand updateproc = new SqlCommand("editExaminerProfile", conn);
            updateproc.Parameters.Add(new SqlParameter("@id", id));
            updateproc.Parameters.Add(new SqlParameter("@name",nname));
            updateproc.Parameters.Add(new SqlParameter("@fieldOfWork", fieldof));
            updateproc.Parameters.Add(new SqlParameter("@isNational", nation));
            updateproc.CommandType = CommandType.StoredProcedure;

            conn.Open();
            updateproc.ExecuteNonQuery();
            conn.Close();

        }

        protected void True_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}