using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Drawing;
using System.Reflection.Emit;

namespace restaurant
{
    public partial class WebForm6 : System.Web.UI.Page
    {dboperation dboperation = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack) { }
        }
        dboperation db=new dboperation();
        protected void Button1_Click(object sender, EventArgs e)
        {
            int prid1 = Convert.ToInt32(Session["id"]);
            if (FileUpload1.HasFile)
            {

                FileUpload1.SaveAs(Server.MapPath("~/photo1/" + FileUpload1.FileName));
                lblmsg.Text = FileUpload1.FileName;
                
               
            }
            else
            {
                lblmsg.Text = " NO file uploaded.;";
            }
            string ob = DropDownList1.SelectedValue;
            int t=Convert.ToInt32(txtpqty.Text);  
            if (t > 0)
            {
                string s = "insert into product values('" + txtname.Text + "','" + txtdetail.Text + "','" + ob + "','" + FileUpload1.FileName + "','" + txtprice.Text + "','" + txtpqty.Text + "')";
                int i = db.exenonquery(s);
                if (i == 0)
                {
                    Response.Write("Successfully Updated");
                }
                else
                {
                    Response.Write("failed");
                }
            }
            else
            {
                Response.Write("Insertion not possible");
            }
          

         
            txtname.Text = "";
            txtdetail.Text="";
            txtprice.Text = "";
             
        }
    }
}