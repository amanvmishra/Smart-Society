using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace smartsociety.Admin
{
    public partial class ListAllFlats : System.Web.UI.Page
    {
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
            SqlConnection conn = new SqlConnection(@"Data Source=MISHRA\SQLSERVER;Initial Catalog=society;User ID=sa;Password=mmi263");
            string qry1 = "select Flat_ID,Owner,Flat_Size,Type,Block from Flat";
            conn.Open();
            SqlCommand cmd = new SqlCommand(qry1, conn);
            DataTable dt = new DataTable();
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            ad.Fill(dt);
           // conn.Close();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("~/Login.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {

            GridViewRow grdrow = (GridViewRow)((LinkButton)sender).NamingContainer;
            string flat = grdrow.Cells[0].Text;
            Response.Redirect("FlatDetails.aspx?flatid='"+flat+"'");

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListAllFlats.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton3_Click1(object sender, EventArgs e)
        {
            Response.Redirect("AptDetailsView.aspx");
        }
    }
}