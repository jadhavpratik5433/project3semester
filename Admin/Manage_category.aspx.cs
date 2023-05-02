using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Admin_Manage : System.Web.UI.Page
{
    SqlConnection Cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\WebSite\\pharmacetical\\App_Data\\Pharmacetical_Company.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        Cn.Open();
        cmd.CommandText = "insert into Category values(" + txtid.Text + ",'" + txtname.Text + "','"+txtimage.ImageUrl+"')";
        cmd.Connection = Cn;
        cmd.ExecuteNonQuery();
        Cn.Close();
        GridView1.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='javascript'>alert('Save Successfully')</Script>");
    }
    protected void btnupload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
            FileUpload1.SaveAs(Server.MapPath("~\\Images\\"+FileUpload1.FileName ));
            txtimage.ImageUrl = "~\\Images\\" + FileUpload1.FileName;
            GridView1.DataBind();
           ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='javascript'>alert('Upload file Successfully')</Script>");
        }
    }
    protected void btncal_Click(object sender, EventArgs e)
    {
        txtid.Text = "";
        txtname.Text = "";
        txtimage.ImageUrl = "";
    }
    protected void btnnew_Click(object sender, EventArgs e)
    {
        Cn.Open();
        cmd.CommandText = "select Count (category_id) From Category";
        cmd.Connection = Cn;
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        i++;
        txtid.Text = i.ToString();
        Cn.Close();


    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtid.Text = GridView1.SelectedRow.Cells[1].Text;
        txtname.Text = GridView1.SelectedRow.Cells[2].Text;
        txtimage.ImageUrl = GridView1.SelectedRow.Cells[3].Text;
    }
    protected void btndel_Click(object sender, EventArgs e)
    {
        Cn.Open();
        cmd.CommandText = "Delete from Category where Category_id=" + txtid.Text + "";
        cmd.Connection = Cn;
        cmd.ExecuteNonQuery();
        Cn.Close();
        GridView1.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='javascript'>alert('Delete Successfully')</Script>");
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        Cn.Open();
        cmd.CommandText = "Update Category set Category_id='" + txtid.Text + "',Category_name= '" + txtname.Text + "' ,Catgeory_Image='" + txtimage.ImageUrl +"' Where Category_id=" + txtid.Text + "";
        cmd.Connection = Cn;
        cmd.ExecuteNonQuery();
        Cn.Close();
        GridView1.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='javascript'>alert('Update  Successfully')</Script>");
    }
    protected void txtupload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
            FileUpload1.SaveAs(Server.MapPath("~\\Images\\" + FileUpload1.FileName));
            txtimage.ImageUrl = "~\\Images\\" + FileUpload1.FileName;
            GridView1.DataBind();
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='javascript'>alert</Script>");
        }
    }
}