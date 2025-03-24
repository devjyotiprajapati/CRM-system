<%@ Page Title="" Language="C#" MasterPageFile="~/AfterloginMasterPage.Master" AutoEventWireup="true" CodeBehind="Complaint.aspx.cs" Inherits="CRM_Final_Project.Complaint" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
    <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>    
    <script src="JavaScript.js"></script>
    <style type="text/css">
        .bg {
            background-color:cyan;
            border:groove;
            font-family: "Times New Roman", Times, serif;
           
        }
        .box {
            color:deeppink;
        }
        .body {
            border:medium 2px solid black;
             -webkit-box-shadow: -5px 2px 62px 9px rgba(0,0,0,0.75);
-moz-box-shadow: -5px 2px 62px 9px rgba(0,0,0,0.75);
box-shadow: -5px 2px 62px 9px rgba(0,0,0,0.75);

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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="box"><marquee behavior="alternate">Welcome to our Customer Relationship Management System  <b><u>100 % Trusted</u></b></marquee></div>
    <hr />
     <div  class="container-fluid bg ">
        <div class="row">
            <div class="col-md-4 col-ms-4 col-xs-12"></div>
            <div class="col-md-4 col-ms-4 col-xs-12 body">
                 <h4 class="text-center text-capitalize">Customer Relationship Management System</h4>
                <hr class="w-75 mx-auto "/>              
                <%--<div class="form-group" >
                    <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;                                 
                    <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
                </div>
                <div class="form-group" >
                    <asp:TextBox ID="TextBox1" runat="server"  placeholder="First Name" Width="205px" Height="40px"></asp:TextBox>
                    <asp:TextBox ID="TextBox2" runat="server"  placeholder="Last Name" Width="205px" Height="40px"></asp:TextBox>                    
                  </div>--%>
                <div class="form-group" >
                    <asp:Label ID="Label1" runat="server" Text="Complaint ID"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" Class="form-control" ReadOnly="True"></asp:TextBox>                    
                  </div>
                <div class="form-group" >
                    <asp:Label ID="Label2" runat="server" Text="Customer ID"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" Class="form-control"></asp:TextBox>                    
                  </div>
                 <div class="form-group" >
                    <asp:Label ID="Label3" runat="server" Text="Reason for Complaint"></asp:Label>
                     <asp:DropDownList ID="DropDownList1" runat="server" Width="260px">
                         <asp:ListItem>Select one</asp:ListItem>
                         <asp:ListItem>Not Working Proper</asp:ListItem>
                         <asp:ListItem>Defactive</asp:ListItem>
                         <asp:ListItem>Quality</asp:ListItem>
                         <asp:ListItem>Quantity</asp:ListItem>
                     </asp:DropDownList>            
                  </div>
                <div class="form-group" >
                    <asp:Label ID="Label4" runat="server" Text="Email Id"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" Class="form-control" placeholder="Email Id"></asp:TextBox>                    
                  </div>
                 
                 <div class="form-group" >
                    <asp:Label ID="Label5" runat="server" Text="Product No"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" Class="form-control" placeholder="Product No"></asp:TextBox>                    
                  </div>
                 <div class="form-group" >
                    <asp:Label ID="Label6" runat="server" Text="Description"></asp:Label>
                    <asp:TextBox ID="TextBox5" runat="server" Class="form-control" placeholder="Describe here about your complaint" TextMode="MultiLine"></asp:TextBox>                    
                  </div>
                <div class="form-group" >
                    <asp:Label ID="Label7" runat="server" Text="Upload"></asp:Label>
                    <asp:FileUpload ID="FileUpload1" runat="server" />         
                    <h6 style="color: #FF0000">Note:-<b><i>If you have any doc related to Complaint then upload hear.</i></b></h6>
                  </div>
                
                <asp:Button ID="Button1" runat="server" Text="Send" class="btn  btn-success" OnClick="Button1_Click"  />               
                <asp:Button ID="Button2" runat="server" Text="Back" class="btn btn-primary"  PostBackUrl="~/AfterlooginHomePage.aspx" />
                <asp:Label ID="Label8" runat="server" Text="Label" Visible="False" ></asp:Label>
                        <asp:Label ID="Label9" runat="server" Text="Label" Visible="False"></asp:Label>
            </div>
            <div class="col-md-4 col-ms-4 col-xs-12"></div>
        </div>
    </div>
    
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
</asp:Content>
