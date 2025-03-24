<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PotentialCustQuery.aspx.cs" Inherits="CRM_Final_Project.PotentialCustQuery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
    <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style type="text/css">
        body{
            font-family: "Times New Roman", Times, serif;
        }
        .bot {
            text-align:center;
            background-color:blue;
            color:white;
        }
       .btn-primary {
            border-radius:8px;padding:10px;
            width:49%;
        }
        .btn-success{
            border-radius:8px;padding:10px;
            width:49%;
        }
        
    </style>

</head>
<body>
      <form id="form1" runat="server">
     <div>
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <a class="navbar-brand " href="#"><i></i><div>CRM.JYOTIINDUSTRY.COM </div></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="AfterloginHomePage.aspx"><i class="fa fa-home fa-2x " aria-hidden="true"></i><div>HOME</div></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="CustomerLogin.aspx"><i class="fa fa-sign-in  fa-2x" aria-hidden="true"></i><div>Log In</div></a>
      </li>  
               
    </ul>      
                     
  </div>
</nav>
    </div>
   <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="Image/crm2.jpg" alt="First slide"  height="200"/>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="Image/crm1.jpg" alt="Second slide" height="200" />
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="Image/crm.jpg" alt="Third slide" height="200"/>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
    <div>
        <div class="container-fluid bg"> 
        <div class="row">
            <div class="col-md-4 col-ms-4 col-xs-12" ></div>
            <div class="col-md-4 col-ms-4 col-xs-12 box" >                
                    <h3><center>Query</center></h3>
                    <div class="form-group">
                        <asp:Label ID="Label5" runat="server" Text="Label"> Potential Query ID</asp:Label>
                        <asp:TextBox ID="TextBox9" runat="server" Class="form-control" ReadOnly="True"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Label">Number</asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" Class="form-control" placeholder="Number"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="Label">Email</asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" Class="form-control" placeholder="Email" TextMode="Email"></asp:TextBox>
                    </div>
                    <div class="form-group">
                       <asp:Label ID="Label3" runat="server" Text="Label">Query Type</asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>-- Select--</asp:ListItem>
                            <asp:ListItem>Product Quality</asp:ListItem>
                            <asp:ListItem>How Much</asp:ListItem>
                            <asp:ListItem>Offer type</asp:ListItem>
                            <asp:ListItem>Payment type</asp:ListItem>
                        </asp:DropDownList>

                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" Text="Label">Query</asp:Label>
                        <asp:TextBox ID="TextBox4" runat="server" Class="form-control" TextMode="SingleLine"></asp:TextBox>
                    </div>
                     
                    <div class="form-group">
                        <asp:Button ID="btn1" runat="server" Text="Submit" class="btn btn-primary" OnClick="btn1_Click" />
                        <asp:Button ID="btn2" runat="server" Text="Reset" class="btn btn-success" OnClick="btn2_Click" />
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label6" runat="server" Text="Label" Visible="False"></asp:Label>
                        <asp:Label ID="Label7" runat="server" Text="Label" Visible="False"></asp:Label>
                    </div>                
            </div>
            <div class="col-md-4 col-ms-4 col-xs-12" ></div>
        </div>
         

   </div>          
        
    </div>
         <div>
           <div  class="bot">                                             
            
                <hr class="w-100 mx-bold btn-primary"  />                
                Copyright &copy; All Right Rserverd 2022 : CRM.JYOTIINDUSTY.COM  
                   <hr class="w-100 mx-bold btn-primary"  />                 
                  </div>          

        </div>
    <div>

        
    </div>
    
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
  
    </form>
    
</body>
</html>
