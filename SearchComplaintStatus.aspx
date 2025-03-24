<%@ Page Title="" Language="C#" MasterPageFile="~/AfterloginMasterPage.Master" AutoEventWireup="true" CodeBehind="SearchComplaintStatus.aspx.cs" Inherits="CRM_Final_Project.SearchComplaintStatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
     <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style type="text/css">
       h3{            
            font-family: "Times New Roman", Times, serif;
            color:navy;
            text-align:center;            
          }
       h5{
           font-family: "Times New Roman", Times, serif;
            color:navy;
            text-align:center;           
       }
       
        table#ContentPlaceHolder1_GridView1 {
            width: 100%;
        }
        .bg{
            background-color:lightblue;
            font-family: "Times New Roman", Times, serif;
        }
       
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bg">
    <div><h3><u>Search Complaint</u></h3></div>
    <div>
        <h5 >
            <asp:Label ID="Label2" runat="server" Text="Enter Complaint Id"></asp:Label><asp:TextBox ID="TextBox1" runat="server" Width="124px"></asp:TextBox><br />
        <asp:Button ID="Button1" runat="server" Text="Search"  Class="btn btn-group-sm btn-primary box" OnClick="Button1_Click"/><br />
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            </h5>
    </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ComplaintID">
            <Columns>
                <asp:BoundField DataField="ComplaintID" HeaderText="Complaint Id" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="CustID" HeaderText="Customer Id" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="ReasonForComplaint" HeaderText="ReasonForComplaint" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Email" HeaderText="Email Id" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="ProductNo" HeaderText="Product No" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Description" HeaderText="Description" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="DateofComplaint" HeaderText="Date of Complaint" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="DateofReply" HeaderText="Date of Reply" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Status" HeaderText="Status" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Reply" HeaderText="Reply" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="EmpID" HeaderText="Employee Id" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
    </div>
     <div>
       <</div> 
    </div>
    

     <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>

</asp:Content>
