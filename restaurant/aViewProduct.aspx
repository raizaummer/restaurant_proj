<%@ Page Title="" Language="C#" MasterPageFile="~/tAdmin.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="aViewProduct.aspx.cs" Inherits="restaurant.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style type="text/css">
        #GridView1{
            width: 100%;
  border-collapse: collapse;
  margin-top: 20px;
        }
       #GridView1 th,#GridView1 td {
             border: 1px solid #ddd;
 
        }
   #GridView1 th {
  background-color: #f2f2f2;
}

    </style>
    <center>
    <asp:GridView ID="GridView1" style="text-align:left;font-size:15px" runat="server" AutoGenerateColumns="False" BorderStyle="Solid" Width="75%" BorderColor="#CC6600" BorderWidth="1px" BackColor="#FFFFCC">
        <Columns >
            <asp:BoundField DataField="pname" HeaderText="Product"></asp:BoundField>
            <asp:BoundField DataField="detail" HeaderText="Details"></asp:BoundField>
            <asp:BoundField DataField="category" HeaderText="Category"></asp:BoundField>
<%--            <asp:BoundField DataField="image" HeaderText="Image"></asp:BoundField>--%>
            <asp:TemplateField><ItemTemplate>
  <asp:Image ID="Image1" runat="server" ImageUrl='<%# "photo1/"+Eval("image") %>' Width="130px" Height="120px"></asp:Image>

                               </ItemTemplate></asp:TemplateField>
            <asp:BoundField DataField="price" HeaderText="Price"></asp:BoundField>
         <asp:BoundField DataField="productqty" HeaderText="Product Qty"></asp:BoundField>

     
            <asp:TemplateField> 
                <ItemTemplate>
       <asp:LinkButton ID="linkbutton" OnClick="linkbutton_Click" runat="server" style="text-decoration: none; color: #007bff; cursor: pointer;" CommandArgument='<%# Eval("prid") %>'>Edit</asp:LinkButton>
        </ItemTemplate>
    </asp:TemplateField>
<asp:TemplateField>
   <ItemTemplate>
       <asp:LinkButton ID="linkbutton1" OnClick="linkbutton1_Click" runat="server" style="text-decoration: none; color: #dc3545; cursor: pointer;" CommandArgument='<% #Eval("prid") %>'>Delete</asp:LinkButton>

   </ItemTemplate></asp:TemplateField>
         </Columns>
    </asp:GridView></center><br />
   
</asp:Content>
