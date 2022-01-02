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
    public partial class Prework : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        { }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String connstr = WebConfigurationManager.ConnectionStrings["post"].ToString();
            SqlConnection conn = new SqlConnection(connstr);

            int id = (int)Session["user"];

            SqlCommand tourtproc = new SqlCommand("tourturedgucian", conn);
            tourtproc.CommandType = CommandType.StoredProcedure;
            tourtproc.Parameters.Add(new SqlParameter("@id", id));

            conn.Open();
            tourtproc.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter(tourtproc);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            conn.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String connstr = WebConfigurationManager.ConnectionStrings["post"].ToString();
            SqlConnection conn = new SqlConnection(connstr);

            int id = (int)Session["user"];

            SqlCommand tourtproc = new SqlCommand("tourturednonguc", conn);
            tourtproc.CommandType = CommandType.StoredProcedure;
            tourtproc.Parameters.Add(new SqlParameter("@id", id));

            conn.Open();
            tourtproc.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter(tourtproc);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            conn.Close();

        }
    }
}