<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="addsalary.aspx.cs" Inherits="employee_management_system.Admin.addsalary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="w-75 mt-3 p-4 rounded-2 ms-3 me-3 bg-white">

        <p class="h2 mb-2 text-center">Add Salary</p>

        <span class="w-75 bg-black mt-2 mb-2" style="height: 1px; display: block; margin-left: 80px;"></span>
        <div class="row">
            <div class="col-12 col-sm-10 col-md-6">
                <div class="form-group">
                    <asp:DropDownList class="form-control" data-bs-toggle="dropdown" aria-expanded="false" ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="EmpEmail" DataValueField="EmpEmail"></asp:DropDownList>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Connectionstr %>" SelectCommand="SELECT [EmpEmail] FROM [EmployeeInformation]"></asp:SqlDataSource>
                </div>
            </div>

            <div class="col-12 col-sm-10 col-md-6">
                <div class="form-group pmd-textfield ">

                </div>
            </div>

            <div class="col-12 col-sm-10 col-md-6">
                <div class="form-group pmd-textfield ">
                    <label for="sy" class="col-form-label control-label">Salary</label>
                    <asp:TextBox runat="server" ID="sy" CssClass="form-control" TextMode="SingleLine" />
                </div>
            </div>

            <div class="col-12 col-sm-10 col-md-6">
                <div class="form-group pmd-textfield">
                    <label for="as" class="col-form-label control-label">Allowance Salary</label>
                    <asp:TextBox runat="server" ID="ass" CssClass="form-control" TextMode="SingleLine" />
                </div>
            </div>

            <div class="col-12 col-sm-10 col-md-6">
                <div class="form-group pmd-textfield">
                    <label for="fn" class="col-form-label control-label">Net Salary</label>
                    <asp:TextBox runat="server" ID="ns" CssClass="form-control" TextMode="SingleLine" />
                </div>
            </div>
        </div>

        <asp:Button runat="server" Text="Submit" ID="submit" OnClick="submit_Click" CssClass="btn btn-primary mt-3"/>
    </div>

</asp:Content>
