<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="mangesalary.aspx.cs" Inherits="employee_management_system.Admin.mangesalary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="mt-5 ms-3 me-3 bg-white rounded shadow">

        <div class="h1 text-center mb-3">Salary List</div>

        <div class="ps-3 pe-3 pb-3">

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CssClass="table table-bordered table-hover table-striped">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Salary Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="emailName" HeaderText="Email Name" SortExpression="emailName" />
                    <asp:BoundField DataField="salary" HeaderText="Salary" SortExpression="salary" />
                    <asp:BoundField DataField="Allowance_Salary" HeaderText="Allowance Salary" SortExpression="Allowance_Salary" />
                    <asp:BoundField DataField="netSalary" HeaderText="Net Salary" SortExpression="netSalary" />
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Connectionstr %>" SelectCommand="SELECT * FROM [Salary]"></asp:SqlDataSource>
        </div>
    </div>

</asp:Content>
