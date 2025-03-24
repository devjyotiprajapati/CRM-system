<%@ Page Title="" Language="C#" MasterPageFile="~/AfterloginMasterPage.Master" AutoEventWireup="true" CodeBehind="PredefinedQueryandAnswer.aspx.cs" Inherits="CRM_Final_Project.PredefinedQueryandAanswer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
    <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
     <%--<script src="JavaScript.js" defer></script>--%>
    <style type="text/css">
        .banner_section{
            background:url('image/crm1.jpg');
            background-repeat:no-repeat;
            background-position:center;
            background-size:cover;
            height:50%;
        }
        .banner_section .carousel-item{
            padding:20rem 0;
            height:90vh;
        }
        
.chat{
    position:  fixed;
  bottom: -1px;
  padding-bottom:60px;
  font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
  color:darkblue;
  right: 10px;
}
i {
  position: fixed;
  bottom: -4px;
  right: 10px;
}
.bg {
            background-color:burlywood;
            border:groove;
        }
 .body {
            border:medium 2px solid black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          
    <div>
        <div  class="container-fluid bg ">
        <div class="row">
            <div class="col-md-4 col-ms-4 col-xs-12"></div>
            <div class="col-md-4 col-ms-4 col-xs-12 body">
                 <h4 class="text-center text-capitalize">CRM Query Portal</h4>
                <hr class="w-75 mx-auto "/>              
                <div class="form-group" >
                    <asp:Label ID="Label1" runat="server" Text="Select Query Type"></asp:Label><br />
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>                  
                  </div>
                <div class="form-group" >
                    <asp:Label ID="Label2" runat="server" Visible="False" Text="Your Answer"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" Visible="false" Class="form-control"  AutoPostBack="True"  ReadOnly="true"  ></asp:TextBox>                    
                  </div>
                <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="Label"  Visible="False" >Are you satisfied ?</asp:Label>
                    <asp:Button ID="Button1" runat="server" Text="Yes" class="btn btn-primary" Visible="false" OnClick="GetOptioYesSelected" />
                    <asp:Button ID="Button2" runat="server" Text="No" class="btn btn-danger" Visible="false" OnClick="GetOptioNoSelected" /> <br />
                    <asp:Label ID="Label4" runat="server" Text="Label"  Visible="False"></asp:Label>
                    <asp:Label ID="Label5" runat="server" Text="Label"  Visible="False"></asp:Label>
                    <asp:Button ID="Button3" runat="server" Text="Query hear!" class="btn btn-success" Visible="False" PostBackUrl="~/CustomerQuery.aspx"/>
                    </div>
                </div>
            </div>
            </div>
        
    
    </div>
   
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</asp:Content>
