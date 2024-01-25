using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace restaurant
{
    public partial class WebForm18 : System.Web.UI.Page
    { dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {if (!IsPostBack) ;

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            string prid = DataList1.DataKeys[e.Item.ItemIndex].ToString();

            //Textbox txtquantity =(TextBox)(e.Item.FindControl("txtquantity"));
            int lid1 = Convert.ToInt32(Session["lid"]);

            TextBox qty = (TextBox)e.Item.FindControl("txtquantity");
            var qty1 = qty.Text;
            Label lbl = (Label)DataList1.Items[0].FindControl("Label1");
            lbl.Text = "";

            //var txtquantity = DataList1.FindControl("txtquantity") as TextBox;
            string date = DateTime.Now.ToString("yyyy-MM-dd");
            //string quantity = txtquantity.Text;
            string t = "select productqty from product where prid='" + prid + "'";
            DataTable dt = db.select(t);
            int quantity = Convert.ToInt32(dt.Rows[0][0]);

            int txtbox = Convert.ToInt32(qty.Text);

            if (quantity < txtbox)
            {
                lbl.Visible = true;
                lbl.Text = "Only " + quantity + " available";

            }
            else
            {
                string s = "insert into dbo.[order] values('" + qty1 + "','" + date + "' ,'" + lid1 + "','" + prid + "','order placed')";
                int i = db.exenonquery(s);
                if (i == 1)
                {
                    Response.Write("success");
                }
                else
                {
                    Response.Write("failed");
                }
                string d = "update product set productqty=productqty - '" + qty.Text + "' where prid='" + prid + "'";
                db.exenonquery(d);
                qty.Text = "";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                int lid1 = Convert.ToInt32(Session["lid"]);
                string s = "SELECT  sum(qty*price) as total FROM[dbo].[order] inner join product on[dbo].[order].prid = product.prid where uid='" + lid1 + "' and status='order placed'";
                DataTable dt = db.select(s);
                if (dt.Rows.Count > 0)
                {
                    Session["dt"] = dt.Rows[0][0].ToString();

                    Response.Redirect("tUserCart.aspx");
                }
                else
                {
                    Response.Write("please select product");
                }
            }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}