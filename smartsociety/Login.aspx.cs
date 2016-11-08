using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace smartsociety
{ public partial class Login : System.Web.UI.Page
    {

      protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {   string str = @"Data Source=MISHRA\SQLSERVER;Initial Catalog=society;User ID=sa;Password=mmi263";
            SqlConnection con = new SqlConnection(str);
            con.Open();
            if (TextBox1.Text == "Admin")
            {  string qry1 = "Select * from Admin where User_Admin='" + TextBox1.Text + "' and Password ='" + TextBox2.Text + "'";
                SqlCommand cmd = new SqlCommand(qry1, con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {  Session["User_ID"] = TextBox1.Text;
                    Response.Redirect("Admin/Index.aspx");}
                else
                {Response.Write("<script>alert('Please enter valid Username and Password')</script>"); }
            }
            else
            {   string qry2 = "Select * from Users where UserID='" + TextBox1.Text + "' and Password ='" + TextBox2.Text + "'";
                SqlCommand cmd = new SqlCommand(qry2, con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Session["User_ID"] = TextBox1.Text;
                    Response.Redirect("User/Index.aspx?usrid=" + TextBox1.Text + "");
                }
                else
                { Response.Write("<script>alert('Please enter valid Username and Password')</script>");
                }
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }
    }
}