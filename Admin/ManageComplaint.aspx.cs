﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;//for DB connectivity: ADO.NET
using System.Configuration;//for web.config


namespace CRM_Final_Project.Admin
{
    public partial class ManageComplaint : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                connect();
            }
        }

        public void connect()
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
                con.Open();//open DB connection

                string qry = "select *from Complaint ";//SQL Query
                SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)//If data Meet in dr
                {
                    GridView1.DataSource = dr;//GridView Will take data from dr
                    GridView1.DataBind();//Binding the Grid fields with DB

                }
            }
            catch (SqlException ex)//Exception  for catching error By using SqlException class
            {
                Response.Write(ex);
            }

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                // code for Update
                int cid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
                con.Open();//open DB connection

                string qry = "update Complaint set ReasonForComplaint=@t1,Email=@t2,ProductNo=@t3,Description=@t4,Document=@t5,Status=@t6,Reply=@t7,EmpID=@t8 Where ComplaintID=@t9";//SQL Query
                SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
                string rfc = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
                string em = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
                string pno = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
                string des = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
                string doc = ((TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0]).Text;
                string st = ((TextBox)GridView1.Rows[e.RowIndex].Cells[8].Controls[0]).Text;
                string rep = ((TextBox)GridView1.Rows[e.RowIndex].Cells[9].Controls[0]).Text;
                string empid = ((TextBox)GridView1.Rows[e.RowIndex].Cells[10].Controls[0]).Text;

                cmd.Parameters.AddWithValue("@t1", rfc);//Passing Paramiters to the Query
                cmd.Parameters.AddWithValue("@t2", em);//Passing Paramiters to the Query
                cmd.Parameters.AddWithValue("@t3", pno);//Passing Paramiters to the Query
                cmd.Parameters.AddWithValue("@t4", des);//Passing Paramiters to the Query
                cmd.Parameters.AddWithValue("@t5", doc);//Passing Paramiters to the Query
                cmd.Parameters.AddWithValue("@t6", st);//Passing Paramiters to the Query
                cmd.Parameters.AddWithValue("@t7", rep);//Passing Paramiters to the Query
                cmd.Parameters.AddWithValue("@t8", empid);//Passing Paramiters to the Query
                cmd.Parameters.AddWithValue("@t9", cid);//Passing Paramiters to the Query


                cmd.ExecuteNonQuery();//Execute SQL Query
                Label1.Visible = true;
                Label1.Text = "Your Data Has been UpDated";
                con.Close();
                GridView1.EditIndex = -1;//Nuteral the Index Position
                connect();
            }
            catch (SqlException ex)//Exception  for catching error By using SqlException class
            {
                Response.Write(ex);
            }

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                //coding for delete button

                int cid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
                con.Open();//open DB connection
                string qry = "delete from Complaint where ComplaintID=@12";//SQL Query
                SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
                cmd.Parameters.AddWithValue("@12", cid);//Passing Paramiters to the Query
                cmd.ExecuteNonQuery();//Executing SQL Query
                Label1.Visible = true;
                Label1.Text = "Your Data Has been Deleted";

                GridView1.EditIndex = -1;//Nuteral the Index Position
                connect();
            }
            catch (SqlException ex)//Exception  for catching error By using SqlException class
            {
                Response.Write(ex);
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;// Edit hoga Jis row par 'e' event par clik hoga
            connect();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            connect();
        }
    }
}