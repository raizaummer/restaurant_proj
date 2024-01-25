using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace restaurant
{
    public class dboperation
    {
        public SqlConnection con;
        public SqlCommand cmd;

        public dboperation()
        {
            con = new SqlConnection("Data Source=LAPTOP-A8IJCUCT\\SQLEXPRESS;Initial Catalog=FDPROJ;Integrated Security=True");
            cmd = new SqlCommand();
            cmd.Connection = con;

        }
        public SqlConnection getcon()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            return con;
        }
        public void dbclose()
        {
            con.Close();
        }
        public int exenonquery(String sql)
        {
            getcon();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = sql;
            int i = cmd.ExecuteNonQuery();
            return i;
        }
        public object exescalar(String sql)
        {
            getcon();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = sql;
            object ob = cmd.ExecuteScalar();
            return ob;
        }
        public DataTable select(String sql)
        {
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = sql;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
       
    }
}
