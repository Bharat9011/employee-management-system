<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="addsalary.aspx.cs" Inherits="employee_management_system.Admin.addsalary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="w-75 mt-3 p-4 rounded-2 ms-3 me-3 bg-white">

        <p class="h2 mb-2 text-center">Add Salary</p>

        <span class="w-75 bg-black mt-2 mb-2" style="height: 1px; display: block; margin-left: 80px;"></span>
        <div class="row">
            <div class="col-12 col-sm-10 col-md-6">
                <div class="form-group pmd-textfield ">
                    <label for="fn" class="col-form-label control-label">First Name</label>
                    <input type="text" class="form-control" value="" id="fn">
                </div>
            </div>

            <div class="col-12 col-sm-10 col-md-6">
                <div class="form-group pmd-textfield">
                    <label for="fn" class="col-form-label control-label">Last Name</label>
                    <input type="text" class="form-control" value="" id="ln">
                </div>
            </div>

            <div class="col-12 col-sm-10 col-md-6">
                <div class="form-group pmd-textfield ">
                    <label for="fn" class="col-form-label control-label">Salary</label>
                    <input type="text" class="form-control" value="" id="sy">
                </div>
            </div>

            <div class="col-12 col-sm-10 col-md-6">
                <div class="form-group pmd-textfield">
                    <label for="fn" class="col-form-label control-label">Allowance Salary</label>
                    <input type="text" class="form-control" value="" id="as">
                </div>
            </div>

            <div class="col-12 col-sm-10 col-md-6">
                <div class="form-group pmd-textfield">
                    <label for="fn" class="col-form-label control-label">Net Salary</label>
                    <input type="text" class="form-control" value="" id="ns" disabled>
                </div>
            </div>
        </div>
        <button type="submit" class="btn btn-primary mt-3">Submit</button>
    </div>

</asp:Content>
