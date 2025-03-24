using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;//for DB connectivity
using System.Configuration;//for web.config
using System.Net.Mail;//for mail


namespace CRM_Final_Project
{
    public partial class PotentialCustQuery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
            con.Open();//open DB connection

            string qry = "select max(PCustQueryId) from PotentialCustomer";//SQL Query
            SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            int cid = Convert.ToInt32(dr[0]);
            cid++;
            TextBox9.Text = cid.ToString();

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
                con.Open();//open DB connection


                string qry = "insert into PotentialCustomer(PCustQueryId,Number,Email,QueryType,Query,DateofQuery,Status) values(@t1,@t2,@t3,@t4,@t5,@t6,@t7)";//SQL Query
                SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
                cmd.Parameters.AddWithValue("@t1", TextBox9.Text);
                cmd.Parameters.AddWithValue("@t2", TextBox1.Text);
                cmd.Parameters.AddWithValue("@t3", TextBox2.Text);
                cmd.Parameters.AddWithValue("@t4", DropDownList1.Text);
                cmd.Parameters.AddWithValue("@t5", TextBox4.Text);                             
                DateTime dt = DateTime.Now;
                cmd.Parameters.AddWithValue("@t6", dt);
                cmd.Parameters.AddWithValue("@t7", "Under-Processing");

                //code to send Email message
                //MailMessage msg = new MailMessage();
                //msg.To.Add(TextBox3.Text);
                //msg.From = new MailAddress("jprajapati0702@gamil.com");
                //msg.Body = TextBox1.Text+" is your complaint Id";
                //SmtpClient sm = new SmtpClient("smtp.gmail.com");
                //sm.Port = 587;
                //sm.Credentials = new System.Net.NetworkCredential("jprajapati0702@gmail.com", "JyOTi@786");
                //sm.EnableSsl = true;
                //sm.Send(msg);

                int i = cmd.ExecuteNonQuery();//
                if (i == 1)
                {

                    Label6.Visible = true;
                    Label7.Visible = true;
                    Label6.Text = "Record Saved SuccesFully";

                    Label7.Text = "Your Quey id is: " + TextBox9.Text + " Query id send you by mail";
                }
                con.Close();//close DB Connection;
            }
            catch (SqlException ex)//Exception  for catching error By using SqlException class
            {
                Response.Write(ex);
            }
        }

        protected void btn2_Click(object sender, EventArgs e)
        {
            TextBox9.Text = "";
            TextBox1.Text = "";
            TextBox2.Text = "";
            DropDownList1.Text = "";
            TextBox4.Text = "";

        }
    }
}