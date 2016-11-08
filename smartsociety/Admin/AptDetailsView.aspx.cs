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
    public partial class AptDetailsView : System.Web.UI.Page
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

            string str = @"Data Source=MISHRA\SQLSERVER;Initial Catalog=society;User ID=sa;Password=mmi263";
            SqlConnection con = new SqlConnection(str);
            con.Open();

            string qry1 = "select * from Society";
            SqlCommand cmd= new SqlCommand(qry1, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label1.Text = dr["SocietyID"].ToString();
                Label15.Text = dr["SocietyName"].ToString();
                Label2.Text = dr["SocietyEst"].ToString();
                Label3.Text = dr["SocietyComplete"].ToString();
                Label4.Text = dr["No_Blocks"].ToString();
                Label5.Text = dr["Address"].ToString();
                Label7.Text = dr["Pin_Code"].ToString();
                Label8.Text = dr["City"].ToString();
                Label9.Text = dr["State"].ToString();
                Label10.Text = dr["Total_Sqft"].ToString();
                Label11.Text = dr["No_Flat"].ToString();
                Label12.Text = dr["Uarban_Tax_Amt"].ToString();
                Label13.Text = dr["Tot_Main"].ToString();
            }

            con.Close();


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
             Response.Redirect("AptDetailsEdit.aspx");
            
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("~/Login.aspx");

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AptDetailsView.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListAllFlats.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {

        }
    }
}