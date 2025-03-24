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
    public partial class ReplyOnQuery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["QueryID"] != null)
            {
                int Qid = Convert.ToInt16(Request.QueryString["QueryID"].ToString());
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
                con.Open();//open DB connection
                string qry = "select * from Query where QueryID=" + Qid;//SQL Query
                SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution 
                cmd.CommandText = qry;
                cmd.Connection = con;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    TextBox1.Text = ds.Tables[0].Rows[0]["QueryID"].ToString();
                    TextBox2.Text = ds.Tables[0].Rows[0]["CustID"].ToString();
                    TextBox3.Text = ds.Tables[0].Rows[0]["Query"].ToString();
                    TextBox4.Text = ds.Tables[0].Rows[0]["Email"].ToString();
                    TextBox5.Text = ds.Tables[0].Rows[0]["ProductNo"].ToString();
                    TextBox6.Text = ds.Tables[0].Rows[0]["ProductName"].ToString();
                    TextBox7.Text = ds.Tables[0].Rows[0]["DateofQuery"].ToString();

                }
                else
                {
                    Response.Redirect("AllQuery.aspx");
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
                DateTime now = System.DateTime.Now;
                string qry = "update Query set status='Processed', Reply='" + TextBox8.Text + "', DateofReply='" + now + "',EmpID='" + TextBox9.Text + "'where QueryID=" + TextBox1.Text;
                SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution

                ////code to send Email message
                MailMessage msg = new MailMessage();
                msg.To.Add(TextBox6.Text);
                msg.From = new MailAddress("jprajapati0702@gamil.com");
                msg.Body = TextBox3.Text;
                SmtpClient sm = new SmtpClient("smtp.gmail.com");
                sm.Port = 587;
                sm.Credentials = new System.Net.NetworkCredential("jprajapati0702@gmail.com", "drdkdvjdxhcjgrip");
                sm.EnableSsl = true;
                sm.Send(msg);

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
