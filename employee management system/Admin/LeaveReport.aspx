x<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="LeaveReport.aspx.cs" Inherits="employee_management_system.Admin.LeaveReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="mt-5 ms-3 me-3 bg-white rounded shadow">

        <div class="h1 mb-3 ps-2 pt-2 text-center">Leave List</div>

        <div class="row p-3">

            <div class="col-12 col-sm-10 col-md-6">
                <div class="form-group pmd-textfield ">
                    <label for="fn" class="col-form-label control-label">From Date</label>
                    <asp:TextBox runat="server" TextMode="Date" CssClass="form-control" ID="fd" />
                </div>
            </div>

            <div class="col-12 col-sm-10 col-md-6">
                <div class="form-group pmd-textfield ">
                    <label for="fn" class="col-form-label control-label">To Date</label>
                    <asp:TextBox runat="server" TextMode="Date" CssClass="form-control" ID="td" />
                </div>
            </div>

        </div>

        <asp:Button runat="server" Text="Submit" CssClass="btn btn-primary ms-3 mb-3" OnClick="Unnamed_Click" />


        <div>

            <asp:GridView ID="GridView1" runat="server" CssClass="table table-border table-striped table-hover table-responsive"></asp:GridView>


        </div>

    </div>

</asp:Content>
