<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeFile="DepartmentList.aspx.cs" Inherits="employee_management_system.Admin.DepartmentList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mt-5 ms-3 me-3 pt-3 bg-white rounded shadow">

        <div class="h1 text-center mb-3">Depatment List</div>

        <div class="p-3">

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="table table-hover table-striped table-bordered">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="DepartmentName" HeaderText="Department Name" SortExpression="DepartmentName" />
                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:Button runat="server" ID="View" Text="View" CssClass="btn btn-info text-white" />

                            <asp:Button runat="server" ID="Edit" Text="Edit" CssClass="btn btn-success text-white ms-3" />

                            <asp:Button runat="server" ID="Delete" Text="Delete" CssClass="btn btn-danger text-white ms-3" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Connectionstr %>" SelectCommand="SELECT * FROM [DepartmentTable]"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
