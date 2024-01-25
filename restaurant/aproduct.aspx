<%@ Page Title="" Language="C#" MasterPageFile="~/tAdmin.Master" AutoEventWireup="true" EnableEventValidation="false"   CodeBehind="aproduct.aspx.cs" Inherits="restaurant.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <style>
   *{
       margin:0;
       padding:0;
   }
  .panel-body{
      width:400px;
      margin:100px auto 0px auto;
       
      
 font-size:18px;
 border-radius:10px;
 border:1px solid rgb(128, 128, 128);
  }
  strong{
      text-align:center;
      padding:30px;
      font-family:sans-serif;
  }
  .form-group{
    margin:40px;

  }
  label{
      font-family:sans-serif;
      font-size:18px;
      font-style:italic;
  }
div input{
      width:300px;
      border:1px;
      border-radius:3px;
      outline:0;
      padding:7px;


  }
.panel-body.btn1{
    width:200px;
    padding:7px;
    font-size:16px;
    border-radius:3px;
    
    background-color:antiquewhite;
}
      </style>
    <div class="panel-body">
            <strong>Add New Products</strong>

        <div class="form-group">
            <label for="NameField">Product Name</label>
            <div class="input-group">
                      
                          <asp:TextBox ID="txtname" runat="server"></asp:TextBox>

            </div>

        </div>
        <div class="form-group"> <label for="DetailField">Product Detail</label>
            <div class="input-group">
                     <asp:TextBox ID="txtdetail" runat="server"></asp:TextBox>
           
                
            </div>
        </div>
        <div class="form-group"> <label for="CategoryField">Category</label>
            <div class="input-group">
               
                <asp:DropDownList ID="DropDownList1" runat="server">
    <asp:ListItem>Desserts</asp:ListItem>
    <asp:ListItem>Cool Drinks</asp:ListItem>
    <asp:ListItem>Chineese</asp:ListItem>
    <asp:ListItem>South Indian</asp:ListItem>
</asp:DropDownList>
            </div>
        </div>

        <div class="form-group"><label for="ImageField">Upload Image</label>
            <div class="input-group">
                
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </div>
        </div>

        <div class="form-group">  <label for="PriceField">Price</label>
            <div class="input-group">
              
                <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">  <label for="Qty">Product Qty</label>
    <div class="input-group">
      
        <asp:TextBox ID="txtpqty" runat="server"></asp:TextBox>
    </div>
</div>
        <asp:Button class="btn1" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" CssClass="btn btn-success" />
    
        <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label></div>
</asp:Content>
