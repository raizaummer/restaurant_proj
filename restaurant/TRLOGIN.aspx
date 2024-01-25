<%@ Page Title="" Language="C#" MasterPageFile="~/Traditionalrest.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="TRLOGIN.aspx.cs" Inherits="restaurant.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="css/style.css">
    <style>
   /* .btn-login{
        text-align:center;
        color: #fff;
        border: none;
        padding-left: 0;
        margin-top: -10px;
        font-size: 20px;
        font-weight: 500;
        border-radius: 40px;
        cursor: pointer;
        background: linear-gradient(-135deg, #a02424, #808080);
        transition: all 0.3s ease;
        width: 15%;
    }*/
    .input-box{
        width:100%;
        border-radius:10px;
    }
    .container {
     
    width: 100%;
     
    text-align:center;
       padding: 5px 30px;
 border-radius: 5px; 
    box-shadow: 0 5px 10px rgba(0,0,0,0.15);
}
   .user-details .input-box input {
    height: 45px;
    width: 250px;
    outline: none;
    font-size: 16px;
    border-radius: 5px;
    padding-left: 15px;
    border: 1px solid #ccc;
    border-bottom-width: 2px;
    transition: all 0.3s ease;
}
   
</style>


 <div class="container" style="background-size: cover">
     <%--abouts abouts_content py-3--%>
     <div class="head_title text-center">

         <h2>Login </h2>
         <div class="user-details">
         <div class="input-box">
             <h3 >Username:
                 <asp:TextBox Height="25"  ID="uname" runat="server" ></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="uname" ErrorMessage="Enter username"></asp:RequiredFieldValidator>     
             </h3>
         </div><br />
         <div class="input-box">
             <h3  >Password: 
                 <asp:TextBox Height="25" ID="password" runat="server"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="Enter password"></asp:RequiredFieldValidator>     

             </h3>
             <div class="forgot-pass">
                 <a href="#">Forgot Password?</a>
             </div>
         </div>
         <br />

         <div class="button">
         <asp:Button ID="btn1" Width="200" Height="30" runat="server" OnClick="btn1_Click" Text="Login"/> 
          </div>
          
         <div class="signup-link">
             Not a member? <a href="tregister.aspx">Signup now</a>
         </div>
     </div>
         </div>
 </div>
 

</asp:Content>
