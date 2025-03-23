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
    public partial class Addnewproduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
                con.Open();//open DB connection

                string qry = "insert into Product values(@t1,@t2,@t3,@t4,@t5)";//SQL Query
                SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
                cmd.Parameters.AddWithValue("@t1", TextBox1.Text);//Passing Paramiters to the Query
                cmd.Parameters.AddWithValue("@t2", TextBox2.Text);//Passing Paramiters to the Query
                cmd.Parameters.AddWithValue("@t3", TextBox3.Text);//Passing Paramiters to the Query
                cmd.Parameters.AddWithValue("@t4", TextBox4.Text);//Passing Paramiters to the Query
                string path = "";
                if (FileUpload1.HasFile)
                {
                    FileUpload1.SaveAs(Server.MapPath("~/Product/" + FileUpload1.FileName));
                    path = "~/Product/" + FileUpload1.FileName;
                }
                cmd.Parameters.AddWithValue("@t5", path);

                int i = cmd.ExecuteNonQuery();//
                if (i == 1)
                {
                    Label6.Visible = true;
                    Label6.Text = "Record Saved SuccesFully";
                }
                
                con.Close();//close DB Connection;
            }
            catch (SqlException ex)//Exception  for catching error By using SqlException class
            {
                Response.Write(ex);
            }

        }
    }
}