<%@ Page Title="" Language="C#" MasterPageFile="~/tAdmin.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="tedit.aspx.cs" Inherits="restaurant.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<style>
    table{
          margin-top: 20px
       
       
    }
    table tr td{
 border-collapse:collapse;
  text-align:center;
 border:1px solid brown;
  padding: 8px;
 text-align: left;
    }
</style>
    <img runat="server" src='<%# "photo1/"+Eval("image") %>'/>
    <center>
<table runat="server"><tr>
    
    <td>Product:</td><td>  <asp:TextBox ID="txtproduct" runat="server" style="width: 200px; padding: 5px;"></asp:TextBox><br />
</td>
       </tr>
    <tr><td>Detail:</td><td><asp:TextBox ID="txtdetail" runat="server" style="width: 200px; padding: 5px;"></asp:TextBox><br />
</td></tr>
    <tr><td>Category:</td><td><asp:TextBox ID="txtcategory" runat="server" style="width: 200px; padding: 5px;"></asp:TextBox><br />
</td></tr>
    <tr><td>Image:</td><td><asp:FileUpload ID="FileUpload1" runat="server" style="/* Add styles as needed */"></asp:FileUpload><br />
     <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
          
</td></tr>
    <tr><td>Price:</td><td><asp:TextBox ID="txtprice" runat="server" style="width: 100px; padding: 5px;"></asp:TextBox><br />
</td></tr>
        <tr><td>Product Qty:</td><td><asp:TextBox ID="txtq" runat="server" style="width: 100px; padding: 5px;"></asp:TextBox><br />
</td></tr>
    <tr> <td></td><td><asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" style="padding: 8px 12px; background-color: #4CAF50; color: white; border: none; border-radius: 4px; cursor: pointer;"></asp:Button>
</td></tr>
</table>
        </center>
</asp:Content>
