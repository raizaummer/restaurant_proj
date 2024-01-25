<%@ Page Title="" Language="C#" MasterPageFile="~/Traditionalrest.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="tregister.aspx.cs" Inherits="restaurant.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <style>
             .abouts about_content {
    margin-left: auto;
    margin-right: auto;
    width: 960px;
}
.container {
    margin-left: auto;
    margin-right: auto;
    width: 960px;
    padding: 5%;
    border-radius: 5px;
    box-shadow: rgba(0,0,0,0.15);
}

    .container .title {
        font-size: 25px;
        font-weight: 500;
        position: relative;
    }

        

.content .user-details {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    margin: 20px 0 12px 0;
}
 
.user-details .input-box {
    margin-bottom: 15px;
    width: calc(100% / 2 - 20px);
}

.input-box span.details {
    display: block;
    font-weight: 500;
    margin-bottom: 5px;
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

    .user-details .input-box input:focus,
    .user-details .input-box input:valid {
        border-color: #9b59b6;
    }

.gender-details .gender-title {
    font-size: 20px;
    font-weight: 500;
}

.category {
    display: flex;
   
    margin: 14px 0;
    /*justify-content: space-between;*/
}

    .category label {
        display: flex;
        align-items: center;
        cursor: pointer;
    }

        .category label .dot {
            height: 18px;
            width: 18px;
            border-radius: 50%;
            margin-right: 10px;
            background: #d9d9d9;
            border: 5px solid transparent;
            transition: all 0.3s ease;
        }

#dot1:checked ~ .category label .one,
#dot2:checked ~ .category label .two,
#dot3:checked ~ .category label .three {
    background: #9b59b6;
    border-color: #d9d9d9;
}
             .button input {
                 height: 100%;
                 width: 30%;
                 border-radius: 5px;
                 border: none;
                 color: #fff;
                 font-size: 18px;
                 font-weight: 500;
                 letter-spacing: 1px;
                 cursor: pointer;
                 transition: all 0.3s ease;
                 background: linear-gradient(135deg, #a32b2b,#808080);
             }
             .button input:hover {
             transform: scale(0.99); 
            background: linear-gradient(-135deg, #71b7e6, #9b59b6);
        }
.button {
    height: 45px;
    margin: 35px 0
}
@media(max-width: 584px) {
    .container {
        max-width: 100%;
    }
 .user-details .input-box {
        margin-bottom: 15px;
        width: 100%;

    }
    .user-details .input-box{
        background:no-repeat;
    }
    .category {
        width: 100%;
    }
    .user-details .input-box {
        background: linear-gradient(-135deg, #e5eaed, #f5eff7)
    }
    

    .user-details::-webkit-scrollbar {
        width: 5px;
    }
}

@media(max-width: 459px) {
    .container .content .category {
        flex-direction: column;
    }
}

         </style>
    <link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/slider.css">
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/superfish.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/sForm.js"></script>
<script src="js/jquery.carouFredSel-6.1.0-packed.js"></script>
<script src="js/tms-0.4.1.js"></script>
<script>
    $(window).load(function () {
        $('.slider')._TMS({
            show: 0,
            pauseOnHover: false,
            prevBu: '.prev',
            nextBu: '.next',
            playBu: false,
            duration: 800,
            preset: 'fade',
            pagination: true, //'.pagination',true,'<ul></ul>'
            pagNums: false,
            slideshow: 8000,
            numStatus: false,
            banners: false,
            waitBannerAnimation: false,
            progressBar: false
        })
    });
    $(window).load(function () {
        $('.carousel1').carouFredSel({
            auto: false,
            prev: '.prev',
            next: '.next',
            width: 960,
            items: {
                visible: {
                    min: 1,
                    max: 4
                },
                height: 'auto',
                width: 240,
            },
            responsive: false,
            scroll: 1,
            mousewheel: false,
            swipe: {
                onMouse: false,
                onTouch: false
            }
        });
    });
</script>

<%--    <link rel="stylesheet" href="tregiststyle.css">--%>
  
     <div class="abouts abouts_content text-centre" style="background-size: cover">
    <div class="container"><br />
        <div class="title">
            <h4>Create Account</h4>
        </div><br />

                <div class="user-details">
                    <div class="input-box">
                        <span class="details">First Name</span>
                        <asp:TextBox ID="fname" runat="server" placeholder="Enter your first name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fname" ErrorMessage="*" ForeColor="#CC0066"></asp:RequiredFieldValidator>
                       
                        <span class="details">Last Name</span>
                        <asp:TextBox ID="lname" runat="server" placeholder="Enter your last name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="lname" ForeColor="Yellow"></asp:RequiredFieldValidator>
                    </div>

                    <div class="input-box">
                        <span class="details">Mobile Number</span>
                        <asp:TextBox ID="mobile" runat="server" placeholder="Enter your mobile no."></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="mobile" ForeColor="#CC0066"></asp:RequiredFieldValidator>

                        </div>
                    <div class="gender-details">
                        <span class="gender-title">Gender</span>
                        <div class="category">
                            <asp:RadioButton ID="dot1" Text="Male" runat="server" />
                            <asp:RadioButton ID="dot2" Text="Female" runat="server" />
                            <asp:RadioButton ID="dot3" runat="server" Text="Prefer not to say" />
                        </div></div>
                        <div class="input-box">
                            <span class="details">Email</span>
                            <asp:TextBox ID="email" runat="server" placeholder="Enter your email"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="email" ForeColor="#CC0066"></asp:RequiredFieldValidator>

                            </div>
                        <div class="input-box">
                            <span class="details">Password</span>
                            <asp:TextBox ID="password" runat="server" placeholder="Enter password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="password" ForeColor="#CC0066"></asp:RequiredFieldValidator>
                        </div>
                        <div class="input-box">
                            <span class="details">Confirm Password</span>
                            <asp:TextBox ID="cpassword" placeholder="Confirm your password" runat="server"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="cpassword" ControlToCompare="password" ErrorMessage="Password does not match" ForeColor="#CC0066"></asp:CompareValidator>
                        </div>
                    </div>

                   <div class="input-box" style="width:250px">
    <div class="button"> 
                       <asp:Button ID="Button1" Height="40" Width="250" runat="server" OnClick="Button1_Click1" Text="Save" />
                  </div>   
                    
                </div>
             </div> 
         
<%--    </form>--%>
</asp:Content>




 