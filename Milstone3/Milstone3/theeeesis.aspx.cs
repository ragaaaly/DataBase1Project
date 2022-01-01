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
    public partial class theeeesis : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String connstr = WebConfigurationManager.ConnectionStrings["post"].ToString();
            SqlConnection conn = new SqlConnection(connstr);

            String search = TextBox1.Text;

            SqlCommand searchproc = new SqlCommand("search",conn);
            searchproc.CommandType = CommandType.StoredProcedure;
            searchproc.Parameters.Add(new SqlParameter("@name",search));

            conn.Open();
            searchproc.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter(searchproc);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            conn.Close();

            //if (name.Value == null) { Response.Write("404 Not Found"); }


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
         

        }
    }
}