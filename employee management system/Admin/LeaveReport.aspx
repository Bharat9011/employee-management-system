<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="LeaveReport.aspx.cs" Inherits="employee_management_system.Admin.LeaveReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="mt-5 ms-3 me-3 bg-white rounded shadow">

    <div class="h1 mb-3 ps-2 pt-2 text-center">Leave List</div>

    <div class="row p-3">

        <div class="col-12 col-sm-10 col-md-6">
            <div class="form-group pmd-textfield ">
                <label for="fn" class="col-form-label control-label">From Date</label>
                <input type="date" class="form-control" value="" id="fd">
            </div>
        </div>

        <div class="col-12 col-sm-10 col-md-6">
            <div class="form-group pmd-textfield ">
                <label for="fn" class="col-form-label control-label">To Date</label>
                <input type="date" class="form-control" value="" id="td">
            </div>
        </div>

    </div>

    <button type="submit" class="btn btn-primary ms-3 mb-3">Submit</button>

</div>

</asp:Content>
