using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRM_Final_Project
{
    public partial class AfterloginMasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] == null)
                Response.Redirect("CustomerLogin.aspx");
            else
            {
                Label1.Text = Session["name"].ToString();
            }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            //code for LogOut
            Session.RemoveAll();
            Session.Clear();
            Response.Redirect("CustomerLogin.aspx");

        }
    }
}