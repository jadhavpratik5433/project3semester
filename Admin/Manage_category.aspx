<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Manage_category.aspx.cs" Inherits="Admin_Manage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style4
        {
            width: 372px;
        }
        .style3
        {
            height: 44px;
        }
        .style5
        {
            font-size:x-large;
        }
        .style7
        {
            font-size: x-large;
            text-align: left;
            width: 200%;
        }
        .style8
        {
            height: 44px;
            color: #FF9900;
            text-align: center;
        }
        .style9
        {
            width: 88%;
        }
        </style>
</asp:Content>


<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
<br />
<br />
<br />

    <table cellpadding="5" cellspacing="5" align="center" 
    style="border-style: solid; border-width: thin" width="70%">
        <tr>
        <td class="style7" colspan="2" bgcolor="#FF9900" width="100%">

        <strong>
            <asp:Image ID="Image2" runat="server" Height="36px" 
                ImageUrl="~/Images/logo3.png" Width="47px" />

                Manage Category</strong>
        </td>
        
        <td class="style7" bgcolor="#FF9900" width="100%">

            &nbsp;</td>
        
        </tr>
        
        <tr >
            <td class="style9">
                Category ID</td>
            
               
            
            
               
            <td>
                <asp:TextBox ID="txtid" runat="server" Enabled="False" Height="25px" 
                    style="margin-left: 110px; margin-top: 0px" Width="317px"></asp:TextBox>
            </td>
            
               
            
            
               
            <td rowspan="2">
                <asp:Image ID="txtimage" runat="server" Height="117px" Width="144px" />
            </td>
            
               
            
            
               
        </tr>
        <tr>
            <td class="style9">
                Category name</td>
            
            
            <td>
                <asp:TextBox ID="txtname" 
                    runat="server" style="margin-left: 115px" 
                    Width="358px"></asp:TextBox>
            </td>
            
            
        </tr>
        <tr>
            <td width="60%" align="center" colspan="2" style="width: 120%">
                <asp:Button ID="btnnew" runat="server" 
                    
                    
                    style="margin-left: 5px; color: #FFFFFF; font-weight: 700; background-color: #006666;" Text="New" 
                    Width="125px" onclick="btnnew_Click" BackColor="#00CC99" Height="35px" />
                <asp:Button ID="btnsave" runat="server" style="margin-left: 70px" Text="Save" 
                    Width="132px" onclick="btnsave_Click" BackColor="#00CC99" Height="30px" />
                &nbsp;&nbsp;<asp:Button ID="btnupdate" runat="server" style="margin-left: 5px" 
                    Text="Update" Width="115px" onclick="btnupdate_Click" BackColor="#00CC99" 
                    Height="30px" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btndel" runat="server" Height="30px" style="margin-left: 5px" 
                    Text="Delete" Width="121px" onclick="btndel_Click" BackColor="#00CC99" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btncal" 
                    runat="server" style="margin-left: 7px" Text="Cancel" 
                    Width="122px" onclick="btncal_Click" BackColor="#00CC99" Height="30px" />
            </td>
           
            <td width="60%" align="center" style="width: 120%">
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <br />
                <asp:Button ID="txtupload" runat="server" BackColor="#00CC99" Height="30px" 
                    onclick="txtupload_Click" Text="Upload" Width="150px" />
            </td>
           
        </tr>
        <br />
        <br />
        <tr>
            <td class="style8"colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource2" 
                    Width="812px" onselectedindexchanged="GridView1_SelectedIndexChanged" 
                    DataKeyNames="Category_id" AllowPaging="True" PageSize="5" 
                    HorizontalAlign="Center">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Category_id" HeaderText="Category_id" 
                            SortExpression="Category_id" ReadOnly="True" />
                        <asp:BoundField DataField="Category_name" HeaderText="Category_name" 
                            SortExpression="Category_name" />
                        <asp:BoundField DataField="Catgeory_Image" HeaderText="Catgeory_Image" 
                            SortExpression="Catgeory_Image" />
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
            </td>
            <td class="style8">
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
</asp:Content>



