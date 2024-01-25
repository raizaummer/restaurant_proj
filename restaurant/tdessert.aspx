<%@ Page Title="" Language="C#" MasterPageFile="~/Traditionalrest.Master" AutoEventWireup="true" CodeBehind="tdessert.aspx.cs" Inherits="restaurant.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                   <style>
                       .sec{
                           box-sizing:border-box;
                            justify-content:space-between;
                             text-align: center;
                             gap:3px;
                             
                       }
                        .row {
                           flex: 1 1 8rem;
                           display: flex;
                           flex-direction: column;
                           align-items: center;
                           justify-content:space-between;
                           text-align: center;
                           gap:3px;
                           box-sizing:border-box;
                       }
                   </style>   
    <!-- Content Row -->
                 <div class="row">
                         <div class="col-xl-3 col-md-6 mb-4"> 
                             <asp:DataList ID="DataList1" DataKeyField="prid" runat="server" OnItemCommand="DataList1_ItemCommand" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
           <ItemTemplate>
                
               <br />
              <div class="sec">
               <asp:Image ID="photolabel" runat="server" ImageUrl='<%# "photo1/"+Eval("image") %>' Width="170px" Height="150px"></asp:Image>
               <br />
                  <asp:Label ID="prid" runat="server" Text='<%# Eval("prid") %>' Visible="False"></asp:Label>           
 <br />
                  <asp:Label ID="name" runat="server" Text='<%# Eval("pname") %>'></asp:Label> 
 
        <div>    <asp:Label ID="price" runat="server" Text='<%# Eval("price") %>'></asp:Label>
Rs</div>       
               
                   Qty:      <asp:TextBox Width="20" ID="txtquantity"  runat="server"></asp:TextBox>


               <br />
                  

       <asp:Button ID="btn" runat="server" CommandName="Add to cart" Text="Add to cart"   Visible="True" />
 </div>
           <br /><br />
<div>  <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" ForeColor="#CC0000"></asp:Label></div>                 
 </ItemTemplate>
       </asp:DataList>
                             

 <asp:Button ID="Button1" runat="server" Text="Payment" onclick="Button1_Click"/>

       <asp:SqlDataSource ID="SqlDataSource1" runat="server"
           ConnectionString="Data Source=LAPTOP-A8IJCUCT\SQLEXPRESS;Initial Catalog=FDPROJ;Integrated Security=True"
           SelectCommand="select prid,image,pname,detail,category,price,productqty from product where category='Desserts' and productqty>0"
           ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
    </div>
</div>
             
</asp:Content>
