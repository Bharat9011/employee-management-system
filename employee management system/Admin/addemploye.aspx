<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="addemploye.aspx.cs" Inherits="employee_management_system.Admin.addemploye" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <!-- Google icon -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <!-- Rubik Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Rubik:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="CSS/bootstrap4-admin-compress.min.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content" class="admin section-container pt-3 ps-3">

        <h1>Add Employee</h1>

        <div class="page-content">
            <div class="pmd-tabs pmd-tabs-dark bg-primary">
                <ul class="nav nav-tabs" role="tablist" style="width: 343.813px;">
                    <li class="nav-item"><a class="nav-link active" href="#about" aria-controls="about" role="tab" data-toggle="tab">About</a></li>
                    <li class="nav-item"><a class="nav-link" href="#salary" aria-controls="salary" role="tab" data-toggle="tab">Salary</a></li>
                </ul>
            </div>
            <!-- Tab panes -->
            <div class="tab-content">
                <!-- About Tab -->

                <div role="tabpanel" class="tab-pane active" id="about">
                    <div class="card pmd-card">
                        <div class="card-body">
                            <!-- Upload Picture -->
                            <div class="details-tab">
                                <h3 class="card-title mb-3">Profile Picture</h3>
                                <div data-provides="fileinput" class="fileinput fileinput-new">
                                    <div data-trigger="fileinput" class="fileinput-preview thumbnail img-fluid rounded-circle mb-0">
                                        <asp:Image runat="server" src="images/avtar-b.jpg" Width="200" alt="profile avatar" />
                                    </div>
                                    <div class="action-button">
                                        <span class="btn btn-secondary pmd-btn-fab btn-sm pmd-btn-raised btn-file pmd-ripple-effect">
                                            <span class="fileinput-new"><i class="material-icons pmd-xs">add</i></span>
                                            <span class="fileinput-exists"><i class="material-icons pmd-xs">mode_edit</i></span>
                                            <asp:FileUpload ID="pic" src="images/avtar-b.jpg" runat="server" Width="200" alt="profile avatar" />

                                        </span>
                                        <a data-dismiss="fileinput" class="btn btn-danger btn-sm pmd-btn-fab pmd-ripple-effect pmd-btn-raised btn-file fileinput-exists" href="javascript:void(0);"><i class="material-icons pmd-sm">close</i></a>
                                    </div>
                                </div>
                            </div>

                            <!-- Basic Information -->
                            <div class="details-tab">
                                <h3 class="card-title">Basic Information</h3>
                                <div class="row">
                                    <div class="col-12 col-sm-6 col-md-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label for="fn" class="col-form-label control-label">First Name</label>
                                            <asp:TextBox runat="server" ID="fn" TextMode="SingleLine" CssClass="form-control" />
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-6 col-md-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label for="ln" class="col-form-label control-label">Last Name</label>
                                            <asp:TextBox runat="server" ID="ln" TextMode="SingleLine" CssClass="form-control" />
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-6 col-md-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label for="mn" class="col-form-label control-label">Middle Name</label>
                                            <asp:TextBox runat="server" ID="mn" TextMode="SingleLine" CssClass="form-control" />
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-6 col-md-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label for="phone" class="col-form-label control-label">Phone</label>
                                            <asp:TextBox runat="server" ID="phone" TextMode="Phone" CssClass="form-control" />
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-6 col-md-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label for="personal-email" class="col-form-label control-label">Personal Email</label>
                                            <asp:TextBox runat="server" ID="personal_email" TextMode="Email" CssClass="form-control" />
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-6 col-md-3">
                                        <div class="form-group pmd-textfield">
                                            <label for="dob" class="col-form-label control-label">Date of Birth</label>
                                            <asp:TextBox runat="server" ID="birthdate_picker" TextMode="Date" CssClass="form-control" />
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-6 col-md-3">
                                        <label for="email" class="d-block title-label">Gender</label>
                                        <asp:RadioButtonList ID="gender" runat="server">
                                            <asp:ListItem class="radio-inline" Value="male" Text="Male" />
                                            <asp:ListItem class="radio-inline" Value="female" Text="Female" />
                                        </asp:RadioButtonList>
                                    </div>
                                    <div class="col-12 col-sm-6 col-md-3">
                                        <label for="marital" class="d-block title-label">Marital Status</label>
                                        <asp:RadioButtonList ID="Marital_Status" runat="server">
                                            <asp:ListItem class="radio-inline" Value="Married" Text="Married" />
                                            <asp:ListItem class="radio-inline" Value="Unmarried" Text="Unmarried" />
                                        </asp:RadioButtonList>
                                    </div>

                                    <div class="col-12 col-sm-6 col-md-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                            <label for="dob" class="col-form-label control-label">Password</label>
                                            <asp:TextBox runat="server" ID="password" TextMode="Password" CssClass="form-control" />
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Employee Previous job Information -->
                            <div class="details-tab">
                                <h3 class="card-title">Employee Previous job Information</h3>
                                <div class="row">
                                    <div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label for="id" class="col-form-label control-label">Employee Enrollment ID</label>
                                            <asp:TextBox runat="server" ID="EnrollmentID" TextMode="SingleLine" CssClass="form-control" />
                                        </div>
                                    </div>

                                    <div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label for="id" class="col-form-label control-label">Employee Companies Name</label>
                                            <asp:TextBox runat="server" ID="CompaniesName" TextMode="SingleLine" CssClass="form-control" />
                                        </div>
                                    </div>

                                    <div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label for="email" class="col-form-label control-label">Company Email</label>
                                            <asp:TextBox runat="server" ID="email" TextMode="Email" CssClass="form-control" />
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label for="advance_department">Department</label>
                                            <asp:DropDownList ID="advance_department" class="form-control" runat="server">
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem>Design</asp:ListItem>
                                                <asp:ListItem>Development</asp:ListItem>
                                                <asp:ListItem>Marketing</asp:ListItem>
                                                <asp:ListItem>Sales</asp:ListItem>
                                                <asp:ListItem>Quality Assurance</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label for="advance_designation">Designation</label>

                                            <asp:DropDownList ID="advance_designation" class="form-control" runat="server">
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem>UI / UX Designer</asp:ListItem>
                                                <asp:ListItem>Marketing Manager</asp:ListItem>
                                                <asp:ListItem>PHP Developer</asp:ListItem>
                                                <asp:ListItem>Mobile App Developer</asp:ListItem>
                                                <asp:ListItem>Sales and Marketing Head</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield">
                                            <label for="doj" class="col-form-label control-label">Date of Joining</label>
                                            <asp:TextBox runat="server" ID="joindate_picker" TextMode="Date" CssClass="form-control" />
                                        </div>
                                    </div>

                                    <div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield">
                                            <label for="doj" class="col-form-label control-label">Date of leaving</label>
                                            <asp:TextBox runat="server" ID="enddate_picker" TextMode="Date" CssClass="form-control" />
                                        </div>
                                    </div>

                                    <div class="col-12 col-md-6 col-lg-6">
                                        <label for="type" class="d-block title-label">Type of Employee</label>
                                        <asp:RadioButtonList ID="Typeofemployee" runat="server">
                                            <asp:ListItem class="radio-inline" Value="Full Time" Text="Full Time" />
                                            <asp:ListItem class="radio-inline" Value="Part Time" Text="Part Time" />
                                        </asp:RadioButtonList>
                                    </div>
                                </div>
                            </div>

                            <!-- Contact Information -->
                            <div class="details-tab">
                                <h3 class="card-title">Contact Information</h3>
                                <div class="row">
                                    <div class="col-12 col-md-6 col-lg-4">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label for="addline1" class="col-form-label control-label">Address Line 1</label>
                                            <asp:TextBox runat="server" ID="addLine1" TextMode="SingleLine" CssClass="form-control" />
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-4">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label for="addline2" class="col-form-label control-label">Address Line 2</label>
                                            <asp:TextBox runat="server" ID="addLine2" TextMode="SingleLine" CssClass="form-control" />
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-4">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label for="city" class="col-form-label control-label">City</label>
                                            <asp:TextBox runat="server" ID="city" TextMode="SingleLine" CssClass="form-control" />
                                        </div>

                                    </div>
                                    <div class="col-12 col-md-6 col-lg-4">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label for="state">State</label>
                                            <asp:TextBox runat="server" ID="state" TextMode="SingleLine" CssClass="form-control" />
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-4">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                            <label for="zipcode" class="col-form-label control-label">Zip Code</label>
                                            <asp:TextBox runat="server" ID="zipcode" TextMode="SingleLine" CssClass="form-control" />
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-4">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label for="country">Country</label>
                                            <asp:TextBox runat="server" ID="country" TextMode="SingleLine" CssClass="form-control" />
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Education Information -->
                            <div class="details-tab">
                                <h3 class="card-title">Education</h3>
                                <div class="first-edu-form">
                                    <div class="row">
                                        <div class="col-12 col-md-6 col-lg-4">
                                            <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                                <label for="degree">Degree</label>
                                                <asp:TextBox runat="server" ID="degree" TextMode="SingleLine" CssClass="form-control" />
                                            </div>
                                        </div>
                                        <div class="col-12 col-md-6 col-lg-4">
                                            <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                                <label for="specialization">Specialization</label>
                                                <asp:TextBox runat="server" ID="specialization" TextMode="SingleLine" CssClass="form-control" />
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group pmd-textfield">
                                                <label class="control-label" for="passing-year">Passing Year</label>
                                                <asp:TextBox runat="server" ID="passing_year" TextMode="SingleLine" CssClass="form-control" />
                                            </div>
                                        </div>
                                        <div class="col-md-8 col-lg-6">
                                            <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                                <label for="institute">Institute</label>
                                                <asp:TextBox runat="server" ID="institute" TextMode="SingleLine" CssClass="form-control" />
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-3">
                                            <div class="form-group pmd-textfield">
                                                <label class="control-label" for="datepicker-start">Start Date</label>
                                                <asp:TextBox runat="server" ID="datepicker_start" TextMode="Date" CssClass="form-control" />
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-3">
                                            <div class="form-group pmd-textfield">
                                                <label class="control-label" for="datepicker-end">End Date</label>
                                                <asp:TextBox runat="server" ID="datepicker_end" TextMode="Date" CssClass="form-control" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Experience Information -->
                            <div class="details-tab">
                                <h3 class="card-title">Experience</h3>
                                <div class="first-exp-form">
                                    <div class="row">
                                        <div class="col-12 col-md-6">
                                            <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                                <label for="organization">Organization</label>
                                                <asp:TextBox runat="server" ID="organization" TextMode="SingleLine" CssClass="form-control" />
                                            </div>
                                        </div>
                                        <div class="col-12 col-md-6">
                                            <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                                <label for="exp_esignation">Designation</label>
                                                <asp:TextBox runat="server" ID="exp_designation" TextMode="SingleLine" CssClass="form-control" />
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-6 col-lg-3">
                                            <div class="form-group pmd-textfield">
                                                <label class="control-label" for="exp-datepicker-start">Start Date</label>
                                                <asp:TextBox runat="server" ID="exp_datapicker_start" TextMode="Date" CssClass="form-control" />
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-6 col-lg-3">
                                            <div class="form-group pmd-textfield">
                                                <label class="control-label" for="exp-datepicker-end">End Date</label>
                                                <asp:TextBox runat="server" ID="exp_datepicker_end" TextMode="Date" CssClass="form-control" />
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-12 col-lg-5">
                                            <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                                <label for="start_salary">Salary</label>
                                                <asp:TextBox runat="server" ID="start_salary" TextMode="SingleLine" CssClass="form-control" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="card-footer pmd-card-border">
                            <asp:Button runat="server" CssClass="btn btn-primary pmd-ripple-effect pmd-btn-raised" ID="saveInfo" Text="Save" OnClick="saveInfo_Click" />
                        </div>
                    </div>
                </div>

                <!-- Salary Tab -->
                <div role="tabpanel" class="tab-pane" id="salary">
                    <!-- Salary Form -->
                    <div class="card pmd-card">
                        <div class="card-body">
                            <h3 class="card-title">Salary Information</h3>
                            <div class="details-tab">
                                <div class="row">
                                    <div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label for="hourly" class="col-form-label control-label">Actual Hourly Salary</label>
                                            <asp:TextBox runat="server" ID="hourly" TextMode="SingleLine" CssClass="form-control" />
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label for="monthly" class="col-form-label control-label">Total Monthly Salary</label>
                                            <asp:TextBox runat="server" ID="monthly" TextMode="SingleLine" CssClass="form-control" />
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                            <label for="annual" class="col-form-label control-label">Annual Gross Salary</label>
                                            <asp:TextBox runat="server" ID="annual" TextMode="SingleLine" CssClass="form-control" />
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                            <label for="federal" class="col-form-label control-label">Federal Withholding</label>
                                            <asp:TextBox runat="server" ID="federal" TextMode="SingleLine" CssClass="form-control" />
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label for="medicare" class="col-form-label control-label">Medicare</label>
                                            <asp:TextBox runat="server" ID="medicare" TextMode="SingleLine" CssClass="form-control" />
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label for="social" class="col-form-label control-label">Social Security</label>
                                            <asp:TextBox runat="server" ID="social" TextMode="SingleLine" CssClass="form-control" />
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label for="allowances" class="col-form-label control-label">Allowances</label>
                                            <asp:TextBox runat="server" ID="allowances" TextMode="SingleLine" CssClass="form-control" />
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label for="add-allowances" class="col-form-label control-label">Add Allowances</label>
                                            <asp:TextBox runat="server" ID="add_allowances" TextMode="SingleLine" CssClass="form-control" />
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label for="net-pay" class="col-form-label control-label">Net Pay</label>
                                            <asp:TextBox runat="server" ID="net_pay" TextMode="SingleLine" CssClass="form-control" />
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12 mt-3">
                                        <asp:Button runat="server" CssClass="btn btn-primary pmd-ripple-effect pmd-btn-raised" ID="SaveS" Text="Save" OnClick="SaveS_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="js/bootstrap4-admin-compress.min.js"></script>
</asp:Content>
