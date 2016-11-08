﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace smartsociety.Admin
{
    public partial class SocietyNewsUpdate : System.Web.UI.Page
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

            con = new SqlConnection(str);
            string qry1 = "select * from SocietyNews where SoNewsID=(select MAX(SoNewsID) FROM SocietyNews)";
            con.Open();
            cmd = new SqlCommand(qry1, con);
            dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                TextBox4.Text = (Convert.ToInt32(dr["SoNewsID"]) + 1).ToString();
                TextBox1.Text = DateTime.Now.ToString();
            }
            con.Close();


        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("~/Login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con= new SqlConnection(str);
            con.Open();

            string qry2 = "insert into SocietyNews(SoNews_Type,Headline,News_Details,Updated_Date) values('" + DropDownList1.SelectedItem.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox1.Text + "')";

            cmd = new SqlCommand(qry2, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateNews.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewNews.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("SocietyNewsUpdate.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewSocietyNews.aspx");
        }
    }
}