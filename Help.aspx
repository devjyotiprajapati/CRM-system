<%@ Page Title="" Language="C#" MasterPageFile="~/AfterloginMasterPage.Master" AutoEventWireup="true" CodeBehind="Help.aspx.cs" Inherits="CRM_Final_Project.Help" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/ >
    <style type="text/css">
        .body {
            background-color:mediumaquamarine;
            border:2px solid black;
            margin-top:20px;
            color:white;
            margin-bottom:20px;
            font-family: "Times New Roman", Times, serif;
        }
        .bg {
            background-color:silver;
        }
        .img {
            margin-top:20px;
            margin-bottom:20px;
            border:2px solid black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
         <div class="row body">
             <div class="col-md-4 col-ms-4 col-xs-12">
                <img src="Image/help.jpg" class="rounded float-left img" alt="..." height="350" width="300"/>
            </div>
          <div class="col-md-4 col-ms-4 col-xs-12">  
        <h1 class="text-center text-capitalize">HELP </h1>
        <hr class="w-25 mx-auto btn-success"/>
    
    
         <p class="text-center text-capitalize"><h3><u>Welcome to Our help desk</u></h3>
             Any kind of problem of any customer can use our crm  <b><u>CRM.JYOTIINDUSTY.COM </u></b> Customer Relationship Management portal .
             But first you have to register  than  you can login and complaint register and we will reply soon as posible. 
             If you have any problem then you will go on CRM portal and send email and you can also contact us with facbook, twitter ,etc.</p>
        
</div>
               <div class="col-md-4 col-ms-4 col-xs-12">
            
            </div>
            </div>
    
         </div>
   
     
       
 <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
</asp:Content>
