<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="UserLogin.aspx.cs" Inherits="User_UserLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
    {            height: 51px;
            font-size: x-large;
        }
        .style9
        {
            width: 272px;
        }
        .style11
        {
            width: 272px;
            height: 30px;
        }
        .style13
        {
            width: 492px;
            height: 84px;
        }
        .style14
        {
            width: 272px;
            height: 84px;
        }
        .style15
        {
            width: 492px;
            color: #000000;
            height: 21px;
        }
        .style16
        {
            width: 492px;
            color: #000000;
            font-size: x-large;
            font-family: "Britannic Bold";
        }
        .style17
        {
            width: 492px;
            color: #000000;
            font-size: x-large;
            font-family: "Bernard MT Condensed";
        }
        .style18
        {
            color: #3399FF;
        }
        .style19
        {
            width: 272px;
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<br />
<br />
    <table cellpadding="10" cellspacing="5" class="style2" align="center" 
        
        
        
        
        style="background-image: url('../Images/back12.png'); height: 388px; width: 881px;" >
    <tr>
        <td align="center" class="style16">
            User login</td>
        <td class="style9">
            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style17" align="center">
            Password</td>
        <td class="style11">
            <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style13">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnsing" runat="server" BackColor="#00CC99" 
                onclick="btnsing_Click" Text="Sing in" Height="34px" Width="124px" />
            &nbsp;</td>
        <td class="style14">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btncal" runat="server" BackColor="#00CC99" Text="Cancel" 
                Height="37px" Width="122px" />
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style15">
            </td>
        <td class="style19">
            </td>
    </tr>
    <tr>
        <td class="style7" colspan="2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<span 
                class="style18"> </span>
            <asp:HyperLink ID="HyperLink2" runat="server" Font-Names="Arial Narrow" 
                ForeColor="#FF0066" CssClass="style18">Create new account</asp:HyperLink>
            &nbsp;</td>
    </tr>
</table>
<br />
<br />
<br />
</asp:Content>

