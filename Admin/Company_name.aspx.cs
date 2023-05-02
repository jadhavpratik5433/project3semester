using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Company_name : System.Web.UI.Page
{
    SqlConnection Cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\WebSite\\pharmacetical\\App_Data\\Pharmacetical_Company.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnnew_Click(object sender, EventArgs e)
    {
        Cn.Open();
        cmd.CommandText = "Select max(Company_ID) From Company";
        cmd.Connection = Cn;
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        i++;
        txtid.Text = i.ToString();
        Cn.Close();

    }
protected void  btnsave_Click(object sender, EventArgs e)
{
    Cn.Open();
    cmd.CommandText = "insert into Company values("+txtid.Text+",'"+txtname.Text+"')";
    cmd.Connection = Cn;
    cmd.ExecuteNonQuery();
    Cn.Close();
    GridView1.DataBind();
    ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='javascript'>alert('Save Successfully')</Script>");
}
protected void btnupdate_Click(object sender, EventArgs e)
{
    Cn.Open();
    cmd.CommandText = "Update Company set Company_Id='" + txtid.Text + "',Company_name='" + txtname.Text + "'";
    cmd.Connection = Cn;
    cmd.ExecuteNonQuery();
    Cn.Close();
    GridView1.DataBind();
    ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='javascript'>alert('Update Successfully')</Script>");
}
protected void btndelete_Click(object sender, EventArgs e)
{
    Cn.Open();
    cmd.CommandText = "Delete from Company Where Company_ID=" + txtid.Text + "";
    cmd.Connection = Cn;
    cmd.ExecuteNonQuery();
    Cn.Close();
    GridView1.DataBind();
    ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='javascript'>alert('Delete Successfully')</Script>");

}
protected void btncancel_Click(object sender, EventArgs e)
{
    txtid.Text = "";
    txtname.Text = "";
}
protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
{
    txtid.Text = GridView1.SelectedRow.Cells[1].Text;
    txtname.Text = GridView1.SelectedRow.Cells[2].Text;
}
}