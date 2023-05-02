using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Customer_Cart1 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\WebSite\\pharmacetical\\App_Data\\Pharmacetical_Company.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    SqlDataReader dr;
    DataSet ds = new DataSet();

    DataTable dt = new DataTable();

    string z = "inprocess";
    string s, s1, s2;
    int a;
    int p;
    int b;
    string pp;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList q = sender as DropDownList;
        GridViewRow row =
            (GridViewRow)q.NamingContainer;
        int price = Convert.ToInt32(row.Cells[2].Text);
        Label lbltotal = row.FindControl("lbltotal") as Label;
        string s = Convert.ToString(price * Convert.ToInt32(q.SelectedItem.Text));
        lbltotal.Text = s;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            int id = Convert.ToInt32((GridView1.Rows[i].Cells[0].Text));
            string bb = GridView1.Rows[i].Cells[1].Text;
            string ff = (GridView1.Rows[i].Cells[2].Text);
            int p = Convert.ToInt32(GridView1.Rows[i].Cells[3].Text);
            DropDownList q = (DropDownList)GridView1.Rows[i].FindControl("DropDownList1") as DropDownList;
            int c = Convert.ToInt32(q.SelectedItem.Text);
            Label l1 = (Label)GridView1.Rows[i].FindControl("lbltot") as Label;
            int d = Convert.ToInt32(l1.Text);
            cn.Open();
            cmd.CommandText = "insert into Cart_details values(" + id + ",'" + bb + "','" + ff + "'," + p + "," + d + "," + c + ")";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();



            //cn.Open();
            //cmd.CommandText = "Select (pname) from cart_details";
            //cmd.Connection = cn;
            //da.SelectCommand = cmd;
            //da.Fill(dt);
            //dr = cmd.ExecuteReader();
            //if (dr.HasRows)
            //{
            //    while (dr.Read())
            //    {
            //        s2 = (dr.GetString(0));
            //    }
            //}
            //txtmodel.Text = txtmodel.Text + s2;
            //cn.Close();

            //for display category:
            cn.Open();
            cmd.CommandText = "Select (Category) from cart_details";
            cmd.Connection = cn;
            da.SelectCommand = cmd;
            da.Fill(dt);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    s2 = (dr.GetString(0));
                }
            }
            txtcategory.Text = txtcategory.Text + s2;
            cn.Close();











        }

        cn.Open();
        cmd.CommandText = "Select sum(Quantity) from Cart_details";
        int quan = Convert.ToInt32(cmd.ExecuteScalar());
        cmd.Connection = cn;
        lblqun.Text = quan.ToString();
        cn.Close();

        cn.Open();
        cmd.CommandText = "Select sum(Total) from Cart_details";
        int amt = Convert.ToInt32(cmd.ExecuteScalar());
        cmd.Connection = cn;
        txtamount.Text = amt.ToString();
        cn.Close();

        cn.Open();
        cmd.CommandText = "Select (Category) from Cart_details";
        cmd.Connection = cn;
        da.SelectCommand = cmd;
        da.Fill(dt);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                s2 = (dr.GetString(0));
            }
            txtcategory.Text = txtcategory.Text;
            cn.Close();

        }




        cn.Open();
        cmd.CommandText = "select count(Oid) from [Order]";
        cmd.Connection = cn;
        int x = Convert.ToInt32(cmd.ExecuteScalar());
        x++;
        txtid.Text = x.ToString();
        cn.Close();

        txtcname.Text = Session["user"].ToString();
        txtdate.Text = System.DateTime.Now.ToShortDateString();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        // string pp="";
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            pp = GridView1.Rows[i].Cells[2].Text;
        }

        cn.Open();
        cmd.CommandText = "insert into [order] values (" + txtid.Text + ",'" + txtcname.Text + "','" + txtdate.Text + "','" + txtcategory.Text + "'," + lblqun.Text + "," + txtamount.Text + ",'" + z + "','" + txtcategory.Text + "','"+txtcname.Text +"','"+txtcity.Text +"','" + txtaddress.Text + "',"+txtpin.Text +"," + txtcontact.Text + ",'" + txtcategory.Text + "'," + txtamount.Text + ")";
        // if(rdcod.Checked==true)
        //  cmd.Parameters.AddWithValue("@p1",rdcod.Text);
        // else
        //cmd.Parameters.AddWithValue("@p1",rdonline.Text);
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        //autogenerate payid:
        //cn.Open();
        //cmd.CommandText = "select count(payid) form payment";
        //cmd.Connection= cn;
        //int x = Convert.ToInt32(cmd.ExecuteScalar());
        //x++;
        //txtpayid.Text = x.ToString();
        //cn.Close();

        //cn.Open();
        //cmd.CommandText = "insert into payment values ("+txtpayid.Text+","+txtid.Text+",'"+txtcname.Text+"',"+txtdate.Text+",'"+txtcategory.Text+"',"+txtamount+")";
        //cmd.Connection= cn;
        //if (rdcod.Checked==true)
        //    cmd.Parameters.AddWithValue("@p1",rdcod.Text);
        //else
        //    cmd.Parameters.AddWithValue("@p1",rdonline.Text);
        //cmd.ExecuteNonQuery();
        //cn.Close();
        //deleting from database:
        cn.Open();
        cmd.CommandText = "delete from Cart_details";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();

        Session["orderid"] = txtid.Text;
        Session["cust"] = txtcname.Text;
        Session["caddress"] = txtaddress.Text;


        Session["price"] = lbltotal.Text;
        Session["quantity"] = lblqun.Text;
        Session["total"] = lbltotal.Text;


    }
}