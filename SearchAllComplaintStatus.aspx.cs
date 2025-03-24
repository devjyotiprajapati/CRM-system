using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;//for DB connectivity: ADO.NET
using System.Data.SqlClient;//for DB connectivity: ADO.NET
using System.Configuration;//for web.config


namespace CRM_Final_Project
{
    public partial class SearchAllComplaintStatus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
                con.Open();//open DB connection

                string qry = "select *from Complaint where ComplaintID=@t1";//SQL Query
                SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
                cmd.Parameters.AddWithValue("@t1", TextBox1.Text);//Passing Paramiters to the Query
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)//If data Meet in dr
                {
                    GridView1.DataSource = dr;//GridView Will take data from dr
                    GridView1.DataBind();//Binding the Grid fields with DB

                }
                else
                {
                    Label2.Visible = true;
                    Label2.Text = "Complaint Id not found";
                }
            }
            catch (SqlException ex)//Exception  for catching error By using SqlException class
            {
                Response.Write(ex);
            }

        }
    }
}