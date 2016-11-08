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
    public partial class ViewRequest : System.Web.UI.Page
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

            string Main_Id = Request.QueryString["maint_id"];
            Main_Id = Main_Id.Remove(Main_Id.IndexOf("'"), 1);
            Main_Id = Main_Id.Remove(Main_Id.LastIndexOf("'"), 1);

            //Label2.Text = Newsid;
            string qry1 = "select * from Maintenance where Maint_ID='" + Main_Id + "'";

            SqlConnection con = new SqlConnection(str);
            con.Open();

            SqlCommand cmd = new SqlCommand(qry1, con);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Label2.Text = Main_Id;
                Label3.Text = dr["User_ID"].ToString();
                Label4.Text = dr["Subject"].ToString();
                Label5.Text = dr["Updated_Date"].ToString();
                Label6.Text = dr["Description"].ToString();
                Label7.Text = dr["Currentstatus"].ToString();

            }


        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("~/Login.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AcceptRequest.aspx");
        }
    }
}