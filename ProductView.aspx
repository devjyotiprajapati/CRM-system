<%@ Page Title="" Language="C#" MasterPageFile="~/AfterloginMasterPage.Master" AutoEventWireup="true" CodeBehind="ProductView.aspx.cs" Inherits="CRM_Final_Project.ProductView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/ >
    <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
     <style type="text/css">
         .auto-style1 {
             width: 100%;
         }
         .auto-style5 {
             width: 100%;
         }
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="ProductId" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <table class="auto-style5">
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" BackColor="#3333FF" Font-Bold="True" Font-Size="Medium" ForeColor="White"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" BackColor="#3333FF" Font-Bold="True" Font-Size="Medium" ForeColor="White"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" BackColor="#3333FF" Font-Bold="True" Font-Size="Medium" ForeColor="White"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" BackColor="#3333FF" Font-Bold="True" Font-Size="Medium" ForeColor="White"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" BackColor="#3333FF" Font-Bold="True" Font-Size="Medium" ForeColor="White"></asp:Label>
                        </td>
                    </tr>
                </table>
                <asp:Image ID="Image1" runat="server" />
                <br />
            </ItemTemplate>
        </asp:DataList>
        </div>
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:crm_databaseConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
    </div>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
  
</asp:Content>
