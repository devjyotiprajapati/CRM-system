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
    public partial class Feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_Click(object sender, EventArgs e)
        {
            //code to send Email message
            MailMessage msg = new MailMessage();
            msg.To.Add(Tb1.Text);
            msg.From = new MailAddress("jprajapati0702@gamil.com");
            msg.Body = Tb2.Text;


            SmtpClient sm = new SmtpClient("smtp.gmail.com");
            sm.Port = 587;
            sm.Credentials = new System.Net.NetworkCredential("jprajapati0702@gmail.com", "drdkdvjdxhcjgrip");
            sm.EnableSsl = true;
            sm.Send(msg);
            //code for Appering message Your Mail has been send Succesfully

            Label lb1 = new Label();
            lb1.ID = "lb1msg";
            lb1.Text = "Your Message has been send Succesfully";
            lb1.Height = 25;
            lb1.Width = 300;
            lb1.BackColor = System.Drawing.Color.Blue;
            PlaceHolder1.Controls.Add(lb1);

            
        }
    }
}