<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeFile="showemployee.aspx.cs" Inherits="employee_management_system.Admin.showemployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="mt-5 ms-3 me-3 bg-white rounded shadow">

        <div class="h1 text-center mb-3">Employee List</div>

        <div class="ps-3 pe-3 pb-3">

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table text-center table-bordered table-hover table-striped table-responsive" OnRowEditing="GridView1_RowEditing" OnRowDeleting="GridView1_RowDeleting">
                <columns>
                    <asp:TemplateField HeaderText="Employee ID">
                        <itemtemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("EmployeID") %>'></asp:Label>
                        </itemtemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name">
                        <itemtemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                        </itemtemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Department">
                        <itemtemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Department") %>'></asp:Label>
                        </itemtemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email">
                        <itemtemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                        </itemtemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Mobile Number">
                        <itemtemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("MobileNumer") %>'></asp:Label>
                        </itemtemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:Button ID="editform" runat="server" Text="View and Edit" CssClass="btn btn-success" CommandName="Edit" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <itemtemplate>
                            <asp:Button ID="deleteform" runat="server" Text="Delete" CssClass="btn btn-danger" CommandName="Delete"  />
                        </itemtemplate>
                    </asp:TemplateField>
                </columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EMSVaidehiConnectionString %>" ProviderName="<%$ ConnectionStrings:EMSVaidehiConnectionString.ProviderName %>" SelectCommand="SELECT [EmployeID], [Name], [Department], [Email], [MobileNumer] FROM [EmployeeDeatils]"></asp:SqlDataSource>

        </div>

    </div>


</asp:Content>
