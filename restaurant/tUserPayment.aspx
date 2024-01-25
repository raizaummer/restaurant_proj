<%@ Page Title="" Language="C#" MasterPageFile="~/tUSER.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="tUserPayment.aspx.cs" Inherits="restaurant.WebForm15" %>
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

    <div class="panel-body">
            <strong>Payment</strong>

        <div class="form-group">
            <label for="NameField">Payment type</label>
            <div class="input-group">
                      
                          <asp:TextBox ID="txttype" runat="server"></asp:TextBox>

            </div>

        </div>
        <div class="form-group"> <label for="bankname">Bank name</label>
            <div class="input-group">
                     <asp:TextBox ID="txtbank" runat="server"></asp:TextBox>
           
                
            </div>
        </div>
        <div class="form-group"> <label for="card no">Card No.</label>
            <div class="input-group">
                                <asp:TextBox ID="txtcard" runat="server"></asp:TextBox>

            </div>
        </div>

        <div class="form-group"><label for="cvv">CVV</label>
            <div class="input-group">
             <asp:TextBox ID="txtcvv" runat="server"></asp:TextBox>

            </div>
        </div>

        <div class="form-group">  <label for="Amount">Amount</label>
            <div class="input-group">
              
                <asp:TextBox ID="txtamnt" runat="server" ReadOnly="True"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">  
     <div class="input-group">
        <asp:Button class="btn1" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"  />
    </div></div></div>
</asp:Content>
