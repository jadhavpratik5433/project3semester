using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_manageadmin : System.Web.UI.Page
{
    SqlConnection Cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\WebSite\\pharmacetical\\App_Data\\Pharmacetical_Company.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
      Cn.Open();
        cmd.CommandText = "insert into Admin values('"+txtname.Text+"','"+txtpassword.Text+"')";
        cmd.Connection = Cn;
        cmd.ExecuteNonQuery();
        Cn.Close();
        GridView1.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='javascript'>alert('Save Successfully')</Script>");
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        Cn.Open();
        cmd.CommandText = "update Admin set Name='"+txtname.Text+"', Password = '"+txtpassword.Text+"' where Name = '"+txtname.Text+"'";
        cmd.Connection = Cn;
        cmd.ExecuteNonQuery();
        Cn.Close();
        GridView1.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='javascript'>alert('Update Successfully')</Script>");
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        Cn.Open();
        cmd.CommandText = "Delete from Admin where name = '" + txtname.Text + "'";
        cmd.Connection = Cn;
        cmd.ExecuteNonQuery();
        Cn.Close();
        GridView1.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='javascript'>alert('Delete Successfully')</Script>");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtname.Text = GridView1.SelectedRow.Cells[1].Text;
        txtpassword.Text = GridView1.SelectedRow.Cells[2].Text;
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        txtpassword.Text = "";
    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        txtname.Text = GridView1.SelectedRow.Cells[1].Text;
        txtpassword.Text = GridView1.SelectedRow.Cells[2].Text;
    }
}