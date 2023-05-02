<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="User_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
       
        .style1
       {
          width: 70%;
          height: 479px;
       }
        .style2
        {
            width: 80%;
             text-align: center;
        }
        .style6
        {
            text-align: center;
        }
        .style7
        {
            width: 433px;
            color: #FF9900;
            text-align: center;
            
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <br />
    <br />
    <br/>


    <table align="center" cellpadding="10" cellspacing="5" class="style1" 
        style="background-image: url('../Images/back441.png'); width: 80%;">
        <tr>
            <td colspan="2">
            <h1 class="style6"> Registration form</h1>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                Name</td>
            <td align="center" class="style6">
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center">
                Address</td>
            <td align="center" class="style6">
                <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center">
                Email</td>
            <td align="center" class="style6">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center">
                Gender</td>
            <td align="center" class="style6">
                <asp:RadioButton ID="txtredmale" runat="server" Text="Male" />
            &nbsp;
                <asp:RadioButton ID="txtrediofemale" runat="server" Text="female" />
            </td>
        </tr>
        <tr>
            <td align="center">
                Username</td>
            <td align="center" class="style6">
                <asp:TextBox ID="txtuser" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center">
                Contact</td>
            <td align="center" class="style6">
                <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center">
                Password</td>
            <td align="center" class="style6">
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7" align="center">
                
                <asp:Button ID="btnsubmit" runat="server" onclick="btnsubmit_Click" 
                    Text="Submit" BackColor="#00CC99" />
                &nbsp;</td>
            <td align="center" class="style6">
                
                <asp:Button ID="clear" runat="server" Text="Clear" onclick="Button2_Click" 
                    BackColor="#00CC99" />
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <br />
</asp:Content>


