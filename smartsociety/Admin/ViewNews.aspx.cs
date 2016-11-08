using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

using System.Configuration;
using Twilio;

namespace smartsociety.Admin
{
    public partial class ViewNews : System.Web.UI.Page
    {
        string str = @"Data Source=MISHRA\SQLSERVER;Initial Catalog=society;User ID=sa;Password=mmi263";
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

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("~/Login.aspx");

        }

        private void LoadGridView()
        {
            SqlConnection con = new SqlConnection(str);
            string qry1 = "select NewsID,Headline,Updated_Date from AllNews";
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
            string news_id = grdrow.Cells[1].Text;
            Response.Redirect("ViewNewsDetails.aspx?newsid='"+news_id+"'");

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(str);

            string qry2 = "Select * from AllNews where News_Type='Political'";
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

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(str);

            string qry2 = "Select * from AllNews where News_Type='Technical'";
            con.Open();
            cmd = new SqlCommand(qry2, con);
            dt = new DataTable();
            ad = new SqlDataAdapter(cmd);
            ad.Fill(dt);
            // conn.Close();
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(str);

            string qry2 = "Select * from AllNews where News_Type='Bussiness'";
            con.Open();
            cmd = new SqlCommand(qry2, con);
            dt = new DataTable();
            ad = new SqlDataAdapter(cmd);
            ad.Fill(dt);
            // conn.Close();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(str);

            string qry2 = "Select * from AllNews where News_Type='Sports'";
            con.Open();
            cmd = new SqlCommand(qry2, con);
            dt = new DataTable();
            ad = new SqlDataAdapter(cmd);
            ad.Fill(dt);
            // conn.Close();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(str);

            string qry2 = "Select * from AllNews where News_Type='Other'";
            con.Open();
            cmd = new SqlCommand(qry2, con);
            dt = new DataTable();
            ad = new SqlDataAdapter(cmd);
            ad.Fill(dt);
            // conn.Close();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
         /*   string ACCOUNT_SID = ConfigurationManager.AppSettings["ACCOUNT_SID"];
            string AUTH_TOKEN = ConfigurationManager.AppSettings["AUTH_TOKEN"];

            TwilioRestClient client = new TwilioRestClient(ACCOUNT_SID, AUTH_TOKEN);
            */
        }
    }
}