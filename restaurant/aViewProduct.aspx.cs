using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace restaurant
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        dboperation db=new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                grid();
            }

        }
        public void grid()
        {
            string s = "select * from product";
            db.select(s);
            DataTable dt = db.select(s);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        public static int prid1;
        protected void linkbutton_Click(object sender, EventArgs e)
        {
            int prid1 = Convert.ToInt32((sender as LinkButton).CommandArgument);
            Session["id"] = prid1;

            string g = "select * from product where prid = '" + prid1 + "'";

            DataTable dt = db.select(g);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            Response.Redirect("tedit.aspx");
           
        }
        public static int prid;
        protected void linkbutton1_Click(object sender, EventArgs e)
        {
            int prid = Convert.ToInt32((sender as LinkButton).CommandArgument);

          
            string s = "delete from product where prid = '" + prid + "'";
            db.exenonquery(s);
            grid();
             

        }

         
    }
}