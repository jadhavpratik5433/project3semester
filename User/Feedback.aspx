<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="User_Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 92%;
            height: 508px;
        }
        .style3
        {
            width: 467px;
        }
        .style6
        {
            color: #000000;
        }
        .style7
        {
            width: 467px;
            color: #000000;
        }
        .style8
        {
            font-size: xx-large;
            font-family: Arial;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table cellpadding="10" cellspacing="5" class="style2" align="center" 
        style="background-image: url('../Images/back55.png')">
        <tr>
            <td class="style6" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span class="style8">&nbsp;Feedback&nbsp;</span></td>
        </tr>
        <tr>
            <td class="style6">
                Feedback name</td>
            <td>
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7">
                Address</td>
            <td>
                <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7">
                Mobile</td>
            <td>
                <asp:TextBox ID="txtmobile" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7">
                Email</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7">
                Message</td>
            <td>
                <asp:TextBox ID="txtmessage" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Button ID="btnsub" runat="server" style="margin-left: 110px" Text="Submit" 
                    Width="255px" onclick="btnsub_Click" BackColor="#00CC99" />
            </td>
            <td>
                <asp:Button ID="btnresend" runat="server" style="margin-left: 39px" 
                    Text="Resend" Width="266px" BackColor="#00CC99" />
            </td>
        </tr>
    </table>
</asp:Content>


