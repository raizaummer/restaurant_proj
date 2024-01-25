using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace restaurant
{
    public partial class WebForm14 : System.Web.UI.Page
    { 
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtamnt.Text = Session["dt"].ToString();
                grid();
            }
        }
         

        public void grid()
        {
            int lid1 = Convert.ToInt32(Session["lid"]);
            string s = "SELECT  oid,pname,qty,price,[dbo].[order].prid FROM[dbo].[order] inner join product on[dbo].[order].prid = product.prid where uid='" + lid1 + "' and status='order placed'";
            TextBox1.Text = Session["dt"].ToString();
            DataTable dt = db.select(s);
            grd.DataSource = dt;
            grd.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int uid1 = Convert.ToInt32(Session["lid"]);
            string s = "insert into shipping values('" + txtname.Text + "','" + txtphone.Text + "','" + txtstreet1.Text + "','" + txtstreet2.Text + "','" + txtcity.Text + "','" + txtstate.Text + "','" + txtzip.Text + "','" +txtcountry.Text+"','"+uid1+"')";
            int i=db.exenonquery(s);
            if (i == 0)
            {
                Response.Write("failed");

            }
            else
            {
                Response.Write("success");
            }
            Response.Redirect("tUserPayment.aspx");
        }
        public static int oid;
        protected void linkbutton1_Click(object sender, EventArgs e)
        {
            int prid;
            int oid = Convert.ToInt32((sender as LinkButton).CommandArgument);
            GridViewRow clickedRow = ((LinkButton)sender).NamingContainer as GridViewRow;
            string a = clickedRow.Cells[3].Text;
            int.TryParse(a, out prid);

            string s1 = "delete from [dbo].[order] where  oid='"+oid+"' and prid='"+prid+"' and status='order placed'";
            db.exenonquery(s1);
            int lid1 = Convert.ToInt32(Session["lid"]);
            string s = "SELECT  sum(qty*price) as total FROM[dbo].[order] inner join product on[dbo].[order].prid = product.prid where uid='" + lid1 + "' and status='order placed'";
            DataTable dt = db.select(s);
            if (dt.Rows.Count > 0)
            {
                Session["dt"] = dt.Rows[0][0].ToString();
                txtamnt.Text = Session["dt"].ToString();
                //Response.Redirect("tUserCart.aspx");
            }
            else
            {
                //Response.Write("please select product");
            }
            grid();

        }
    }
}