<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="Cart1.aspx.cs" Inherits="Customer_Cart1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style35
        {
            text-align: left;
            width: 31px;
        }
        .style10
        {
            text-align: left;
            width: 62px;
        }
        .style13
        {
            text-align: left;
            width: 341px;
        }
        .style15
        {
            width: 261px;
        }
        .style14
        {
            width: 341px;
        }
        .style22
        {
            width: 261px;
            height: 44px;
        }
        .style23
        {
            width: 341px;
            height: 44px;
        }
        .style34
        {
            text-align: justify;
            width: 31px;
        }
        .style17
        {
            width: 2321%;
            height: 356px;
        }
        .style19
        {
            width: 356px;
            text-align: center;
        }
        .style18
        {
            width: 356px;
        }
        .style20
        {
            width: 108%;
            height: 360px;
        }
        .style29
        {
            text-align: justify;
        }
        .style27
        {
            height: 39px;
            text-align: justify;
            width: 189px;
        }
        .style25
        {
            height: 39px;
            text-align: justify;
        }
        .style30
        {
            width: 189px;
            height: 39px;
        }
        .style31
        {
            height: 39px;
        }
        .style33
        {
            text-align: center;
            font-size: large;
        }
        .style32
        {
            text-align: center;
        }
        .style28
        {
            height: 35px;
        }
        .style24
        {
            height: 35px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="8" cellspacing="5" class="style1">
        <tr>
            <td class="style35" rowspan="6" valign="top">
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="pid" HeaderText="pid" SortExpression="pid" />
                        <asp:BoundField DataField="Category" HeaderText="Category" 
                            SortExpression="Category" />
                        <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" 
                            SortExpression="Product_Name" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:TemplateField HeaderText="Quantity">
                            <ItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Total">
                            <ItemTemplate>
                                <asp:Label ID="lbltot" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Cart_view]"></asp:SqlDataSource>
            </td>
            <td class="style10">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16" rowspan="5">
                &nbsp;</td>
            <td class="style15">
                Order Details</td>
            <td class="style14">
                <asp:Label ID="txtid" runat="server" Text="Label"></asp:Label>
            </td>
            <td rowspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                Customer Name</td>
            <td class="style14">
                <asp:Label ID="txtcname" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style15">
                Order Date</td>
            <td class="style14">
                <asp:Label ID="txtdate" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style22">
                Category</td>
            <td class="style23">
                <asp:Label ID="txtcategory" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style34" align="right">
                <asp:Button ID="Button1" runat="server" BackColor="Red" Height="42px" 
                    Text="Confirm Order" Width="327px" onclick="Button1_Click" />
                <asp:Label ID="lbltotal" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblqun" runat="server" Text="label"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="style14">
                Total Amount</td>
            <td>
                <asp:Label ID="txtamount" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style34">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style34">
                <table cellpadding="5" class="style17">
                    <tr>
                        <td bgcolor="Red" colspan="2" style="font-size: large; font-family: Algerian">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            Customer Details&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style19">
                            Name</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style19">
                            Address</td>
                        <td>
                            <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style19">
                            City</td>
                        <td>
                            <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style19">
                            Pin</td>
                        <td>
                            <asp:TextBox ID="txtpin" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style19">
                            Contact</td>
                        <td>
                            <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style19">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style18">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style18">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td class="style16" colspan="3">
                <table cellpadding="4" class="style20">
                    <tr>
                        <td bgcolor="Red" colspan="2" style="font-size: large; font-family: Algerian">
                            Payment Details</td>
                    </tr>
                    <tr>
                        <td class="style29" style="text-align: justify">
                            Payment</td>
                        <td>
                            <asp:RadioButton ID="RadioButton1" runat="server" style="text-align: left" 
                                Text="CODE" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style27">
                            Mode</td>
                        <td class="style25">
                            <asp:RadioButton ID="RadioButton2" runat="server" Text="Online" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style30">
                        </td>
                        <td class="style31">
                        </td>
                    </tr>
                    <tr>
                        <td class="style33" colspan="2">
                            Card Details</td>
                    </tr>
                    <tr>
                        <td class="style32">
                            Bank Name</td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style32">
                            Card No.</td>
                        <td>
                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style32">
                            CVV No.</td>
                        <td>
                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style28">
                            Expiry Date</td>
                        <td class="style24">
                            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style28" colspan="2">
                            <asp:Button ID="Button2" runat="server" BackColor="Red" Height="38px" 
                                Text="Make Payment" Width="255px" onclick="Button2_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

