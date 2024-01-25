<%@ Page Title="" Language="C#" MasterPageFile="~/tUSER.Master" AutoEventWireup="true" CodeBehind="WebForm16.aspx.cs" Inherits="restaurant.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>  *{
      margin:0;
      padding:0;
  }
 .panel-body1{
     width:70%;
     text-align:center;
     margin:100px auto 0px auto;
      
     
font-size:18px;
border-radius:10px;
border:1px solid rgb(128, 128, 128);
 }</style>
 <center><div class="panel-body1 center">
      <asp:GridView ID="Gridview1" Width="70%" runat="server" AutoGenerateColumns="False" CellPadding="3">
       <Columns>

   <asp:BoundField DataField="notification" HeaderText="Notification" HeaderStyle-Width="10%" ItemStyle-Width="800px" ItemStyle-ForeColor="Red"></asp:BoundField>
 <asp:BoundField DataField="oid" HeaderText="oid."   ItemStyle-ForeColor="Red" ApplyFormatInEditMode="true" >
    </asp:BoundField> 
     <asp:BoundField DataField="ndate" HeaderText="ndate." ItemStyle-ForeColor="Red" ></asp:BoundField>
       <asp:BoundField DataField="pname" HeaderText="pname." ItemStyle-ForeColor="Red" ></asp:BoundField>
     <asp:BoundField DataField="qty" HeaderText="qty." ItemStyle-ForeColor="Red" ></asp:BoundField>
      
     <asp:BoundField DataField="status" HeaderText="status" ItemStyle-ForeColor="Red" ></asp:BoundField> 
        </Columns>
   </asp:GridView></div></center>
</asp:Content>
