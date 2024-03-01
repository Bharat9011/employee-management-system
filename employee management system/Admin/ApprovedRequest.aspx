<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ApprovedRequest.aspx.cs" Inherits="employee_management_system.Admin.ApprovedRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="mt-5 ms-3 me-3 bg-white rounded shadow pt-3">
    <div class="h1 text-center mb-3">Approved Request List</div>
    <div class="ps-3 pe-3 pb-3">
        <table class="table border table-bordered table-hover table-striped rounded-bottom">
            <thead>
                <tr>
                    <th scope="col">Sr No</th>
                    <th scope="col">emp id</th>
                    <th scope="col">leave type</th>
                    <th scope="col">from</th>
                    <th scope="col">to</th>
                    <th scope="col">posting date</th>
                    <th scope="col">status</th>
                    <th scope="col">action</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>Otto</td>
                    <td>Otto</td>
                    <td>Otto</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                </tr>
                <tr>
                    <th scope="row">2</th>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>Thornton</td>
                    <td>Thornton</td>
                    <td>Thornton</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td>Larry</td>
                    <td>the Bird</td>
                    <td>the Bird</td>
                    <td>the Bird</td>
                    <td>the Bird</td>
                    <td>the Bird</td>
                    <td>@twitter</td>
                </tr>
            </tbody>
        </table>
    </div>
</div>


</asp:Content>
