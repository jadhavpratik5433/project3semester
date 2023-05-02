<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="Admin_adminlogin" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style4
        {
            width: 100%;
         
            background-image: url('../Images/background1.png');
            background-image: url('../Images/admin.jpg');
            height: 732px;
        }
        .style2
        {
            text-align: center;
        }
        .style3
        {
            width: 554px;
            text-align: center;
        }
        .style5
        {
            height: 37px;
            font-size: x-large;
            font-family: "Cascadia Mono";
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
    
        <table align="left" cellpadding="4" cellspacing="5" class="style4">
            <tr>
                <td style=" text-align: center;" valign="top">
                    &nbsp;</td>
                <td style=" text-align: center;" valign="top">
    <br /><br />
        <table cellpadding="10" 
                        
                        style="font-family: Arial, Helvetica, sans-serif; background-color:#66FFCC; opacity:0.9; border-radius:10; height: 213px; width: 429px;" 
                        align="left" bgcolor="#66FFCC">
            <tr>
                <td colspan="2" width="200px" 
                    
                    style="background-color: #9999FF"  "background-image: url('../Images/admin logo.jpg')" 
                    class="style5">

                    Admin Login </td>
            </tr>
            <tr>
                <td id="txname1" class="style3" height="25px" 
                    style="background-color: #9999FF">
                    User Name</td>
                <td class="style2" style="background-color: #9999FF">
                    <asp:TextBox ID="txtname" runat="server" Height="30px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td id="txname2" class="style3" height="25px" 
                    style="background-color: #9999FF">
                    Password</td>
                <td class="style2" style="background-color: #9999FF">
                    <asp:TextBox ID="txtpass" runat="server" Height="25px" 
                        ontextchanged="txtpassword_TextChanged" Width="200px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="background-color: #9999FF" >
                    <asp:Button ID="btn1" runat="server" Height="33px" onclick="Button1_Click" 
                        style="margin-top: 0px" Text="login" Width="156px" BackColor="#00CC99" />
                    &nbsp;&nbsp;&nbsp;

                </td>
            </tr>
        </table>
    
                </td>
                <td style=" text-align: center;" valign="top">
                    &nbsp;</td>
            </tr>
        </table>
    <br />
    <br />
    <br />
    </div>
    </form>
</body>
</html>
