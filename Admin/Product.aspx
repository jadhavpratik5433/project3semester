<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" debug="true" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 101%;
            height: 74px;
            align: center;
        }
        .style3
        {
            width: 332px;
        }
        .style4
        {
            width: 340px;
            margin-left: 40px;
        }
        .style5
        {
            height: 48px;
        }
        .style7
        {
            font-size: x-large;
            text-align: left;
        }
        .style9
        {
            width: 36px;
            color: #009999;
            height: 41px;
            margin-left: 40px;
        }
        .style10
        {
            height: 41px;
        }
        .style11
        {
            width: 36px;
            color: #FF9900;
            height: 64px;
        }
        .style12
        {
            width: 36px;
            color: #009999;
            height: 64px;
            margin-left: 40px;
        }
        .style14
        {
            width: 19px;
        }
        .style15
        {
            width: 19px;
            color: #009999;
            margin-left: 40px;
        }
        .style16
        {
            width: 19px;
            color: #009999;
            height: 41px;
            margin-left: 40px;
        }
        .style17
        {
            height: 78px;
        }
        .style18
        {
            width: 36px;
            color: #009999;
            height: 78px;
            margin-left: 40px;
        }
        .style19
        {
            width: 19px;
            color: #009999;
            margin-left: 40px;
            height: 78px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<br />
<br />
    <table cellpadding="5" cellspacing="5" class="style2" align="center" 
    style="border-style: solid; border-width: thin">
       <tr>
       <td class="style7" colspan="5" bgcolor="#FF9900" width="100%">
       <strong>
            <asp:Image ID="Image2" runat="server" Height="36px" 
                ImageUrl="~/Images/logo3.png" Width="47px" />

                Product</strong>
       </td>
       </tr>
       
        <tr>
            <td>
                Product ID</td>
            <td class="style4">
                <asp:TextBox ID="txtid" runat="server" Height="37px" Width="216px"></asp:TextBox>
            </td>
          
            
            <td rowspan="3" class="style14">
                <asp:Image ID="txtimage" runat="server" Height="141px" Width="188px" />
            </td>
           
        </tr>
        <tr>
            <td>
                Product Name</td>
            <td class="style4">
                <asp:TextBox ID="txtname" runat="server" Height="38px" Width="208px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            
        </tr>
        <tr>
            <td>
                Category</td>
            <td class="style4">
                <asp:DropDownList ID="Dropcategory" runat="server" Height="79px" Width="211px" 
                    DataSourceID="SqlDataSource3" DataTextField="Category_name" 
                    DataValueField="Category_name">
                    <asp:ListItem>Select Category</asp:ListItem>
                    <asp:ListItem>Stomach Care</asp:ListItem>
                    <asp:ListItem>Bone, join ,muscle</asp:ListItem>
                    <asp:ListItem>Pain Relief</asp:ListItem>
                    <asp:ListItem>Eye Care</asp:ListItem>
                    <asp:ListItem>Cold ,Cough</asp:ListItem>
                    <asp:ListItem>Fever</asp:ListItem>
                    <asp:ListItem>Mental Wellness</asp:ListItem>
                    <asp:ListItem>Kindney</asp:ListItem>
                    <asp:ListItem>Respiratory Care</asp:ListItem>
                    <asp:ListItem>Baby Care </asp:ListItem>
                    <asp:ListItem>Hair Care </asp:ListItem>
                    <asp:ListItem>Elderly Care</asp:ListItem>
                    <asp:ListItem>Woman Care</asp:ListItem>
                    <asp:ListItem>Skin Care</asp:ListItem>
                    <asp:ListItem>Nutritional Drinks</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Category_name] FROM [Category]"></asp:SqlDataSource>
            </td>
            <td class="style4">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Company Name</td>
            <td class="style4">
                <asp:DropDownList ID="Dropcompanyname" runat="server" Height="64px" 
                    Width="213px" DataSourceID="SqlDataSource4" DataTextField="Company_name" 
                    DataValueField="Company_name">
                    <asp:ListItem>Select Company</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Company_name] FROM [Company]"></asp:SqlDataSource>
            </td>
            <td class="style15">
                &nbsp;</td>
            <td class="style4">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td>
                <asp:Button ID="btnupload" runat="server" Height="41px" 
                    style="margin-left: 94px" Text="Upload" Width="149px" 
                    onclick="btnupload_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Stock</td>
            <td class="style4">
                <asp:TextBox ID="txtstock" runat="server" Height="29px" Width="226px"></asp:TextBox>
            </td>
            <td class="style15">
                &nbsp;</td>
            <td>
                Price</td>
            <td>
                <asp:TextBox ID="txtprice" runat="server" Height="35px" Width="206px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                Uses</td>
            <td class="style18">
                <asp:TextBox ID="txtuse" runat="server" Height="35px" TextMode="MultiLine" 
                    Width="210px"></asp:TextBox>
            </td>
            <td class="style19">
                </td>
            <td class="style17">
                Selline Unit</td>
            <td class="style17">
                <asp:DropDownList ID="Dropunit" runat="server" Height="43px" Width="211px" 
                    onselectedindexchanged="Dropunit_SelectedIndexChanged">
                    <asp:ListItem>Bottle</asp:ListItem>
                    <asp:ListItem>Strip</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style17">
                </td>
        </tr>
        <tr>
            <td>
                Specification</td>
            <td class="style4">
                <asp:TextBox ID="txtspecification" runat="server" Height="32px" 
                    TextMode="MultiLine" Width="204px"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td class="style10">
                Contents</td>
            <td class="style9">
                <asp:TextBox ID="txtcontent" runat="server" Height="32px" TextMode="MultiLine" 
                    Width="198px"></asp:TextBox>
            </td>
            <td class="style16">
                </td>
            <td class="style10">
                Expiry Date</td>
            <td class="style10">
                <asp:TextBox ID="txtexpdate" runat="server" Height="28px" Width="224px"></asp:TextBox>
            </td>
            
        </tr>
       
       
        <tr>
            <td class="style11">
                
                <asp:Button ID="btnnew" runat="server" Height="30px" onclick="btnnew_Click" 
                    Text="New" Width="150px" BackColor="#009999" />
               
                </td>
            <td>
            
                <asp:Button ID="btnsave" runat="server" Height="30px" onclick="btnsave_Click" 
                    Text="Save" Width="150px" BackColor="#009999" />
            
            </td>
            <td class="style12">
               
                &nbsp;<asp:Button ID="btnupdate" runat="server" Height="30px" Text="Update" 
                    Width="150px" onclick="btnupdate_Click" BackColor="#009999" />
            </td>
            <td class="style14">
            
                <asp:Button ID="btndelete" runat="server" Height="30px" Text="Delete" 
                    Width="150px" onclick="btndelete_Click" BackColor="#009999" />

            </td>
       
                   
            <td class="style15">
             <asp:Button ID="btncancel" runat="server" Height="30px" Text="Cancel" 
                    Width="150px" onclick="btncancel_Click" BackColor="#009999" />
            </td>
            
        </tr>
        <tr>
            <td class="style5" colspan="5">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="Product_ID" DataSourceID="SqlDataSource1" 
                    ForeColor="#333333" GridLines="None" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" 
                    HorizontalAlign="Center" AllowPaging="True" PageSize="5">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" ReadOnly="True" 
                            SortExpression="Product_ID" />
                        <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" 
                            SortExpression="Product_Name" />
                        <asp:BoundField DataField="Category" HeaderText="Category" 
                            SortExpression="Category" />
                        <asp:BoundField DataField="Company_Name" HeaderText="Company_Name" 
                            SortExpression="Company_Name" />
                        <asp:BoundField DataField="Selline_Unit" HeaderText="Selline_Unit" 
                            SortExpression="Selline_Unit" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:BoundField DataField="Uses" HeaderText="Uses" SortExpression="Uses" />
                        <asp:BoundField DataField="Specification" HeaderText="Specification" 
                            SortExpression="Specification" />
                        <asp:BoundField DataField="Contents" HeaderText="Contents" 
                            SortExpression="Contents" />
                        <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
                        <asp:BoundField DataField="Expiry_Date" HeaderText="Expiry_Date" 
                            SortExpression="Expiry_Date" />
                        <asp:BoundField DataField="Images" HeaderText="Images" 
                            SortExpression="Images" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
            </td>
            <td class="style5">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

