<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Afterloginadmin.Master" AutoEventWireup="true" CodeBehind="Addnewproduct.aspx.cs" Inherits="CRM_Final_Project.Admin.Addnewproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
     <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style type="text/css">
        .box {
            
            color:black;
            -webkit-box-shadow: -5px 2px 62px 9px rgba(0,0,0,0.75);
            -moz-box-shadow: -5px 2px 62px 9px rgba(0,0,0,0.75);
            box-shadow: -5px 2px 62px 9px rgba(0,0,0,0.75);
            font-family: "Times New Roman", Times, serif;
             }      
        
        h3 {
            color:white;
            text-align:center;
            font-weight:bolder;
        }
        .btn-primary {
            border-radius:0px;padding:10px;
            width:49%;
        }
        .btn-danger{
            border-radius:0px;padding:10px;
            width:49%;
        }
        .bg {
            //background:url('Image/crm1.jpg') no-repeat;
           // background-color:#d4d4e3;
           background-color: cadetblue;
            width:100%;
            font-family: "Times New Roman", Times, serif;
            height:100%;
            
        }
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid bg"> 
        <div class="row">
            <div class="col-md-4 col-ms-4 col-xs-12" ></div>
            <div class="col-md-4 col-ms-4 col-xs-12 box" >
                
                    <h3>Add New Product</h3>
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Label">Product Id</asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" Class="form-control" ></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="Label">Product Name</asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" Class="form-control" ></asp:TextBox>
                    </div>
                <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="Label">Description</asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server" Class="form-control" ></asp:TextBox>
                    </div>
                <div class="form-group">
                        <asp:Label ID="Label4" runat="server" Text="Label">Price</asp:Label>
                        <asp:TextBox ID="TextBox4" runat="server" Class="form-control" ></asp:TextBox>
                    </div>
                <div class="form-group">
                        <asp:Label ID="Label5" runat="server" Text="Label">Upload File</asp:Label>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    </div>
                <div class="form-group">
                        <asp:Button ID="bt1" runat="server" Text="Save" class="btn btn-block btn-success" OnClick="btn1_Click"  />
                    </div>
                 
                <asp:Label ID="Label6" runat="server" Text="Label" Visible="false"></asp:Label>
                   </div>
             <div class="col-md-4 col-ms-4 col-xs-12" ></div>
        </div>
         

   </div> 

    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>

</asp:Content>
