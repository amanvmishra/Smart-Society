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
    public partial class ViewNewsDetails : System.Web.UI.Page
    {
        string str = @"Data Source=MISHRA\SQLSERVER;Initial Catalog=society;User ID=sa;Password=mmi263";

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

            string Newsid = Request.QueryString["newsid"];
            Newsid = Newsid.Remove(Newsid.IndexOf("'"), 1);
            Newsid = Newsid.Remove(Newsid.LastIndexOf("'"), 1);

            Label2.Text = Newsid;
            string qry1 = "select * from AllNews where NewsID='"+Newsid+"'";

            SqlConnection con = new SqlConnection(str);
            con.Open();

            SqlCommand cmd = new SqlCommand(qry1, con);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Label2.Text = Newsid;
                Label3.Text = dr["News_Type"].ToString();
                Label4.Text = dr["Headline"].ToString();
                Label5.Text = dr["Updated_Date"].ToString();
                Label6.Text = dr["News_Details"].ToString();

            }



        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            Session.RemoveAll();
            Response.Redirect("~/Login.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateNews.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewNews.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("SocietyNewsUpdate.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewSocietyNews.aspx");
        }
    }
}