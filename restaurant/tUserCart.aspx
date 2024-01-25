<%@ Page Title="" Language="C#" MasterPageFile="~/tUSER.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="tUserCart.aspx.cs" Inherits="restaurant.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
         <style>
   *{
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
  }
   .panel-body{
     width:400px;
     text-align:center;
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
.panel-body .btn1{
    width:200px;
    text-align:center;
    padding:7px;
    font-size:16px;
    border-radius:3px;
    border:1px solid brown;
    background-color:antiquewhite;
}


      </style>
    <center><div class="panel-body1 center">
   
    <asp:GridView ID="grd" Width="100%" runat="server" AutoGenerateColumns="False" CellPadding="3">
        <Columns>

    <asp:BoundField DataField="pname" HeaderText="Product" HeaderStyle-Width="10%" ItemStyle-Width="800px" ItemStyle-ForeColor="Red"></asp:BoundField>
    <asp:BoundField DataField="qty" HeaderText="Qty."   ItemStyle-ForeColor="Red" ApplyFormatInEditMode="true" >
     </asp:BoundField> 
      <asp:BoundField DataField="price" HeaderText="Price." ItemStyle-ForeColor="Red" ></asp:BoundField>
      <asp:BoundField DataField="prid" HeaderText="prid" ItemStyle-ForeColor="Red" ></asp:BoundField>

            <asp:TemplateField>
   <ItemTemplate>
       <asp:LinkButton ID="linkbutton1" OnClick="linkbutton1_Click" runat="server" style="text-decoration: none; color: #dc3545; cursor: pointer;" CommandArgument='<% #Eval("oid") %>'>Delete</asp:LinkButton>

   </ItemTemplate></asp:TemplateField>
         </Columns>
    </asp:GridView>
     Total:<asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" Width="50"></asp:TextBox></div></center>
 <div class="panel-body">
      
         <strong>Delivery Address</strong>

     <div class="form-group">
         <label for="NameField"> Name</label>
         <div class="input-group">
                   
                       <asp:TextBox ID="txtname" runat="server"></asp:TextBox>

         </div>

     </div>
     <div class="form-group"> <label for="phone">Phone</label>
         <div class="input-group">
                  <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
        
             
         </div>
     </div>

    <div class="form-group">
            <label for="NameField">Street 1</label>
            <div class="input-group">
                <asp:TextBox ID="txtstreet1" runat="server"></asp:TextBox>

            </div>

        </div>
    

     <div class="form-group">
         <label for="NameField">Street 2</label>
         <div class="input-group">
                   
                       <asp:TextBox ID="txtstreet2" runat="server"></asp:TextBox>

         </div>

     </div>
     <div class="form-group"> <label for="DetailField">City</label>
         <div class="input-group">
                  <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
        
             
         </div>
     </div>
    <div class="form-group"> <label for="State">State</label>
    <div class="input-group">
             <asp:TextBox ID="txtstate" runat="server"></asp:TextBox>
   
        
    </div>
</div>
    <div class="form-group"> <label for="zip">Zip</label>
    <div class="input-group">
             <asp:TextBox ID="txtzip" runat="server"></asp:TextBox>
   
        
    </div>
</div>
    <div class="form-group"> <label for="countryField">Country</label>
    <div class="input-group">
             <asp:TextBox ID="txtcountry" runat="server"></asp:TextBox>
   
        
    </div>
</div>

 
        <div class="form-group">
            <label for="NameField">Total Amount</label>
            <div class="input-group">
                <asp:TextBox ID="txtamnt" runat="server" ReadOnly="True"></asp:TextBox>

            </div>

        </div>
        <div class="form-group">
     <div class="input-group">
        <asp:Button ID="btn1"  runat="server" Text="Proceed Payment"  OnClick="Button1_Click" BackColor="#ffffcc" />
    </div>

</div>

 </div>

</asp:Content>
