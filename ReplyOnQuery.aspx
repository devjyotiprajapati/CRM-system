<%@ Page Title="" Language="C#" MasterPageFile="~/AfterLoginEmployeeMasterPage.Master" AutoEventWireup="true" CodeBehind="ReplyOnQuery.aspx.cs" Inherits="CRM_Final_Project.ReplyOnQuery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
    <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>    
    <script src="JavaScript.js"></script>
    <style type="text/css">
        .bg {
            background-color:darkviolet;
            border:groove;
        }
        .box {
            color:deeppink;
        }
        .body {
            border:medium 2px solid black;
            font-family: Times New Roman, Times, serif;
            color:white;
             -webkit-box-shadow: -5px 2px 62px 9px rgba(0,0,0,0.75);
-moz-box-shadow: -5px 2px 62px 9px rgba(0,0,0,0.75);
box-shadow: -5px 2px 62px 9px rgba(0,0,0,0.75);

        }

         .btn-primary {
            border-radius:0px;padding:10px;
            width:49%;
        }
        .btn-success{
            border-radius:0px;padding:10px;
            width:49%;
        }
        #TextBox3{
            padding: 25px;
        }
         #TextBox4{
            padding:25px;
            }
                
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div  class="container-fluid bg ">
        <div class="row">
            <div class="col-md-4 col-ms-4 col-xs-12"></div>
            <div class="col-md-4 col-ms-4 col-xs-12 body">
                 <h4 class="text-center text-capitalize">Reply On Query</h4>
                <hr class="w-75 mx-auto "/>   
                <div class="form-group">
                     <asp:Label ID="Label1" runat="server" Text="Query Id" ></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" Class="form-control" ReadOnly="True"></asp:TextBox>
                </div>
                 <div class="form-group">
                     <asp:Label ID="Label2" runat="server" Text="Customer Id" ></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" Class="form-control" ReadOnly="True"></asp:TextBox>
                </div>
                <div class="form-group" >
                    <asp:Label ID="Label3" runat="server" Text="Query"></asp:Label>
                     <asp:TextBox ID="TextBox3" runat="server" Class="form-control" ReadOnly="True"></asp:TextBox>                    
                               
                  </div>
                <div class="form-group" >
                    <asp:Label ID="Label4" runat="server" Text="Email Id"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" Class="form-control" ReadOnly="True"></asp:TextBox>                    
                  </div>
                 
                 <div class="form-group" >
                    <asp:Label ID="Label5" runat="server" Text="Product No"></asp:Label>
                    <asp:TextBox ID="TextBox5" runat="server" Class="form-control" ReadOnly="True"></asp:TextBox>                    
                  </div>
                 <div class="form-group" >
                    <asp:Label ID="Label6" runat="server" Text="Product Name"></asp:Label>
                    <asp:TextBox ID="TextBox6" runat="server" Class="form-control" ReadOnly="True" ></asp:TextBox>                    
                  </div>
                <div class="form-group" >
                    <asp:Label ID="Label7" runat="server" Text="Date of Query"></asp:Label>
                     <asp:TextBox ID="TextBox7" runat="server" Class="form-control" ReadOnly="True"></asp:TextBox>                 
                  </div>
                
                <div class="form-group">
                     <asp:Label ID="Label8" runat="server" Text="Reply" ></asp:Label>
                    <asp:TextBox ID="TextBox8" runat="server" Class="form-control" placeholder="Reply hear" TextMode="MultiLine"></asp:TextBox>
                </div>
                <div class="form-group">
                     <asp:Label ID="Label9" runat="server" Text="Employee Id" ></asp:Label>
                    <asp:TextBox ID="TextBox9" runat="server" Class="form-control" placeholder="Employee Id"></asp:TextBox>
                </div>
                 <div class="form-group">                        
                        <asp:Button ID="bt1" runat="server" Text="Send" class="btn btn-block btn-primary" OnClick="bt1_Click"    />
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label10" runat="server" visible="false"></asp:Label>
                    </div>

     </div>
            <div class="col-md-4 col-ms-4 col-xs-12"></div>
        </div>
    </div>
    
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
    
</asp:Content>
