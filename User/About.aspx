<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="User_About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 80%;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table align="center" cellpadding="4" cellspacing="3" class="style5">
        <tr>
            <td>
            <h1 align="center">About Us</h1>
                <marquee>
               <img Height="220px"  src="../Images/about%20image%203.png" Width="552px"/>
               <img Height="220px"  src="../Images/about%20image%204.png" Width="552px"/>
                <img Height="220px" src="../Images/about%20image%205.png" Width="552px"/>
                <asp:Image ID="Image1" runat="server" Height="220px" 
                    ImageUrl="~/Images/about image.jpg" Width="852px" /></marquee>
            </td>
        </tr>
        <tr>
            <td>
             <p>
            Online sales of drugs started in the late 1990s and began to spread rapidly around the world. 
            With this rapid transition, the US Food and Drug Administration (FDA) opened a section on its official website under the heading "Buying drugs on the Internet" and emphasized that people should be careful against 
            illegal online pharmacies with the guidelines it published.</br> The advantages and disadvantages of online pharmacies have become a subject of great debate today. In order to understand the subject clearly,
                     </p>
                     </br>
            <p>
            
            E-Pharmacy is a pharmacy that sells medicines on the internet and delivers them to customers. 
            Thanks to the internet, the drug purchasing process becomes much easier and more convenient. </br>
            Patients can order their prescription medicines from registered pharmacists via the internet and receive their medicines from the nearest delivery point.
             The E-Pharmacy model, which is very easy to use and continues to spread rapidly, started to replace traditional pharmacies.
     
            </p>
           
                </td>
        </tr>
        <tr>
            <td>
             &nbsp;<asp:Panel ID="Panel2" runat="server" Direction="RightToLeft" 
                    style="margin-left: 0px" Width="37px">
                </asp:Panel>
                &nbsp;&nbsp;<asp:Panel ID="Panel1" runat="server" BackColor="#009999" BorderColor="#00FF99" 
                    Height="135px" Width="308px">
                    Product information database<br />
                    <br />
                    Effortlessly create, update and maintain<br />
                    <br />
                </asp:Panel>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
                </td>
        </tr>
    </table>
</asp:Content>


