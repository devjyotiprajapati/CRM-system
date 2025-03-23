using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;//for DB connectivity
using System.Configuration;//for web.config
using System.Net.Mail;//for mail


namespace CRM_Final_Project.Admin
{
    public partial class AddEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
            con.Open();//open DB connection

            string qry = "select max(EmpID) from Employee";//SQL Query
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

                string qry = "insert into Employee values(@t1,@t2,@t3,@t4,@t5,@t6,@t7,@t8,@t9,@t10,@t11)";//SQL Query
                SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
                cmd.Parameters.AddWithValue("@t1", TextBox9.Text);//Passing Paramiters to the Query
                cmd.Parameters.AddWithValue("@t2", TextBox1.Text);//Passing Paramiters to the Query
                cmd.Parameters.AddWithValue("@t3", TextBox2.Text);//Passing Paramiters to the Query
                cmd.Parameters.AddWithValue("@t4", TextBox3.Text);//Passing Paramiters to the Query
                cmd.Parameters.AddWithValue("@t5", TextBox4.Text);//Passing Paramiters to the Query
                cmd.Parameters.AddWithValue("@t6", TextBox5.Text);//Passing Paramiters to the Query
                cmd.Parameters.AddWithValue("@t7", TextBox6.Text);//Passing Paramiters to the Query
                cmd.Parameters.AddWithValue("@t8", TextBox7.Text);//Passing Paramiters to the Query
                cmd.Parameters.AddWithValue("@t9", TextBox8.Text);//Passing Paramiters to the Query
                String gen = null;
                if (RadioButton1.Checked)
                {
                    gen = "Male";
                }
                else
                {
                    gen = "Female";
                }
                cmd.Parameters.AddWithValue("@t10", gen);//Passing Paramiters to the Query                

                DateTime dt = DateTime.Now;
                cmd.Parameters.AddWithValue("@t11", dt);
                int i = cmd.ExecuteNonQuery();//
                if (i == 1)
                {
                    Label10.Visible = true;
                    Label10.Text = "Record Saved SuccesFully";
                }

                ////code to send Email message
                //MailMessage msg = new MailMessage();
                //msg.To.Add(TextBox7.Text);
                //msg.From = new MailAddress("jprajapati0702@gamil.com");
               // msg.Body = TextBox9.Text + "is your customer Id." +"\n And your default password is:"+TextBox4.Text;


                //SmtpClient sm = new SmtpClient("smtp.gmail.com");
                //sm.Port = 587;
                //sm.Credentials = new System.Net.NetworkCredential("jprajapati0702@gmail.com", "JyOTi@786");
                //sm.EnableSsl = true;
                //sm.Send(msg);

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
            TextBox8.Text = "";
            TextBox7.Text = "";
            TextBox6.Text = "";
            TextBox5.Text = "";
            TextBox4.Text = "";
            TextBox3.Text = "";
            TextBox2.Text = "";
            TextBox1.Text = "";
        }

    }
}