using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_UserLogin : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\WebSite\\pharmacetical\\App_Data\\Pharmacetical_Company.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds = new DataSet();


    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void btnsing_Click(object sender, EventArgs e)
    {

        cn.Open();
        cmd.CommandText = "select * From Admin where Name='" + txtname.Text + "'and Password = '" + txtpass.Text + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        da.SelectCommand = cmd;
        da.Fill(ds);
        int count = ds.Tables[0].Rows.Count;
        if (count == 1)
        {

            Response.Redirect("~/Admin/Category.aspx");

        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Validation", "<script language='javascript'>alert('Invalid Name & Password ')</script>");
        }

        cn.Close();


    }
}