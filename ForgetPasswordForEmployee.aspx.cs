using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;//for DB connectivity: ADO.NET
using System.Configuration;//for web.config
using System.Net.Mail;


namespace CRM_Final_Project
{
    public partial class ForgetPasswordForEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
            con.Open();//open DB connection

            string qry = "select Password from Employee where  EmailId=@21";//SQL Query
            SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
            cmd.Parameters.AddWithValue("@21", TextBox1.Text);//Passing Paramiters to the Query
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {

                string pwd = dr[0].ToString();

                MailMessage msg = new MailMessage();
                msg.To.Add(TextBox1.Text);
                msg.From = new MailAddress("jprajapati0702@gamil.com");
                msg.Subject = "Password Recovery";
                msg.Body = "Your Password is" + pwd;


                SmtpClient sm = new SmtpClient("smtp.gmail.com");
                sm.Port = 587;
                sm.Credentials = new System.Net.NetworkCredential("jprajapati0702@gmail.com", "drdkdvjdxhcjgrip");
                sm.EnableSsl = true;
                sm.Send(msg);
                Label3.Visible = true;
                Label3.Text = "Mail send";

            }
            else
            {
                Label2.Visible = true;
                Label2.Text = "Invalid EmailId";
            }
        }
    
    }
}