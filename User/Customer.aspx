<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Customer.aspx.cs" Inherits="User_Customer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
            width: 93%;
            background-color: #808080;
        }
        .style9
        {
            height: 42px;
        }
        .style11
        {
            height: 42px;
            width: 512px;
        }
        .style12
        {
            font-family: "Times New Roman", Times, serif;
            font-size: x-large;
        }
        .style13
        {
            width: 512px;
            font-family: "Arial Black";
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<br />
<br />
    <table align="center" cellpadding="5" cellspacing="5" class="style8" 
        style="background-image: url('../Images/back12.png'); height: 505px;">
        <tr>
            <td align="center" colspan="2" style="font-size: large">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <span class="style12">Admin Login</span></td>
        </tr>
        <tr>
            <td align="center" class="style13">
                User Name</td>
            <td align="center">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style13">
                Password</td>
            <td align="center">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style11">
               
                <asp:Button ID="Button1" runat="server" BackColor="#00CC99" Height="30px" 
                    Text="Login" Width="150px" />
                &nbsp;</td>
            <td align="center" class="style9">
               
                <asp:Button runat="server" BackColor="#00CC99" Height="30px" Text="Cancel" 
                    Width="150px" />
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <br />
</asp:Content>

