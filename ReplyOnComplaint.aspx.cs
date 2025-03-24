using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;//for DB connectivity: ADO.NET
using System.Data.SqlClient;//for DB connectivity: SQL Connection
using System.Configuration;//for web.config
using System.Net.Mail;// for sending mail


namespace CRM_Final_Project
{
    public partial class ReplayOnComplaint : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["ComplaintID"] != null)
            {
                int Complaintid = Convert.ToInt16(Request.QueryString["ComplaintID"].ToString());
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
                con.Open();//open DB connection
                string qry = "select * from Complaint where ComplaintID=" + Complaintid;//SQL Query
                SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution 
                cmd.CommandText = qry;
                cmd.Connection = con;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    TextBox1.Text = ds.Tables[0].Rows[0]["ComplaintID"].ToString();
                    TextBox2.Text = ds.Tables[0].Rows[0]["CustID"].ToString();
                    TextBox3.Text = ds.Tables[0].Rows[0]["ReasonForComplaint"].ToString();
                    TextBox4.Text = ds.Tables[0].Rows[0]["Email"].ToString();
                    TextBox5.Text = ds.Tables[0].Rows[0]["ProductNo"].ToString();
                    TextBox6.Text = ds.Tables[0].Rows[0]["Description"].ToString();
                    TextBox7.Text = ds.Tables[0].Rows[0]["Document"].ToString();               

                }
                else
                {
                    Response.Redirect("AllComplaint.aspx");
                }

                con.Close();


            }
        }

        protected void bt1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
                con.Open();//open DB connection       
                DateTime now= DateTime.UtcNow.Date;
                string qry = "update Complaint set status='Processed', Reply='" + TextBox8.Text + "', DateofReply='" + now + "',EmpID='" + TextBox9.Text + "'where ComplaintID=" + TextBox1.Text;
                SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution

                ////code to send Email message
                //MailMessage msg = new MailMessage();
                //msg.To.Add(TextBox6.Text);
                //msg.From = new MailAddress("jprajapati0702@gamil.com");
                //msg.Body = TextBox10.Text;
                //SmtpClient sm = new SmtpClient("smtp.gmail.com");
                //sm.Port = 587;
                //sm.Credentials = new System.Net.NetworkCredential("jprajapati0702@gmail.com", "JyOTi@786");
                //sm.EnableSsl = true;
                //sm.Send(msg);

                int i = cmd.ExecuteNonQuery();//
                if (i == 1)
                {
                    Label10.Visible = true;
                    Label10.Text = "Your Reply has been send";
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