using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace restaurant
{
    public partial class WebForm10 : System.Web.UI.Page
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
            string s = " SELECT  fname,lname,PID,payment.status,amount,oid,payment.uid FROM  [dbo].[user]   inner join payment on   [dbo].[user].lid= payment.uid inner join dbo.[order] on dbo.[order].uid=payment.uid  where payment.status='payment confirmed'";
            db.select(s);
            DataTable dt = db.select(s);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void linkbutton_Click(object sender, EventArgs e)
        {
            int oid;
            GridViewRow clickedRow = ((LinkButton)sender).NamingContainer as GridViewRow;
            string a = clickedRow.Cells[5].Text;
            int.TryParse(a, out oid);
            int uid;
             string m = clickedRow.Cells[6].Text;
            int.TryParse(m, out uid);

            var date = DateTime.Now.ToString("dd/MM/yyyy");
            int pid1 = Convert.ToInt32((sender as LinkButton).CommandArgument);
            int lid1 = Convert.ToInt32(Session["lid"]);

            string n = "insert into notification values('Product placed and will be delivered within 2 hours','" + oid + "','" + date + "','confirm','"+uid+"')";
            db.exenonquery(n);

           
            string s = "update payment set status='delivered' where PID='"+pid1+"'";
            db.exenonquery(s);
            grid();

        }
    }
}