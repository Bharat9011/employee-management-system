<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="maageLeave.aspx.cs" Inherits="employee_management_system.Admin.maageLeave" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="mt-5 ms-3 me-3 bg-white rounded shadow">

        <div class="h1 mb-3 ps-2 pt-2 text-center">Leave Type List</div>

        <div class="p-3">

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="table table-hover table-striped table-bordered">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="LeaveTypeName" HeaderText="Leave Type Name" SortExpression="LeaveTypeName" />
                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:Button runat="server" ID="View" Text="View" CssClass="btn btn-info text-white" />

                            <asp:Button runat="server" ID="Edit" Text="Edit" CssClass="btn btn-success text-white ms-3" />

                            <asp:Button runat="server" ID="Delete" Text="Delete" CssClass="btn btn-danger text-white ms-3" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Connectionstr %>" SelectCommand="SELECT * FROM [LeaveType]"></asp:SqlDataSource>
        </div>
    </div>

</asp:Content>
