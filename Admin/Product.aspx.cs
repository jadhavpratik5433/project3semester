using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Product : System.Web.UI.Page
{
    SqlConnection Cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\WebSite\\pharmacetical\\App_Data\\Pharmacetical_Company.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnnew_Click(object sender, EventArgs e)
    {
        Cn.Open();
        cmd.CommandText = "Select Count(Product_ID) From Product";
        cmd.Connection = Cn;
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        i++;
        txtid.Text = i.ToString();
        Cn.Close();
        
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        Cn.Open();
        cmd.CommandText = "insert into Product values("+txtid.Text+",'"+txtname.Text+"','"+Dropcategory.Text+"','"+ Dropcompanyname.Text+"','"+Dropunit.Text + "','" + txtprice.Text + "','" + txtuse.Text + "','" + txtspecification.Text + "','" + txtcontent.Text + "','" + txtstock.Text + "','" + txtexpdate.Text + "','" + txtimage.ImageUrl + "')";
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
            FileUpload1.SaveAs(Server.MapPath("~\\Images\\" + FileUpload1.FileName));
            txtimage.ImageUrl = "~\\Images\\" + FileUpload1.FileName;
            GridView1.DataBind();
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='javascript'>alert</Script>");
        }
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtid.Text = "";
        txtname.Text = "";
        txtcontent.Text = "";
        txtexpdate.Text = "";
        txtimage.ImageUrl = "";
        txtprice.Text = "";
        txtspecification.Text = "";
        txtstock.Text = "";
        txtexpdate.Text = "";
        Dropcategory.Text = "";
        Dropcompanyname.Text = "";
        Dropunit.Text = "";

    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        Cn.Open();
        cmd.CommandText = "Update Product set Product_ID=" + txtid.Text + ",Product_Name='" + txtname.Text + "',Price=" + txtprice.Text + ",Uses='" + txtuse.Text + "',Specification='" + txtspecification.Text + "',Contents='" + txtcontent.Text + "',Stock='" + txtstock.Text + "',Expiry_Date='" + txtexpdate.Text + "',Images='" + txtimage.ImageUrl + "'Where Product_ID=" + txtid.Text + "";
        cmd.Connection = Cn;
        cmd.ExecuteNonQuery();
        Cn.Close();
        GridView1.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='javascript'>alert('Updated successfully')</Script>");

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtid.Text = GridView1.SelectedRow.Cells[1].Text;
        txtname.Text = GridView1.SelectedRow.Cells[2].Text;
        Dropcategory.Text = GridView1.SelectedRow.Cells[3].Text;
        Dropcompanyname.Text = GridView1.SelectedRow.Cells[4].Text;
      //  Dropunit.Text = GridView1.SelectedRow.Cells[5].Text;
        txtprice.Text = GridView1.SelectedRow.Cells[6].Text;
        txtuse.Text = GridView1.SelectedRow.Cells[7].Text;
        txtspecification.Text = GridView1.SelectedRow.Cells[8].Text;
        txtcontent.Text = GridView1.SelectedRow.Cells[9].Text;
        txtstock.Text = GridView1.SelectedRow.Cells[10].Text;
        txtexpdate.Text = GridView1.SelectedRow.Cells[11].Text;
        txtimage.ImageUrl = GridView1.SelectedRow.Cells[12].Text;
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        Cn.Open();
        cmd.CommandText = "Delete from Product where Product_ID=" + txtid.Text + "";
        cmd.Connection = Cn;
        cmd.ExecuteNonQuery();
        Cn.Close();
        GridView1.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='javascript'>alert('Delete Successfully')</Script>");
    }
    protected void Dropunit_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
