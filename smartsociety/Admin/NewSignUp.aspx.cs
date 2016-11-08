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
    public partial class NewSignUp : System.Web.UI.Page
    {
        string usrid;

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
                LoadGridView();
            }

        }

        private void LoadGridView()
        {
            SqlConnection conn = new SqlConnection(@"Data Source=MISHRA\SQLSERVER;Initial Catalog=society;User ID=sa;Password=mmi263");
            string qry1 = "select UserID,Name,Flat,Mail_Address,Role from NewRegister";
            SqlCommand cmd = new SqlCommand(qry1, conn);
            DataTable dt = new DataTable();
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            ad.Fill(dt);
            conn.Close();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow gvrow in GridView1.Rows)
            {
                CheckBox check = (CheckBox)gvrow.FindControl("CheckBox1");
                if (check.Checked)
                {
                    usrid = GridView1.DataKeys[gvrow.RowIndex].Value.ToString();
                    Response.Redirect("CreateUser.aspx?userid='"+usrid+"'");
                }
                else
                {
                    Response.Write("<script>alert('Please Select a User')</script>");
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow gvrow in GridView1.Rows)
            {

                CheckBox chkdelete = (CheckBox)gvrow.FindControl("CheckBox1");

                if (chkdelete.Checked)
                {
                    usrid = GridView1.DataKeys[gvrow.RowIndex].Value.ToString();
                    using (SqlConnection con = new SqlConnection(@"Data Source=MISHRA\SQLSERVER;Initial Catalog=society;User ID=sa;Password=mmi263"))
                    {
                        con.Open();
                        SqlCommand cmd = new SqlCommand("delete from NewRegister where UserID=" + usrid, con);
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
            }
            LoadGridView();
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