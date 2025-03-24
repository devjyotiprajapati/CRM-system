using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;//for DB connectivity: ADO.NET
using System.Data.SqlClient;//for DB connectivity: SQL Connection
using System.Configuration;//for web.config

namespace CRM_Final_Project
{
    public partial class MyProfileForCustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] == null)
                Response.Redirect("CustomerLogin.aspx");
            else
            {
                Label4.Text = Session["name"].ToString();
            }

            var name = Session["name"].ToString();
            var pass = Session["pass"].ToString();

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
            con.Open();//open DB connection

            string qry = "select CustID from Customer  where  Name='" + name + "' and Password='" + pass + "'";//SQL Query
            SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            int cid = Convert.ToInt32(dr[0]);
            dr.Close();

            string qry1 = "select * from Customer where CustID=" + cid;
            SqlCommand cmd1 = new SqlCommand(qry1, con);//Send Query for execution 
            cmd.CommandText = qry;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd1;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                TextBox1.Text = ds.Tables[0].Rows[0]["CustID"].ToString();
                TextBox2.Text = ds.Tables[0].Rows[0]["Name"].ToString();
                TextBox3.Text = ds.Tables[0].Rows[0]["Age"].ToString();
                TextBox4.Text = ds.Tables[0].Rows[0]["Address"].ToString();
                TextBox5.Text = ds.Tables[0].Rows[0]["MobileNo"].ToString();
                TextBox6.Text = ds.Tables[0].Rows[0]["EmailId"].ToString();
                TextBox7.Text = ds.Tables[0].Rows[0]["DOB"].ToString();
                TextBox8.Text = ds.Tables[0].Rows[0]["Gender"].ToString();

            }

            con.Close();

        }
    }
}