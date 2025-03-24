using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;//for DB connectivity: ADO.NET
using System.Data.SqlClient;//for DB connectivity: ADO.NET
using System.Configuration;//for web.config


namespace CRM_Final_Project
{
    public partial class PredefinedQueryandAanswer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cascading();

            }

        }
        protected void cascading()
        {
            //code for selecting Query type from Fist drop down list

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
            con.Open();//open DB connection
            string qry = "select * from PredefindQueryAndAnswer ";//SQL Query
            SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
            cmd.CommandType = CommandType.Text;
            DropDownList1.DataSource = cmd.ExecuteReader();
            DropDownList1.DataTextField = "QueryName";
            DropDownList1.DataValueField = "PQueryID";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("--Select--", "0"));
        }        

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (this.DropDownList1.SelectedItem.Value != "0")
            {
                string constr = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT QueryAnswer FROM PredefindQueryAndAnswer WHERE  PQueryID= @PQueryID", con))
                    {
                        using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                        {
                            cmd.Parameters.AddWithValue("@PQueryID", this.DropDownList1.SelectedItem.Value);
                            con.Open();
                            object address = cmd.ExecuteScalar();
                            con.Close();
                            this.TextBox1.Text = address.ToString();
                            Label2.Visible = true;
                            Label3.Visible = true;
                            TextBox1.Visible = true;
                            Button1.Visible = true;
                            Button2.Visible = true;                                                     
                           
                        }
                    }
                }
            }

            else
            {
                this.TextBox1.Text = "Please Select Query from List";
                Label2.Visible = false;
                Label3.Visible = false;
                TextBox1.Visible = false;
                Button1.Visible = false;
                Button2.Visible = false;
                Button3.Visible = false;
                Label5.Visible = false;
                Label4.Visible = false;
            }
        }

        protected void GetOptioYesSelected(object sender, EventArgs e)
        {
            Label5.Visible = false;
            Label5.Text = "";
            Button3.Visible = false;

            Label4.Visible = true;
            Label4.Text = "ThankYou!";
        }
        protected void GetOptioNoSelected(object sender, EventArgs e)
        {

            Label4.Visible = false;
            Label4.Text = "!";

            Label5.Visible = true;
            Label5.Text = "OK ThankYou! Then You can rase your complaint hear";
            Button3.Visible = true;
        }

    }
}