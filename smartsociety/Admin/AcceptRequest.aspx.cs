using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace smartsociety.Admin
{
    public partial class AcceptRequest : System.Web.UI.Page
    {
        string str = @"Data Source=MISHRA\SQLSERVER;Initial Catalog=society;User ID=sa;Password=mmi263";
        SqlConnection con;
        SqlCommand cmd;
        DataTable dt;
        SqlDataAdapter ad;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User_ID"] != null)
            {
                Label1.Text = Session["User_ID"].ToString();
            }
            else
            {
                Response.Redirect("~/Login.aspx");
            }


            if (!IsPostBack)
            {
                LoadGridView();
            }
        }

        private void LoadGridView()
        {
            SqlConnection con = new SqlConnection(str);
            string qry1 = "select Maint_ID,Subject,Currentstatus,Updated_Date from Maintenance";
            con.Open();
            cmd = new SqlCommand(qry1, con);
            dt = new DataTable();
            ad = new SqlDataAdapter(cmd);
            ad.Fill(dt);
            // conn.Close();
            GridView1.DataSource = dt;
            GridView1.DataBind();

            con.Close();
        }
        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            GridViewRow grdrow = (GridViewRow)((LinkButton)sender).NamingContainer;
            string main_id = grdrow.Cells[0].Text;
            Response.Redirect("ViewRequest.aspx?maint_id='"+main_id+"'");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("~/Login.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(str);

            string qry2 = "Select * from Maintenance where Currentstatus='Resolved'";
            con.Open();
            cmd = new SqlCommand(qry2, con);
            dt = new DataTable();
            ad = new SqlDataAdapter(cmd);
            ad.Fill(dt);
            // conn.Close();
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(str);

            string qry2 = "Select * from Maintenance where Currentstatus='Unresolved'";
            con.Open();
            cmd = new SqlCommand(qry2, con);
            dt = new DataTable();
            ad = new SqlDataAdapter(cmd);
            ad.Fill(dt);
            // conn.Close();
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }
    }
}