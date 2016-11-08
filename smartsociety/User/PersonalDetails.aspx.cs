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
    public partial class Personal_Details : System.Web.UI.Page
    {
        string str = @"Data Source=MISHRA\SQLSERVER;Initial Catalog=society;User ID=sa;Password=mmi263";
        SqlConnection con,con1,con2;
        SqlCommand cmd,cmd1,cmd2;
        SqlDataReader dr,dr1,dr2;
        string userid,check;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["User_ID"] != null)
            {
                userid = Session["User_ID"].ToString();
                Label17.Text = Session["User_ID"].ToString();
            }
            else
            {
                Response.Redirect("~/Login.aspx");
            }

           // Label18.Text=userid;
             if (!IsPostBack)
               {
                
                

                   string qry1 = "select * from Users where UserID='"+userid+"'";
                   con = new SqlConnection(str);
                   con.Open();
                   cmd = new SqlCommand(qry1, con);
                   dr = cmd.ExecuteReader();
                   if (dr.Read())
                   {
                       check= dr["Type"].ToString();
                   }

                   dr.Close();
                   con.Close();
                   //Label18.Text = check;
                    if(check=="Owner")
                     {
                        // Label18.Text =userid;
                         string qry2="select * from Users u INNER JOIN Owner o ON u.UserID=o.User_ID where u.UserID='"+userid+"'";
                         con1 = new SqlConnection(str);
                         con1.Open();
                         cmd1 = new SqlCommand(qry2, con1);
                         dr1 = cmd1.ExecuteReader();
                         if (dr1.Read())
                         {
                             Label1.Text=dr1["UserID"].ToString();
                             Label2.Text=dr1["Flat"].ToString();
                             Label3.Text=dr1["Title"].ToString();
                             Label4.Text=dr1["First_Name"].ToString();
                             Label5.Text=dr1["Last_Name"].ToString();
                             Label6.Text=dr1["Gender"].ToString();
                             Label7.Text=dr1["Marital_Sts"].ToString();
                             Label8.Text=dr1["DOB"].ToString();
                             Label9.Text=dr1["Contact_Home"].ToString();
                             Label10.Text=dr1["Contact_Mobile"].ToString();
                             Label11.Text=dr1["Mail"].ToString();
                             Label14.Text=dr1["Pincode"].ToString();
                             Label15.Text=dr1["City"].ToString();
                             Label16.Text=dr1["State"].ToString();
                    
                         }
                         dr.Close();
                        con1.Close();

                         }
                    else if (check == "Renter")
                    { 
                       string qry2="select * from Users u INNER JOIN Renter o ON u.UserID=r.User_ID where u.UserID='"+userid+"'";
                         con2 = new SqlConnection(str);
                         con2.Open();
                         cmd2 = new SqlCommand(qry2, con2);
                         dr2 = cmd1.ExecuteReader();
                         if (dr1.Read())
                         {
                             Label1.Text=dr2["UserID"].ToString();
                             Label2.Text=dr2["Flat"].ToString();
                             Label3.Text=dr2["Title"].ToString();
                             Label4.Text=dr2["First_Name"].ToString();
                             Label5.Text=dr2["Last_Name"].ToString();
                             Label6.Text=dr2["Gender"].ToString();
                             Label7.Text=dr2["Marital_Sts"].ToString();
                             Label8.Text=dr2["DOB"].ToString();
                             Label9.Text=dr2["Contact_Home"].ToString();
                             Label10.Text=dr2["Contact_Mobile"].ToString();
                             Label11.Text=dr2["Mail"].ToString();
                             Label14.Text=dr2["Pincode"].ToString();
                             Label15.Text=dr2["City"].ToString();
                             Label16.Text=dr2["State"].ToString();
                    
                         }
                         dr.Close();
                         con2.Close();
                    }
                    }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("~/Login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");

        }
    }
}