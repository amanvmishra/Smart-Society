using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace smartsociety
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int signed = 0;
            string str = @"Data Source=MISHRA\SQLSERVER;Initial Catalog=society;User ID=sa;Password=mmi263";
            SqlConnection con = new SqlConnection(str);
            con.Open();
           
            string qry1 = "insert into NewRegister(UserID,Name,Password,Flat,Mail_Address,Type,Role,Created_Date) values('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"','"+TextBox5.Text+ "','"+DropDownList2.SelectedItem.Text+"','User','"+DateTime.Now.ToString()+"')";

            SqlCommand cmd = new SqlCommand(qry1, con);
            signed=cmd.ExecuteNonQuery();
            con.Close();
            if(signed>0)
            Response.Redirect("~/Login.aspx");
        }
    }
}