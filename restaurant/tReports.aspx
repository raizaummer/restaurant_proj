<%@ Page Title="" Language="C#" MasterPageFile="~/tAdmin.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="tReports.aspx.cs" Inherits="restaurant.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<style>
table,tr,th,td{
    border:1px solid black;
    border-collapse:collapse;
    
    
}table{
     width:75%;
      
 }
tr,th {
    padding:3%;
}
</style>
    <br /><br />
   <center> <table style="width:30%;border-color:Background;text-align:center">
        <tr><td>Date: 
             
                 <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/calender.png" Width="30" Height="30" ImageAlign="AbsBottom" OnClick="ImageButton1_Click" />
                <asp:Calendar ID="Calendar1" runat="server" Height="283px" Width="283px"></asp:Calendar>
             
               &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"  Text="Search" Height="30" Width="80" BackColor="#ff6699" />
</td> </tr>  
            <tr><td>                <asp:DropDownList ID="ddl1" runat="server" OnSelectedIndexChanged="ddl1_SelectedIndexChanged" AutoPostBack="True" style="text-align:center" BackColor="#ccccff">
        <asp:ListItem>--select--</asp:ListItem>
        <asp:ListItem>Payment Confirmed</asp:ListItem>
        <asp:ListItem>Delivered</asp:ListItem>
    </asp:DropDownList>
</td> 
          
        </tr>
      
    </table></center><br /><br />
        <center>
    <asp:GridView ID="GridView1" runat="server"   BackColor="White"  AlternatingRowStyle-BackColor="White" EditRowStyle-BorderColor="Gray" AutoGenerateColumns="False"  Height="10">
    <Columns>
        <asp:BoundField DataField="PID" HeaderText="PID" ItemStyle-BackColor="#ccccff"></asp:BoundField>
        <asp:BoundField DataField="fname" HeaderText="First name" ItemStyle-BackColor="#ccccff" ></asp:BoundField>
        <asp:BoundField DataField="lname" HeaderText="Last name" ItemStyle-BackColor="#ccccff"></asp:BoundField>
        <asp:BoundField DataField="amount" HeaderText="Amount" ItemStyle-BackColor="#ccccff" ></asp:BoundField>
        <asp:BoundField DataField="status" HeaderText="Status" ItemStyle-BackColor="#ccccff"></asp:BoundField>
        </Columns>
</asp:GridView></center>
   
    
 
    
            
         
</asp:Content>
