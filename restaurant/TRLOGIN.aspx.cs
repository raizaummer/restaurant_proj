using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace restaurant
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { }
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
           //int lid1 = Convert.ToInt32(Session["lid"]);

            string s = "select * from flogin where username='" + uname.Text + "' and password='" + password.Text + "' ";
            DataTable dt = db.select(s);
            if (dt.Rows.Count == 1)
            {
                Session["uname"] = dt.Rows[0]["username"].ToString();
                Session["lid"] = dt.Rows[0]["lid"].ToString();

                if (dt.Rows[0]["role"].ToString() == "admin")
                {
                    Response.Redirect("tAdminHome.aspx");
                }
                else
                {
                    Response.Redirect("TUserHome.aspx");
                }
            }
            else
            {
                    Response.Write("Invalid username and password");
              
            }
        }
    }
}