<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="User_Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 90%;
            border: 1px solid #000000;
        }
        .style7
        {
            width: 100%;
            border: 1px solid #000000;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table align="center" cellpadding="5" cellspacing="0">
        <tr>
            <td>
                <br />
            </td>
        </tr>
        <tr>
            <td align="center" style="text-align: center">
                <br />
                <asp:DataList ID="DataList1" runat="server" CellSpacing="10" 
                    DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal" 
                    Width="900px">
                    <ItemTemplate>
                        <table align="center" cellpadding="5" cellspacing="0" class="style7">
                            <tr>
                                <td>
                                    <asp:ImageButton ID="ImageButton2" runat="server" Height="142px" 
                                        ImageUrl='<%# Eval("Catgeory_Image") %>' Width="248px" 
                                        CommandArgument='<%# Eval("Category_name") %>' onclick="ImageButton2_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <asp:Label ID="Label1" runat="server" style="font-weight: 700" 
                                        Text='<%# Eval("Category_name") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <asp:Button ID="Button1" runat="server" Text='<%# Eval("Category_name") %>' 
                            BackColor="#00CC99" />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [Category_name], [Catgeory_Image] FROM [Category]">
                </asp:SqlDataSource>
                <br />
            </td>
        </tr>
    </table>
</asp:Content>


