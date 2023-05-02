using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_Feedback : System.Web.UI.Page
{
    SqlConnection Cn=new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\WebSite\\pharmacetical\\App_Data\\Pharmacetical_Company.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsub_Click(object sender, EventArgs e)
    {
        Cn.Open();
        cmd.CommandText = "insert into Feedback values('" + txtname.Text + "','" + txtaddress.Text + "'," + txtmobile.Text + ",'" + txtemail.Text + "','" + txtmessage.Text + "')";
        cmd.Connection = Cn;
        cmd.ExecuteNonQuery();
        Cn.Close();
    }
}