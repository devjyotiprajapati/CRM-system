<%@ Page Title="" Language="C#" MasterPageFile="~/AfterLoginEmployeeMasterPage.Master" AutoEventWireup="true" CodeBehind="SearchAllComplaintStatus.aspx.cs" Inherits="CRM_Final_Project.SearchAllComplaintStatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
    <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    
    <script src="JavaScript.js"></script>
    <style type="text/css">
        .box {
            background-color:aqua;
        }
        table#ContentPlaceHolder1_GridView1 {
            width: 100%;
        }
         h3{
            font-family: "Times New Roman", Times, serif;
            color:navy;
            text-align:center;
            
          }
       .box{
           font-family: "Times New Roman", Times, serif;
            color:navy;
            text-align:center;
            
       }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="box">
        <b><i><u><h3>Search complaint status</h3></u></i></b>
        <div class="box">
            <asp:Label ID="Label1" runat="server" Text="Complaint ID"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Placeholder="Enter our complaint Id"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Search" Class="btn btn-primary" OnClick="Button1_Click" />
        </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
        </div>
        <div class="box">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ComplaintID" Font-Italic="True">
                <Columns>
                    <asp:BoundField DataField="ComplaintID" HeaderText="Complaint ID">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CustID" HeaderText="Customer ID">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ReasonForComplaint" HeaderText="Reason for Complaint">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Email" HeaderText="Email">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ProductNo" HeaderText="Product No">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Description" HeaderText="Description">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Document" HeaderText="Document">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="DateofComplaint" HeaderText="Date of Complaint">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="DateofReply" HeaderText="Date of reply">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Status" HeaderText="Status">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Reply" HeaderText="Reply">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="EmpID" HeaderText="Employee ID">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>

</asp:Content>
