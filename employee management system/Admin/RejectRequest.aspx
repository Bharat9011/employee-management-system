<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="RejectRequest.aspx.cs" Inherits="employee_management_system.Admin.Reject_Request" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="mt-5 ms-3 me-3 bg-white rounded shadow pt-3">
    <div class="h1 text-center mb-3">Rejected Request List</div>
    <div class="ps-3 pe-3 pb-3">
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="table table-bordered table-hover table-responsive table-striped">
            <Columns>
                <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" SortExpression="EmployeeID" />
                <asp:BoundField DataField="LeavesReason" HeaderText="LeavesReason" SortExpression="LeavesReason" />
                <asp:BoundField DataField="LeavesStartedDate" HeaderText="LeavesStartedDate" SortExpression="LeavesStartedDate" />
                <asp:BoundField DataField="LeavesEndDate" HeaderText="LeavesEndDate" SortExpression="LeavesEndDate" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Connectionstr %>" SelectCommand="SELECT [EmployeeID], [LeavesReason], [LeavesStartedDate], [LeavesEndDate], [Status] FROM [LeaveRequests] WHERE ([Status] = @Status)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Rejected" Name="Status" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>


    </div>
</div>


</asp:Content>
