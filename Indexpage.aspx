<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Indexpage.aspx.cs" Inherits="CRM_Final_Project.Indexpage" %>

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
      
      <li class="nav-item">
        <a class="nav-link " href="Newsignup.aspx" tabindex="-1" aria-disabled="true"><i class="fa fa-sign-out fa-2x" aria-hidden="true"></i><div>New User </div></a>
      </li>
       <li class="nav-item">
        <a class="nav-link " href="PotentialCustQuery.aspx" tabindex="-1" aria-disabled="true"><i class="fa fa-user fa-2x" aria-hidden="true"></i><div>Query for Potential Customer </div></a>
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
            <div class="col-md-4 col-ms-4 col-xs-12" >
                <center><i class="fa fa-search fa-5x" aria-hidden="true"></i></center>
              <div><h4><bold>Make it easy for your customers 60% of customers see an increase in satisfaction </bold></h4></div>  
               <div><h6>when they’re empowered to find what they need with crm.jyotiindusty.com self-service tools</h6></div>

            </div>
            <div class="col-md-4 col-ms-4 col-xs-12 box"> 
                <center><i class="fa fa-handshake-o fa-5x" aria-hidden="true"></i></center>
                <div><h4><bold>  Create a culture of collaboration 51% of customers see increased agent productivity </bold></h4></div>
               <div><h6>after implementing  crm.jyotiindusty.com powerful tools that promote inter-team communication</h6></div>
            </div>
                 <div class="col-md-4 col-ms-4 col-xs-12" >
                     <center><i class="fa fa-product-hunt fa-5x" aria-hidden="true"></i></center>
                     <div><h4>This one isn't necessarily a complaint but is something that customer service teams encounter on a daily basis.</h4></div> 
                     <div><h6> If your product or service doesn't meet all of your customers' needs, they'll ask if they can propose a new product or feature.</h6></div>
                     
                </div>
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
