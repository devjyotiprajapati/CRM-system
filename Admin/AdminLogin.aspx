<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="CRM_Final_Project.Admin.AdminLgin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login Page</title>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
     <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style type="text/css">
        body{
            background:url('../Image/loginback.jpg');
            background-size:cover;
        }
        .box{
            margin:30px 30px;
            font-family: "Times New Roman", Times, serif;
            -webkit-box-shadow: -5px 2px 62px 9px rgba(0,0,0,0.75);
-moz-box-shadow: -5px 2px 62px 9px rgba(0,0,0,0.75);
box-shadow: -5px 2px 62px 9px rgba(0,0,0,0.75);
/*filter:blur(3px);
*/        }
       /* .test{
            z-index:2;
            font-size:medium;
            font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
            color:red;
        }*/

       img {
            width: 90px;
            margin: auto;            
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid ">
            <div class="row">
                <div class="col-md-4 col-ms-4 col-xs-12"></div>
                <div class="col-md-4 col-ms-4 col-xs-12  box"> 
                    <h1 class="text-center text-capitalize " >Admin LogIn</h1>
                    <hr class="w-50 mx-bold btn-primary"  />
                    <center><img style="border-radius:100%;" src="../Image/login2.png" /></center>
                    <div class="form-group">
                        <label>Admin Name</label>
                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Admin Name"  ></asp:TextBox>

                    </div>                                                  
                    <div class="form-group">
                        <label>Password</label>
                        <asp:TextBox ID="TextBox2" runat="server"  class="form-control fa fa-eye" placeholder="Password"  aria-hidden="true" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                    </div>
                    <div class="checkbox">
                        <label><input  type="checkbox" />Remember Me</label>
                    </div>
                    <div class="form-group">
                        <asp:LinkButton ID="LinkButton12" runat="server" PostBackUrl="#" >Forget Password</asp:LinkButton>
                    </div>
                    <div class="form-group">
                        <asp:Button ID="bt1" runat="server" Text="LogIn" class="btn btn-block btn-primary" OnClick="bt1_Click"  />
                    </div>
                 

                </div>
            </div>
        </div>
    </form>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
</body>
</html>
