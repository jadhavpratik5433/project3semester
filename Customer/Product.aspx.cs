using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Customer_Product : System.Web.UI.Page
{
    SqlConnection Cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\WebSite\\pharmacetical\\App_Data\\Pharmacetical_Company.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
  
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        int a = Convert.ToInt32(btn.CommandArgument);
        Session["pid"] = a;

        Cn.Open();
        cmd.CommandText = "insert into Cart values(" + a + ")";
        cmd.Connection = Cn;
        cmd.ExecuteNonQuery();
        Cn.Close();

        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='javascript'>alert('Peyment Successfully')</Script>");

        }


    }
}