using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;//for DB connectivity: ADO.NET
using System.Configuration;//for web.config


namespace CRM_Final_Project.Admin
{
    public partial class ManageProduct : System.Web.UI.Page
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

                string qry = "select *from Product";//SQL Query
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
                string cid = Convert.ToString(GridView1.DataKeys[e.RowIndex].Value);
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
                con.Open();//open DB connection

                string qry = "update Product set ProductName=@t1,Description=@t2,price=@t3,image=@t4 Where ProductId=@t5";//SQL Query
                SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
                string Pn = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
                string Des= ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
                string pr = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
                string img = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
                
                cmd.Parameters.AddWithValue("@t1", Pn);//Passing Paramiters to the Query
                cmd.Parameters.AddWithValue("@t2", Des);//Passing Paramiters to the Query
                cmd.Parameters.AddWithValue("@t3", pr);//Passing Paramiters to the Query
                cmd.Parameters.AddWithValue("@t4", img);//Passing Paramiters to the Query
                cmd.Parameters.AddWithValue("@t5", cid);//Passing Paramiters to the Query


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

               string cid = Convert.ToString(GridView1.DataKeys[e.RowIndex].Value);
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
                con.Open();//open DB connection
                string qry = "delete from Product where ProductId=@12";//SQL Query
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

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            connect();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;// Edit hoga Jis row par 'e' event par clik hoga
            connect();
        }
    }
}