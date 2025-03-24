using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;//for DB connectivity
using System.Configuration;//for web.config


namespace CRM_Final_Project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"] == null)
                Response.Redirect("CustomerLogin.aspx");
            else
            {
                Label1.Text = Session["Name"].ToString();
            }
            var name= Session["Name"].ToString();
            var pass= Session["Pass"].ToString();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
            con.Open();//open DB connection

            string qry = "select count(CustID) from Complaint  where CustID in (select CustID from Customer  where Name='"+name +"' and Password='"+pass+"')";//SQL Query
            SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            int cid = Convert.ToInt32(dr[0]);
             Label3.Text = cid.ToString();
            dr.Close();

            string qry1 = "select count(CustID) from Query  where CustID in (select CustID from Customer  where Name='" + name + "' and Password='" + pass + "')";//SQL Query
            SqlCommand cmd1 = new SqlCommand(qry1, con);//Send Query for execution
            SqlDataReader dr1 = cmd1.ExecuteReader();
             dr1.Read();
            cid = Convert.ToInt32(dr1[0]);
            Label4.Text = cid.ToString();
            dr1.Close();

            string qry2 = "select count(Status) from Complaint  where Status='Processed' and CustID in (select CustID from Customer  where Name='" + name + "' and Password='" + pass + "')";//SQL Query
            SqlCommand cmd2 = new SqlCommand(qry2, con);//Send Query for execution
            SqlDataReader dr2 = cmd2.ExecuteReader();
            dr2.Read();
            cid = Convert.ToInt32(dr2[0]);
            Label5.Text = cid.ToString();
            dr2.Close();

            string qry3 = "select count(Status) from Query  where Status='Processed'and CustID in (select CustID from Customer  where Name='" + name + "' and Password='" + pass + "')";//SQL Query
            SqlCommand cmd3 = new SqlCommand(qry3, con);//Send Query for execution
            SqlDataReader dr3 = cmd3.ExecuteReader();
             dr3.Read();
            cid = Convert.ToInt32(dr3[0]);
            Label6.Text = cid.ToString();


        }
        protected void btn_cick(object sender, EventArgs e)
        {
            //code for LogOut
            Session.RemoveAll();
            Session.Clear();
            Response.Redirect("CustomerLogin.aspx");
        }
    }
        
}