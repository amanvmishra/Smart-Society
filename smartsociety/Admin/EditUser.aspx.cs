using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.HtmlControls;

namespace smartsociety.Admin
{
    public partial class EditUser : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
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

            string user = Request.QueryString["userid"];
            user = user.Remove(user.IndexOf("'"), 1);
            user = user.Remove(user.LastIndexOf("'"), 1);

            string qry1 = "select UserID,Name,Flat,Mail_Address,Role from Users where UserID='" + user + "'";

            con = new SqlConnection(str);
            con.Open();

            cmd = new SqlCommand(qry1, con);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Label2.Text = dr["UserID"].ToString();
                Label3.Text = dr["Name"].ToString();
                TextBox4.Text = dr["Flat"].ToString();
                TextBox5.Text = dr["Mail_Address"].ToString();
                DropDownList1.Text = dr["Role"].ToString();

            }
            dr.Close();
            //con.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //SqlConnection conn = new SqlConnection(str);
            //conn.Open();
            string user1 = Request.QueryString["userid"];
            user1 = user1.Remove(user1.IndexOf("'"), 1);
            user1 = user1.Remove(user1.LastIndexOf("'"), 1);

            string qry2 = "update Users set Mail_Address='" + TextBox5.Text + "',Role='" + DropDownList1.SelectedItem.Text + "' where UserID='" +Label2.Text + "'";

            SqlDataAdapter da = new SqlDataAdapter(qry2, con);
            da.SelectCommand.ExecuteNonQuery();




            con.Close();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("~/Login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListAllUsers.aspx");
        }
    }
}