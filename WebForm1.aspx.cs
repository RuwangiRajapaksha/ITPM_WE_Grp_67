using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Collections;
using System.Data.SqlClient;
using System.Web.Services.Description;

namespace dilini
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        SqlConnection conn = new SqlConnection("Data Source=LAPTOP-IDQLNRRJ;Initial Catalog=event;Integrated Security=True");
        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                SqlCommand cmd = new SqlCommand(@"INSERT INTO organize (o_name,o_id,type,Date)VALUES ('"+ TextBox1.Text.ToString() + "','"+TextBox2.Text +"','"+ DropDownList1.SelectedValue.ToString() + "','"+TextBox3.Text.ToString() +"')",conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Data inserted Successfully');</script>");
                conn.Close();
            }
            catch  {
                Response.Write("<script>alert('Enter valid event code');</script>");
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmdN1 = new SqlCommand(@"DELETE FROM [dbo].[organize]
            WHERE [o_id]='"+TextBox1.Text+"'", conn);
            conn.Open();
            cmdN1.ExecuteNonQuery();
            conn.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }
        
    }
}