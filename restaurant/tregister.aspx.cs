using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace restaurant
{
    public partial class WebForm3 : System.Web.UI.Page
    {dboperation db=new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { }
        }

        

        protected void Button1_Click1(object sender, EventArgs e)
        {
            //int uid = Convert.ToInt32(Session["uid"]);
            object ob = db.exescalar("insert into flogin values('" + fname.Text + "','" + password.Text + "','user');select @@IDENTITY");
            
                string g;
            if (dot1.Checked == true)
            {
                g = "Male";
            }
            else if (dot2.Checked == true)
            {
                g = "Female";
            }
            else
            {
                g = "Prefer not to say";
            }
            string s = "insert into dbo.[user] values('" + fname.Text + "','" + lname.Text + "','" + mobile.Text + "','" + g + "','" + email.Text + "','" + password.Text + "','"+ob+"')";
            int i=db.exenonquery(s);
            if (i == 0)
            {
                Response.Write("failed");

            }
            else
            {
                Response.Write("successfully saved");
            }
            fname.Text = "";
            lname.Text = "";
            mobile.Text = "";
            dot1.Text = "";
            dot2.Checked= false;
            dot3.Checked= false;
            email.Text = "";
            password.Text = "";
            cpassword.Text = "";
            Response.Redirect("TRLOGIN.aspx");

        }

    }
}