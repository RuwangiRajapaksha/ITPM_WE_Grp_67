using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dilini
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        string connString = @"Data Source=LAPTOP-IDQLNRRJ;Initial Catalog=event;Integrated Security=True;";
       protected void Page_Load(object sender, EventArgs e)
        {

           using (SqlConnection conn = new SqlConnection(connString)) { 
            
                conn.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM organize",conn);
                DataTable dtd1 = new DataTable();
               sqlDa.Fill(dtd1);
                GridView1.DataSource = dtd1;
                GridView1.DataBind();
           

            }

        
    }
    }
}