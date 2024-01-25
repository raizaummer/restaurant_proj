using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace restaurant
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        dboperation db=new dboperation();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { 
          int  prid1 =Convert.ToInt32(Session["id"]);
            string g = "select * from product where prid = '" + prid1 + "'";

            DataTable dt = db.select(g);
            //GridView1.DataSource = dt;
            //GridView1.DataBind();
            if (dt.Rows.Count > 0)
            {
                txtproduct.Text = dt.Rows[0][1].ToString();
                txtdetail.Text = dt.Rows[0][2].ToString();
                txtcategory.Text = dt.Rows[0][3].ToString();
                 Label1.Text = dt.Rows[0][4].ToString();
                    Session["path"] = dt.Rows[0][4].ToString();
                txtprice.Text = dt.Rows[0][5].ToString();
                    txtq.Text = dt.Rows[0][6].ToString();
            }
            
        }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            if (FileUpload1.HasFile){
                FileUpload1.SaveAs(Server.MapPath("~/photo1" + FileUpload1.FileName));
                Label1.Text = FileUpload1.FileName;
                Session["path"] = Label1.Text;

            }
            else
            {
                Label1.Text = Session["path"].ToString();
            }
            
            
            Label1.Visible= false;
            //string f = "insert into product(image) values('" + Label1.Text + "')";
            
            int prid1 = Convert.ToInt32(Session["id"]);
            int t = Convert.ToInt32(txtq.Text);
            if (t > 0)
            {

                string s = "update product set pname='" + txtproduct.Text + "',detail='" + txtdetail.Text + "',category='" + txtcategory.Text + "',image='" + Session["path"] + "',price='" + txtprice.Text + "',productqty='" + txtq.Text + "' where prid='" + prid1 + "'";
                db.exenonquery(s);
                Response.Redirect("aViewProduct.aspx");
            }
            else
            {
                Response.Write("Insertion not possible");
            }
            //if(i =1)
            //{
            //    Response.Write("updated succesfully");
            //}
            //else
            //{
            //    Response.Write("failed");
            //}
                txtproduct.Text = "";
                txtprice.Text = "";
                txtdetail.Text = "";
                txtcategory.Text = "";

            
        }
    }
}