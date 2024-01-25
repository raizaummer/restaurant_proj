using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace restaurant
{
    public partial class WebForm15 : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtamnt.Text = Session["dt"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int lid1 = Convert.ToInt32(Session["lid"]);
            var date = DateTime.Now.ToString("dd/MM/yyyy");

            string s = "insert into payment values('" + txttype.Text + "','" + txtbank.Text + "','" + txtcard.Text + "','" + txtcvv.Text + "','" + txtamnt.Text + "','" + date + "','" + lid1 + "','payment confirmed')";

            int i = db.exenonquery(s);
          
            string o = "update dbo.[order] set status='order confirmed'";
        
                 
              db.exenonquery(o);
            if (i == 0)
            {
                Response.Write("failed");

            }
            else
            {
                Response.Write("success");
            }
            txttype.Text = "";
            txtbank.Text = "";
            txtcard.Text = "";
            txtcvv.Text = "";
            txtamnt.Text = "";
            Response.Redirect("tUserHome.aspx");
        }
    }
}