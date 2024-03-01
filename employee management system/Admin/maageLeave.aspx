<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="maageLeave.aspx.cs" Inherits="employee_management_system.Admin.maageLeave" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="mt-5 ms-3 me-3 bg-white rounded shadow">

        <div class="h1 mb-3 ps-2 pt-2 text-center">Leave Type List</div>

        <div class="p-3">

            <table class="table border table-bordered table-hover table-striped rounded-bottom">
                <thead>
                    <tr>
                        <th scope="col">Sr.No</th>
                        <th scope="col">Type of Leave</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>Mark</td>
                        <td>
                            <button type="submit" class="btn btn-success ms-3 mb-3">Edit</button>
                            <button type="submit" class="btn btn-danger ms-3 mb-3">Delete</button>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>Jacob</td>
                        <td>
                            <button type="submit" class="btn btn-success ms-3 mb-3">Edit</button>
                            <button type="submit" class="btn btn-danger ms-3 mb-3">Delete</button>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>Larry</td>
                        <td>
                            <button type="submit" class="btn btn-success ms-3 mb-3">Edit</button>
                            <button type="submit" class="btn btn-danger ms-3 mb-3">Submit</button>
                        </td>
                    </tr>
                </tbody>
            </table>

        </div>
    </div>

</asp:Content>
