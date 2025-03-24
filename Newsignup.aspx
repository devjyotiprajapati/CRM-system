<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Newsignup.aspx.cs" Inherits="CRM_Final_Project.Newsignup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
            color:blue;
            text-align:center;
            font-weight:bolder;
        }
        .btn-primary {
            border-radius:8px;padding:10px;
            width:49%;
        }
        .btn-success{
            border-radius:8px;padding:10px;
            width:49%;
        }
        .bg {
            /*background-image:linear-gradient("yellow,cornflowerblue,hotpink");*/
           background-color:#d4d4e3;
            width:100%;
            height:100%;
            
        }
    </style>
    </head>
<body>
        <div class="container-fluid bg"> 
        <div class="row">
            <div class="col-md-4 col-ms-4 col-xs-12" ></div>
            <div class="col-md-4 col-ms-4 col-xs-12 box" >
                <form runat="server" >
                    <h3>User SignUP</h3>
                    <center><img style="border-radius:100%;" height="100px" width="100px"  src="Image/signup.png" /></center>
                    <div class="form-group">
                        <asp:Label ID="Label11" runat="server" Text="Label">Customer ID</asp:Label>
                        <asp:TextBox ID="TextBox9" runat="server" Class="form-control" ReadOnly="True"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Label">First Name</asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" Class="form-control" placeholder="Name"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="Label">Age</asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" Class="form-control" placeholder="Age"></asp:TextBox>
                    </div>
                    <div class="form-group">
                       <asp:Label ID="Label3" runat="server" Text="Label">Address</asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server" Class="form-control" placeholder="Address" TextMode="MultiLine"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" Text="Label">Password</asp:Label>
                        <asp:TextBox ID="TextBox4" runat="server" Class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label5" runat="server" Text="Label">Confirm Password</asp:Label>
                        <asp:TextBox ID="TextBox5" runat="server" Class="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label6" runat="server" Text="Label">Mobile No</asp:Label>
                        <asp:TextBox ID="TextBox6" runat="server" Class="form-control" placeholder="Mobile No"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="Label8" runat="server" Text="Label">Email ID</asp:Label>
                        <asp:TextBox ID="TextBox7" runat="server" Class="form-control" placeholder="Email" TextMode="Email"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label9" runat="server" Text="Label">DOB</asp:Label>
                        <asp:TextBox ID="TextBox8" runat="server" Class="form-control" TextMode="Date"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label7" runat="server" Text="Label">Select gender</asp:Label>
                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="a" Text="Male" />
                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="a" Text="Female" />

                    </div> 
                    <div class="form-group">
                        <asp:Button ID="btn1" runat="server" Text="Submit" class="btn btn-primary" OnClick="btn1_Click"/>
                        <asp:Button ID="btn2" runat="server" Text="Reset" class="btn btn-success" OnClick="btn2_Click" />
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label10" runat="server" Text="Label" Visible="False"></asp:Label>
                    </div>
                </form>
            </div>
            <div class="col-md-4 col-ms-4 col-xs-12" ></div>
        </div>
         

   </div> 
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
</body>
</html>
