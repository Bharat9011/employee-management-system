<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="DashBoard.aspx.cs" Inherits="employee_management_system.Admin.DashBoard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="width: 95%; border-radius: 20px;" class="ms-4 mt-2 p-2">
        <div class="bg-white text-center pb-1">
            <div class="col">
                <h1 class="display-4 mb-0">Dashboard</h1>
                <div class="text-muted">Sales overview &amp; summary</div>
            </div>
        </div>
    </div>

    <div class="row ms-1 me-1 mt-2">
        <div class="col-xxl-3">
            <div class="card card-raised bg-primary text-white">
                <div class="card-body px-4">
                    <div class="d-flex justify-content-between align-items-center mb-2">
                        <div class="me-2">
                            <div class="display-5 text-white">101.1K</div>
                            <div class="card-text">Downloads</div>
                        </div>
                        <div class="icon-circle bg-white-50 text-primary"><i class="material-icons">download</i></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xxl-3 col-md-6">
            <div class="card card-raised bg-warning text-white">
                <div class="card-body px-4">
                    <div class="d-flex justify-content-between align-items-center mb-2">
                        <div class="me-2">
                            <div class="display-5 text-white">12.2K</div>
                            <div class="card-text">Purchases</div>
                        </div>
                        <div class="icon-circle bg-white-50 text-warning"><i class="material-icons">storefront</i></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xxl-3">
            <div class="card card-raised bg-secondary text-white">
                <div class="card-body px-4">
                    <div class="d-flex justify-content-between align-items-center mb-2">
                        <div class="me-2">
                            <div class="display-5 text-white">5.3K</div>
                            <div class="card-text">Customers</div>
                        </div>
                        <div class="icon-circle bg-white-50 text-secondary"><i class="material-icons">people</i></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xxl-3">
            <div class="card card-raised bg-info text-white">
                <div class="card-body px-4">
                    <div class="d-flex justify-content-between align-items-center mb-2">
                        <div class="">
                            <div class="display-5 text-white">7</div>
                            <div class="card-text">Channels</div>
                        </div>
                        <div class="icon-circle bg-white-50 text-info"><i class="material-icons">devices</i></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
