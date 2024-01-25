<%@ Page Title="" Language="C#" MasterPageFile="~/Traditionalrest.Master" AutoEventWireup="true" CodeBehind="tmenu.aspx.cs" Inherits="restaurant.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <style>
      .about h1{
          display:flex;
          align-items:center;
          flex-direction:column;
          background:url();
          color:white;
          text-transform:uppercase;

      }
      .about-container{
          background:white;
          display:flex;
          flex-wrap:wrap;
          align-items:center;
          border-radius:10px;
          border-top:6px solid green;
          padding:20px;
          gap:2rem;

      }
      .box-img {
         
          width:200px;
height:200px;      }
      .box-img img{
          height:100%;
          width:100%;
 
          object-fit:contain;
          object-position:center;
          border-radius:10px;
      }
      .about-box{
          flex:1 1 8rem;
          display:flex;
          flex-direction:column;
          align-items:center;
          text-align:center;

      }
      .about-box h2{
          font-size:1.2rem;
          letter-spacing:1px;
          color:green;

      }
          .about-box h3 {
              font-size: 1rem;
              font-weight: 500;
              margin: 0 0 0.5rem;
              color: red;
          }

  </style>
    
    <section class="about" id="about">
      <h6 style="font-size:20px;color:black;text-align:center">Our Menu</h6>
      <div class="about-container">
          <div class="about-box">
              <div class="box-img">
       <a href="tdessert.aspx"><asp:Image ID="photolabel" runat="server" ImageUrl="~/images/slide03_thumb1.jpg"  ></asp:Image>
                  <h3>Desserts</h3></a>
              </div>
          </div>

            

             <div class="about-box">
       <div class="box-img">
           <a href="tcooldrinks.aspx">  <asp:Image ID="Image2" runat="server" ImageUrl="~/images/big2.jpg"  ></asp:Image>
           <h3> Cool Drinks</h3></a>
       </div>
   </div>
             <div class="about-box">
       <div class="box-img">
           <a href="tsalad.aspx">  <asp:Image ID="Image3" runat="server" ImageUrl="~/images/page-1_img10.jpg" ></asp:Image>
           <h3>Salad</h3></a>
       </div>
   </div>
      
          
          
      </div>
  </section>
</asp:Content>
