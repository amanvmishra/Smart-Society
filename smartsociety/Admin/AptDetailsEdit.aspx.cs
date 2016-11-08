using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace smartsociety.Admin
{
    public partial class AptDetailsEdit : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            string str = @"Data Source=MISHRA\SQLSERVER;Initial Catalog=society;User ID=sa;Password=mmi263";
            SqlConnection con = new SqlConnection(str);
            con.Open();

            string qry1 = "select * from Society";
            SqlCommand cmd = new SqlCommand(qry1, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label1.Text = dr["SocietyID"].ToString();
                Label8.Text = dr["SocietyName"].ToString();
                Label2.Text = dr["SocietyEst"].ToString();
                TextBox3.Text = dr["SocietyComplete"].ToString();
                TextBox4.Text = dr["No_Blocks"].ToString();
               // Label3.Text = dr["Address1"].ToString();
                Label4.Text = dr["Locality"].ToString();
                Label5.Text = dr["Pin_Code"].ToString();
                Label6.Text = dr["City"].ToString();
                Label7.Text = dr["State"].ToString();
                TextBox9.Text = dr["Total_Sqft"].ToString();
                TextBox10.Text = dr["No_Flat"].ToString();
                TextBox11.Text = dr["Uarban_Tax_Amt"].ToString();
                TextBox12.Text = dr["Tot_Main"].ToString();
            }

            con.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = @"Data Source=MISHRA\SQLSERVER;Initial Catalog=society;User ID=sa;Password=mmi263";
            SqlConnection con = new SqlConnection(str);
            con.Open();


            string qry1 = "update Society set SocietyComplete='" + TextBox3.Text + "',No_Blocks='" + TextBox4.Text + "',Total_Sqft='" + TextBox9.Text + "',No_Flat='" + TextBox10.Text + "',Uarban_Tax_Amt='" + TextBox11.Text + "',Tot_Main='" + TextBox12.Text + "' where SocietyID='1'";
            //string qry1 = "update Society set SocietyComplete="'+TextBox3.Text+'",No_Blocks='"+TextBox4.Text+'",Total_Sqft='"+TextBox9.Text+'",No_Flat='"+TextBox10.Text+'",Uarban_Tax_Amt='"+TextBox11.Text+'",Tot_Main='"+TextBox12.Text+'" where SocietyID='"+1+"'";
            //string qry1="insert into Society(Society_Complete,No_Blocks,Total_Sqft,No_Flat,Urban_Tax_Amt,Tot_Main) values('"+Convert.ToDateTime(TextBox3.Text)+"','"+Convert.ToInt32(TextBox4.Text)+"','"+Convert.ToInt32(TextBox9.Text)+"','"+Convert.ToInt32(TextBox10.Text)+"','"+Convert.ToInt32(TextBox11.Text)+"','"+Convert.ToInt32(TextBox12.Text)+"')";
            //string qry = "update Society set @Society_Complete,@No_Blocks,@Total_Sqft,@No_Flat,@Urban_Tax_Amt,@Tot_Main where Society_Name='Aradhna Society'";

          
           /* using (SqlConnection con = new SqlConnection(str))
            {
                con.Open();

                using (SqlCommand cm = new SqlCommand(qry, con))
                {
                    cm.Parameters.AddWithValue("@Society_Complete", Convert.ToDateTime(TextBox3.Text));
              //      cm.Parameters.AddWithValue("@No_Blocks", @Convert.ToInt32(TextBox4.Text));
                //    cm.Parameters.AddWithValue("@Total_Sqft", @Convert.ToInt32(TextBox9.Text));
                  //  cm.Parameters.AddWithValue("@No_Flat", @Convert.ToInt32(TextBox10.Text));
                    //cm.Parameters.AddWithValue("@Urban_Tax_Amt", @Convert.ToInt32(TextBox11.Text));
                      //  cm.Parameters.AddWithValue("@Tot_Main",@Convert.ToInt32(TextBox12.Text));

                    // store a value locally indicating if the previous update has rows.   
                    cm.ExecuteNonQuery();
                }
            }
*/            
            SqlCommand cmd=new SqlCommand(qry1,con);
           cmd.ExecuteNonQuery();
           con.Close();
        }
    }
}