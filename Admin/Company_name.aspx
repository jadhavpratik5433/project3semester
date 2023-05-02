<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Company_name.aspx.cs" Inherits="Admin_Company_name" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
        }
    .style5
    {
        font-size:x-large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
<table cellpadding="5" cellspacing="5" align="center" 
    style="border-style: solid; border-width: thin">
        <tr>
            <td class="style5" colspan="2" bgcolor="#FF9900">
                <strong>&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="28px" 
                    ImageUrl="~/Images/logo3.png" Width="41px" />
                &nbsp;COMPANY DETAILS</strong></td>
        </tr>
        <tr>
            <td>
                Company_ID</td>
            <td>
                <asp:TextBox ID="txtid" runat="server" Height="30px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Company_Name</td>
            <td>
                <asp:TextBox ID="txtname" runat="server" Height="30px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;
                <asp:Button ID="btnnew" runat="server" onclick="btnnew_Click" Text="New" 
                    BackColor="#006666" BorderStyle="None" Font-Bold="True" ForeColor="White" 
                    Height="30px" Width="150px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnsave" runat="server" onclick="btnsave_Click" 
                    Text="Save" BackColor="#006666" BorderStyle="None" Font-Bold="True" 
                    ForeColor="White" Height="30px" Width="150px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnupdate" runat="server" onclick="btnupdate_Click" 
                    Text="Update" BackColor="#006666" BorderStyle="None" Font-Bold="True" 
                    ForeColor="White" Height="30px" Width="150px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btndelete" runat="server" onclick="btndelete_Click" 
                    Text="Delete" BackColor="#006666" BorderStyle="None" Font-Bold="True" 
                    ForeColor="White" Height="30px" Width="150px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btncancel" runat="server" onclick="btncancel_Click" 
                    Text="Cancel" BackColor="#006666" BorderStyle="None" Font-Bold="True" 
                    ForeColor="White" Height="30px" Width="150px" />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="3" DataKeyNames="Company_Id" DataSourceID="SqlDataSource1" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" AllowPaging="True" 
                    BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                    CellSpacing="2" Height="223px" PageSize="5" Width="735px">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Company_Id" HeaderText="Company_Id" ReadOnly="True" 
                            SortExpression="Company_Id" />
                        <asp:BoundField DataField="Company_name" HeaderText="Company_name" 
                            SortExpression="Company_name" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Company]"></asp:SqlDataSource>
&nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
<br />
</asp:Content>

