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
    public partial class Index : System.Web.UI.Page
    {
        string str = @"Data Source=MISHRA\SQLSERVER;Initial Catalog=society;User ID=sa;Password=mmi263";

        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;

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

            if (!IsPostBack)
            {
                string userid = Request.QueryString["usrid"];
                string qry1 = "select Name from Users where UserID='" + userid + "'";
                con = new SqlConnection(str);
                con.Open();
                cmd = new SqlCommand(qry1, con);
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Literal1.Text = dr["Name"].ToString();
                
                }
                

            }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("~/Login.aspx");
        }
    }
}