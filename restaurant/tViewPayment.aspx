<%@ Page Title="" Language="C#" MasterPageFile="~/tAdmin.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="tViewPayment.aspx.cs" Inherits="restaurant.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <center>
       <asp:GridView ID="GridView1"  runat="server" AutoGenerateColumns="False" BorderStyle="Solid" Width="75%" BorderColor="#CC6600" BorderWidth="1px" BackColor="#FFFFCC" Style="text-align: left; font-size: 15px">
        <Columns>
                        <asp:BoundField DataField="PID" HeaderText="PID"></asp:BoundField>

            <Asp:BoundField DataField="fname" HeaderText="fname"></Asp:BoundField>
            <asp:BoundField DataField="lname" HeaderText="lname"></asp:BoundField>
            <asp:BoundField DataField="amount" HeaderText="Amount"></asp:BoundField>
            <asp:BoundField DataField="status" HeaderText="Status"></asp:BoundField>
                        <Asp:BoundField DataField="oid" HeaderText="oid"></Asp:BoundField>
                                    <Asp:BoundField DataField="uid" HeaderText="oid"></Asp:BoundField>


            <asp:TemplateField>
                <ItemTemplate>
                  <asp:LinkButton ID="linkbutton" OnClick="linkbutton_Click" runat="server" style="text-decoration: none; color: #007bff; cursor: pointer;" CommandArgument='<%# Eval("PID") %>'>Close</asp:LinkButton>

                </ItemTemplate>
                         
 </asp:TemplateField>
            
        </Columns>
    </asp:GridView> </center> 
 </asp:Content>
