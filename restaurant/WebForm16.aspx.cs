using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace restaurant
{
    public partial class WebForm16 : System.Web.UI.Page
    {dboperation db=new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                int lid1 = Convert.ToInt32(Session["lid"]);
                string s= "SELECT nid,notification,[dbo].[notification].oid,ndate,[dbo].[product].pname,[dbo].[order].qty,[dbo].[notification].[status],[dbo].[notification].[uid] FROM [dbo].[notification] inner join [dbo].[order] on[dbo].[order].oid = [dbo].[notification].oid inner join product on[dbo].[order].prid = [dbo].[product].prid where[dbo].[notification].uid = '" + lid1+"' and [dbo].[notification].status = 'confirm'";

                 DataTable dt = db.select(s);
                Gridview1.DataSource = dt;
                Gridview1.DataBind();




            }
        }
    }
}