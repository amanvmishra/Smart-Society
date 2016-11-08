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
    public partial class UpdateRequest : System.Web.UI.Page
    {
        string str = @"Data Source=MISHRA\SQLSERVER;Initial Catalog=society;User ID=sa;Password=mmi263";
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        string userid;

        protected void Page_Load(object sender, EventArgs e)
        {

             if (Session["User_ID"] != null)
            {
                userid=Session["User_ID"].ToString();
                Label1.Text = Session["User_ID"].ToString();
            }
            else
            {
                Response.Redirect("~/Login.aspx");
            }
            con = new SqlConnection(str);

            string qry1 = "select * from Maintenance where Maint_ID=(select MAX(Maint_ID) FROM Maintenance)";
            con.Open();
            cmd = new SqlCommand(qry1, con);
            dr = cmd.ExecuteReader();

            if (dr.Read())
            { 
               

                TextBox4.Text = (Convert.ToInt32(dr["Maint_ID"]) + 1).ToString();
                TextBox1.Text = DateTime.Now.ToString();
              

            }
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(str);
            conn.Open();

            string qry2 = "insert into Maintenance(User_ID,Subject,Description,Updated_Date,Currentstatus) values('" +userid+ "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox1.Text + "','Unresolved')";

            SqlCommand cmd = new SqlCommand(qry2, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("~/Login.aspx");
        }
    }
}