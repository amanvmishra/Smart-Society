using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace smartsociety.Admin
{
    public partial class PersonalDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           string str = @"Data Source=MISHRA\SQLSERVER;Initial Catalog=society;User ID=sa;Password=mmi263";
            SqlConnection con = new SqlConnection(str);
            con.Open();

            string qry = "select * from Admin";

            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label1.Text = dr["UserID"].ToString();
                Label2.Text = dr["Flat"].ToString();
                
            }
            con.Close();
            con.Open();

            string qry2 = "select * from Flat";
            SqlCommand cmd2 = new SqlCommand(qry2, con);
            SqlDataReader dr2 = cmd2.ExecuteReader();

            if (dr2.Read())
            {
                string renter=dr2["Rented"].ToString();
                if (renter != "Y")
                {
                    con.Close();
                    con.Open();
                   string qry1 = "select * from Owner";
            SqlCommand cmd1 = new SqlCommand(qry1, con);
            SqlDataReader dr1 = cmd1.ExecuteReader();
                    Label3.Text = dr1["Title"].ToString();
                    Label4.Text = dr1["First_Name"].ToString();
                }
                }


        
        }
    }
}