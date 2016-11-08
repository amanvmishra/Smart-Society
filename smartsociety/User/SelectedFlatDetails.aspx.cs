using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace smartsociety.User
{
    public partial class SelectedFlatDetails : System.Web.UI.Page
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

            string Flatid = Request.QueryString["flatid"];
            Flatid = Flatid.Remove(Flatid.IndexOf("'"), 1);
            Flatid = Flatid.Remove(Flatid.LastIndexOf("'"), 1);

            string str = @"Data Source=MISHRA\SQLSERVER;Initial Catalog=society;User ID=sa;Password=mmi263";
            string qry1 = "select * from Flat where Flat_ID='" + Flatid + "'";

            SqlConnection con = new SqlConnection(str);
            con.Open();

            SqlCommand cmd = new SqlCommand(qry1, con);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Label2.Text = dr["Flat_ID"].ToString();
                Label3.Text = dr["Block"].ToString();
                Label4.Text = dr["Flat_Size"].ToString();
                Label5.Text = dr["Type"].ToString();
                Label6.Text = dr["Purchase"].ToString();
                Label7.Text = dr["Owner"].ToString();
                Label8.Text = dr["Rented"].ToString();
                Label9.Text = dr["Renter"].ToString();
                Label10.Text = dr["No_Members"].ToString();
                Label12.Text = dr["Sewage_Tax"].ToString();
                Label13.Text = dr["Property_Tax"].ToString();
                Label14.Text = dr["Tot_Main"].ToString();
                Label15.Text = dr["Next_Due"].ToString();

            }
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
            Response.Redirect("ListAllFlat.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {

        }
    }
}