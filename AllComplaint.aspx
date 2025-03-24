<%@ Page Title="" Language="C#" MasterPageFile="~/AfterLoginEmployeeMasterPage.Master" AutoEventWireup="true" CodeBehind="AllComplaint.aspx.cs" Inherits="CRM_Final_Project.ReplyonComplaint" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
    <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style type="text/css">
        table#ContentPlaceHolder1_GridView1 {
            width: 100%;
        }
          h3{
            font-family: "Times New Roman", Times, serif;
            color:navy;
            text-align:center;
            
          }
          .box{
              background-color:aqua;
          }
    </style>
    <script src="JavaScript.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="box">
         <b><i><u><h3>All complaint</h3></u></i></b>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ComplaintID" Font-Italic="True" Font-Overline="False" HorizontalAlign="Center" Width="997px" >
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
                <asp:BoundField DataField="DateofComplaint" HeaderText="Date of Complaint">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Status" HeaderText="Status">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="Reply">
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" BackColor="#FF3300" CommandArgument='<%#Eval("ComplaintID")%>' OnClick="Button1_Click" Text="Reply" Width="140px" />
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                                   </asp:TemplateField>
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
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

</asp:Content>
