<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="showemployee.aspx.cs" Inherits="employee_management_system.Admin.showemployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="mt-5 ms-3 me-3 bg-white rounded shadow">

        <div class="h1 text-center mb-3">Employee Detaile</div>

        <div runat="server" ID="employeebasicINFO">

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EmployeeID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="EmployeeID" HeaderText="Employee ID" InsertVisible="False" ReadOnly="True" SortExpression="EmployeeID" />
                    <asp:BoundField DataField="EmpFullName" HeaderText="Full Name" SortExpression="EmpFullName" />
                    <asp:BoundField DataField="EmpPhone" HeaderText="Mobile Phone" SortExpression="EmpPhone" />
                    <asp:BoundField DataField="EmpEmail" HeaderText="Email" SortExpression="EmpEmail" />
                    <asp:BoundField DataField="EmpGender" HeaderText="Gender" SortExpression="EmpGender" />
                    <asp:BoundField DataField="EmpDateOfBirth" HeaderText="Date Of Birth" SortExpression="EmpDateOfBirth" />
                    <asp:BoundField DataField="EmpMartialStatus" HeaderText="Martial Status" SortExpression="EmpMartialStatus" />
                    <asp:BoundField DataField="EmpPassword" HeaderText="Password" SortExpression="EmpPassword" />
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=SHRIKHRISHNA\SQLEXPRESS;Initial Catalog=EmployeeManagementSystem;Integrated Security=True;Encrypt=False;Trust Server Certificate=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [EmployeeID], [EmpFullName], [EmpPhone], [EmpEmail], [EmpGender], [EmpDateOfBirth], [EmpMartialStatus], [EmpPassword] FROM [EmployeeInformation]"></asp:SqlDataSource>
        </div>
    
    </div>

</asp:Content>
