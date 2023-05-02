<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Customer_Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style18
        {
            width: 90%;
            border: 1px solid #000000;
        }
        .style19
        {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table cellpadding="4" class="style6">
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style19">
                    </td>
            </tr>
            <tr>
                <td align="center">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DataList ID="DataList1" runat="server" CellPadding="5" CellSpacing="5" 
                        DataKeyField="Product_ID" DataSourceID="SqlDataSource2" 
                        HorizontalAlign="Center" RepeatColumns="3" RepeatDirection="Horizontal" 
                        Width="1138px">
                        <ItemTemplate>
                            <table align="center" cellpadding="5" cellspacing="0" 
    class="style18">
                                <tr>
                                    <td style="text-align: center; background-color: #339933;" align="center">
                                        <asp:Label ID="Label1" runat="server" 
                                            style="font-weight: 700; font-size: large" Text='<%# Eval("Product_Name") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: center" align="center">
                                        <asp:ImageButton ID="ImageButton3" runat="server" Height="164px" 
                                            ImageUrl='<%# Eval("Images") %>' Width="278px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: center" align="center">
                                        Rs.
                                        <asp:Label ID="Label2" runat="server" style="color: #CC3300; font-weight: 700" 
                                            Text='<%# Eval("Price") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: center" align="center">
                                        <asp:Button ID="btn" runat="server" BackColor="Black" BorderStyle="None" 
                                            Height="33px" style="color: #FFFFFF; font-weight: 700" Text="Add To Cart" 
                                            Width="195px" onclick="Button1_Click" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [Product_ID], [Product_Name], [Category], [Company_Name], [Price], [Images], [Stock], [Expiry_Date] FROM [Product] WHERE ([Category] = @Category)">
                        <SelectParameters>
                            <asp:SessionParameter Name="Category" SessionField="cat" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [Images], [Company_Name], [Category], [Price] FROM [Product]">
                    </asp:SqlDataSource>
                    &nbsp;</td>
            </tr>
            
        </table>
        &nbsp;</p>
</asp:Content>

