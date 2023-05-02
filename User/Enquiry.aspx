<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Enquiry.aspx.cs" Inherits="User_Enquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 80%;
            height: 418px;
        }
        .style3
        {
            width: 383px;
        }
        .style6
        {
            color: #000000;
            text-align: center;
        }
        .style7
        {
            width: 383px;
            color: #009999;
            text-align: center;
        }
        .style8
        {
            text-align: center;
        }
        .style9
        {
            color: #000000;
            text-align: center;
            font-family: "Arial Narrow";
            font-size: x-large;
            height: 61px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table cellpadding="7" cellspacing="4" class="style2" 
        style="background-image: url('../Images/back331.png')">
        <tr>
            <td class="style9" colspan="2">
                Enquiry</td>
        </tr>
        <tr>
            <td class="style6">
                Name</td>
            <td class="style7">
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Mobile No</td>
            <td class="style7">
                <asp:TextBox ID="txtmobile" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Email</td>
            <td class="style7">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                massega</td>
            <td class="style7">
                <asp:TextBox ID="txtmasg" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8">
                <asp:Button ID="btn1" runat="server" style="margin-left: 89px" Text="Submit" 
                    Width="265px" onclick="btn1_Click" BackColor="#00CC99" Height="33px" />
            </td>
            <td class="style7">
                <asp:Button ID="btn2" runat="server" style="margin-left: 14px" Text="Resend" 
                    Width="258px" BackColor="#00CC99" Height="35px" />
            </td>
        </tr>
    </table>
</asp:Content>


