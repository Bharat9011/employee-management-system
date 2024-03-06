<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="addnewtype.aspx.cs" Inherits="employee_management_system.Admin.addnewtype" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="w-50 mt-3 p-4 rounded-2 ms-3 me-3 bg-white">

        <p class="h2 mb-2 text-center">Create Leave Type</p>

        <span class="w-75 bg-black mt-2 mb-2" style="height: 1px; display: block; margin-left: 80px;"></span>

        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Enter Leave</label>
            <asp:TextBox runat="server" class="form-control" ID="LeaveType"/>
        </div>
        <asp:Button runat="server" ID="save" type="submit" class="btn btn-primary" Text="Submit" OnClick="save_Click" />
    </div>

</asp:Content>
