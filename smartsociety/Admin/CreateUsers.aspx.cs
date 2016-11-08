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
    public partial class CreateUsers : System.Web.UI.Page
    {
        string str = @"Data Source=MISHRA\SQLSERVER;Initial Catalog=society;User ID=sa;Password=mmi263";

        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        string user;


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
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            int insert = 0;

            con = new SqlConnection(str);
            con.Open();

            string qry1 = "insert into Users(UserID,Name,Password,Flat,Mail_Address,Type,Role) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + DropDownList2.SelectedItem.Text + "','" + DropDownList1.SelectedItem.Text + "')";

            cmd = new SqlCommand(qry1, con);
            insert = cmd.ExecuteNonQuery();
            con.Close();

            if (insert > 0)
            {
                con.Open();
                cmd = new SqlCommand("delete from NewRegister where UserID=" + user, con);
                cmd.ExecuteNonQuery();
                con.Close();

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListAllUsers.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("~/Login.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListAllUsers.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateUsers.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewSignUP.aspx");
        }
    }
}