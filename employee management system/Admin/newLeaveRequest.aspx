<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="newLeaveRequest.aspx.cs" Inherits="employee_management_system.Admin.newLeaveRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="mt-5 ms-3 me-3 bg-white rounded shadow pt-3">
        
        <div class="h1 text-center mb-3">New Leave Request List</div>
        
        <div class="ps-3 pe-3 pb-3">
        
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CssClass="table table-hover table-bordered table-striped table-responsive">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="EmployeeID" HeaderText="Employee ID" SortExpression="EmployeeID" />
                    <asp:BoundField DataField="LeavesReason" HeaderText="Leaves Reason" SortExpression="LeavesReason" />
                    <asp:BoundField DataField="LeavesStartedDate" HeaderText="Leaves Started Date" SortExpression="LeavesStartedDate" />
                    <asp:BoundField DataField="LeavesEndDate" HeaderText="Leaves End Date" SortExpression="LeavesEndDate" />
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Connectionstr %>" SelectCommand="SELECT * FROM [LeaveRequests] WHERE ([Status] = @Status)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="Pending" Name="Status" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

        </div>
    </div>

</asp:Content>
