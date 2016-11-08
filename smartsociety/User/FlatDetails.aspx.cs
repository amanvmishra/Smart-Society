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
    public partial class FlatDetails : System.Web.UI.Page
    {
        string str = @"Data Source=MISHRA\SQLSERVER;Initial Catalog=society;User ID=sa;Password=mmi263";
        SqlConnection con,con1;
        SqlCommand cmd,cmd1;
        SqlDataReader dr,dr1;
        string userid,Flatid;


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

             userid = Session["User_ID"].ToString();
             string qry1 = "select Flat from Users where UserID='"+userid+"'";
             con = new SqlConnection(str);
             con.Open();
             cmd = new SqlCommand(qry1, con);
             dr = cmd.ExecuteReader();

            if(dr.Read())
            {
                Flatid = dr["Flat"].ToString();
            }
            dr.Close();
            con.Close();

            string qry2 = "select * from Flat where Flat_ID='" + Flatid + "'";

            SqlConnection con1 = new SqlConnection(str);
            con1.Open();

            SqlCommand cmd1 = new SqlCommand(qry2, con1);
            SqlDataReader dr1 = cmd1.ExecuteReader();

            if (dr1.Read())
            {
                Label1.Text = userid;
                Label2.Text = dr1["Flat_ID"].ToString();
                Label3.Text = dr1["Block"].ToString();
                Label4.Text = dr1["Flat_Size"].ToString();
                Label5.Text = dr1["Type"].ToString();
                Label6.Text = dr1["Purchase"].ToString();
                Label7.Text = dr1["Owner"].ToString();
                Label8.Text = dr1["Rented"].ToString();
                Label9.Text = dr1["Renter"].ToString();
                Label10.Text = dr1["No_Members"].ToString();
                Label12.Text = dr1["Sewage_Tax"].ToString();
                Label13.Text = dr1["Property_Tax"].ToString();
                Label14.Text = dr1["Tot_Main"].ToString();
                Label15.Text = dr1["Next_Due"].ToString();

            }
            dr1.Close();
            con1.Close();


        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("~/Login.aspx");
        }
    }
}