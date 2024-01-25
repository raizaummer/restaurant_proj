using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace restaurant
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        dboperation db=new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                grid();

                Calendar1.Visible = false;
            }
        }
        public void grid()
        {
            string s = "SELECT PID, fname,lname,amount,status  FROM  [dbo].[user] inner join payment on  [dbo].[user].lid= payment.uid";

            db.select(s);
            DataTable dt = db.select(s);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string var=Calendar1.SelectedDate.ToShortDateString();
            string s = "SELECT PID,fname,lname,amount,status  FROM  [dbo].[user] inner join payment on  [dbo].[user].lid= payment.uid where edate='"+var+"'";
            db.select(s);
            DataTable dt = db.select(s);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            


        }

        protected void ddl1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddl1.SelectedItem.Text == "Payment Confirmed")
            {
                string g = "SELECT PID, fname,lname,amount,status FROM[dbo].[user] inner join payment on[dbo].[user].lid = payment.uid where status='payment confirmed'";
                db.select(g);
                DataTable dt = db.select(g);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                string g = "SELECT PID, fname,lname,amount,status FROM[dbo].[user] inner join payment on[dbo].[user].lid = payment.uid where status='delivered'";
                db.select(g);
                DataTable dt = db.select(g);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if(Calendar1.Visible)
            {
                Calendar1.Visible = false;
            }
            else
            {
                Calendar1.Visible=true;
            }
        }
    }
}