<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeFile="DepartmentList.aspx.cs" Inherits="employee_management_system.Admin.DepartmentList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mt-5 ms-3 me-3 pt-3 bg-white rounded shadow">

        <div class="h1 text-center mb-3">Depatment List</div>

        <div class="p-3">

            <table class="table border table-bordered table-hover table-striped rounded-bottom">
                <thead>
                    <tr>
                        <th scope="col">sr. no</th>
                        <th scope="col">Daprtment name</th>
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
                            <button type="submit" class="btn btn-danger ms-3 mb-3">Delete</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>
