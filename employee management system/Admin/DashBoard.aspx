<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="DashBoard.aspx.cs" Inherits="employee_management_system.Admin.DashBoard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="width: 95%; border-radius: 20px;" class="ms-4 mt-2 p-2">
        <div class="bg-white text-center pb-1">
            <div class="p-2">
                <h1 class="display-4 mb-0">Dashboard</h1>
            </div>
        </div>
    </div>

    <div class="row ms-4 me-5 mt-2">
        <div class="col-xxl-4 col-md-7">
            <div class="card card-raised bg-primary text-white">
                <div class="card-body px-4">
                    <div class="d-flex justify-content-between align-items-center mb-2">
                        <div class="me-2">
                            <div class="display-6 text-white">101.1K</div>
                            <div class="">Registered Employess</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xxl-4 col-md-7">
            <div class="card card-raised bg-warning text-white">
                <div class="card-body px-4">
                    <div class="d-flex justify-content-between align-items-center mb-2">
                        <div class="me-2">
                            <div class="display-6 text-white">12.2K</div>
                            <div class="card-text">Listed Departments</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xxl-4 col-md-7">
            <div class="card card-raised bg-secondary text-white">
                <div class="card-body px-4">
                    <div class="d-flex justify-content-between align-items-center mb-2">
                        <div class="me-2">
                            <div class="display-6 text-white">5.3K</div>
                            <div class="card-text">Listed Leave Type</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <hr class="bg-black mt-3" style="height: 3px;" />

    <h2 class="text-center">Leaves Details</h2>

    <hr class="bg-black mt-3" style="height: 3px;" />

    <div class="row ms-4 me-5 mt-2">

        <div class="col-xxl-6 col-md-7">
            <div class="card card-raised bg-primary text-white">
                <div class="card-body px-4">
                    <div class="d-flex justify-content-between align-items-center mb-2">
                        <div class="me-2">
                            <div class="display-6 text-white">101.1K</div>
                            <div class="">Registered Employess</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xxl-6 col-md-7">
            <div class="card card-raised bg-warning text-white">
                <div class="card-body px-4">
                    <div class="d-flex justify-content-between align-items-center mb-2">
                        <div class="me-2">
                            <div class="display-6 text-white">12.2K</div>
                            <div class="card-text">Listed Departments</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xxl-6 col-md-7 mt-3">
            <div class="card card-raised bg-secondary text-white">
                <div class="card-body px-4">
                    <div class="d-flex justify-content-between align-items-center mb-2">
                        <div class="me-2">
                            <div class="display-6 text-white">5.3K</div>
                            <div class="card-text">Listed Leave Type</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xxl-6 col-md-7 mt-3">
            <div class="card card-raised bg-secondary text-white">
                <div class="card-body px-4">
                    <div class="d-flex justify-content-between align-items-center mb-2">
                        <div class="me-2">
                            <div class="display-6 text-white">5.3K</div>
                            <div class="card-text">Listed Leave Type</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>

</asp:Content>
