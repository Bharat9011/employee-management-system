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
                                            <img src="images/avtar-b.jpg" width="200" alt="profile avatar">
                                        </div>
                                        <div class="action-button">
                                            <span class="btn btn-secondary pmd-btn-fab btn-sm pmd-btn-raised btn-file pmd-ripple-effect">
                                                <span class="fileinput-new"><i class="material-icons pmd-xs">add</i></span>
                                                <span class="fileinput-exists"><i class="material-icons pmd-xs">mode_edit</i></span>
                                                <input type="file" name="...">
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
                                                <input type="text" class="form-control" value="" id="fn">
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-6 col-md-3">
                                            <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                                <label for="ln" class="col-form-label control-label">Last Name</label>
                                                <input type="text" class="form-control" value="" id="ln">
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-6 col-md-3">
                                            <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                                <label for="mn" class="col-form-label control-label">Middle Name</label>
                                                <input type="text" class="form-control" value="" id="mn">
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-6 col-md-3">
                                            <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                                <label for="phone" class="col-form-label control-label">Phone</label>
                                                <input type="tel" class="form-control" value="" id="phone">
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-6 col-md-3">
                                            <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                                <label for="personal-email" class="col-form-label control-label">Personal Email</label>
                                                <input type="email" class="form-control" id="personal-email" value="">
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-6 col-md-3">
                                            <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                                <label for="dob" class="col-form-label control-label">Date of Birth</label>
                                                <input type="text" class="form-control" id="birthdate-picker">
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-6 col-md-3">
                                            <label for="email" class="d-block title-label">Gender</label>
                                            <div class="custom-control custom-radio pmd-radio custom-control-inline">
                                                <input type="radio" id="male" name="gender" class="custom-control-input">
                                                <label class="custom-control-label pmd-radio-ripple-effect" for="male">Male</label>
                                            </div>
                                            <div class="custom-control custom-radio pmd-radio custom-control-inline">
                                                <input type="radio" id="female" name="gender" class="custom-control-input">
                                                <label class="custom-control-label pmd-radio-ripple-effect" for="female">Female</label>
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-6 col-md-3">
                                            <label for="marital" class="d-block title-label">Marital Status</label>
                                            <div class="custom-control custom-radio pmd-radio custom-control-inline">
                                                <input type="radio" id="married" name="marital" class="custom-control-input">
                                                <label class="custom-control-label pmd-radio-ripple-effect" for="married">Married</label>
                                            </div>
                                            <div class="custom-control custom-radio pmd-radio custom-control-inline">
                                                <input type="radio" id="unmarried" name="marital" class="custom-control-input">
                                                <label class="custom-control-label pmd-radio-ripple-effect" for="unmarried">Unmarried</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Employee Information -->
                                <div class="details-tab">
                                    <h3 class="card-title">Employee Information</h3>
                                    <div class="row">
                                        <div class="col-12 col-md-6 col-lg-3">
                                            <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                                <label for="id" class="col-form-label control-label">Employee Enrollment ID</label>
                                                <input type="text" class="form-control" value="" id="id">
                                            </div>
                                        </div>
                                        <div class="col-12 col-md-6 col-lg-3">
                                            <div class="form-group pmd-textfield">
                                                <label for="doj" class="col-form-label control-label">Date of Joining</label>
                                                <input type="date" class="form-control" id="joindate-picker">
                                            </div>
                                        </div>
                                        <div class="col-12 col-md-6 col-lg-3">
                                            <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                                <label for="email" class="col-form-label control-label">Company Email</label>
                                                <input type="email" class="form-control" value="" id="email">
                                            </div>
                                        </div>
                                        <div class="col-12 col-md-6 col-lg-3">
                                            <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                                <label for="advance_department">Department</label>
                                                <select name="select" id="advance_department" class="form-control">
                                                    <option></option>
                                                    <option>Design</option>
                                                    <option>Development</option>
                                                    <option>Marketing</option>
                                                    <option>Sales</option>
                                                    <option>Quality Assurance</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-12 col-md-6 col-lg-3">
                                            <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                                <label for="advance_designation">Designation</label>
                                                <select name="select" id="advance_designation" class="form-control">
                                                    <option></option>
                                                    <option>UI / UX Designer</option>
                                                    <option>Marketing Manager</option>
                                                    <option>PHP Developer</option>
                                                    <option>Mobile App Developer</option>
                                                    <option>Sales and Marketing Head</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-12 col-md-6 col-lg-3">
                                            <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                                <label for="reporting">Reporting Employee</label>
                                                <select name="select" id="reporting" class="form-control">
                                                    <option></option>
                                                    <option>Darlene C. Larsen</option>
                                                    <option>John L. Wade</option>
                                                    <option>Lolita M. Bradley</option>
                                                    <option>Kenneth R. Brooks</option>
                                                    <option>Joseph S. Richardson</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-12 col-md-6 col-lg-6">
                                            <label for="type" class="d-block title-label">Type of Employee</label>
                                            <div class="custom-control custom-radio pmd-radio custom-control-inline">
                                                <input type="radio" id="full-time" name="type" class="custom-control-input">
                                                <label class="custom-control-label pmd-radio-ripple-effect" for="full-time">Full Time</label>
                                            </div>
                                            <div class="custom-control custom-radio pmd-radio custom-control-inline">
                                                <input type="radio" id="part-time" name="type" class="custom-control-input">
                                                <label class="custom-control-label pmd-radio-ripple-effect" for="part-time">Part Time</label>
                                            </div>
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
                                                <input type="text" class="form-control" value="" id="addline1">
                                            </div>
                                        </div>
                                        <div class="col-12 col-md-6 col-lg-4">
                                            <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                                <label for="addline2" class="col-form-label control-label">Address Line 2</label>
                                                <input type="text" class="form-control" id="addline2" value="">
                                            </div>
                                        </div>
                                        <div class="col-12 col-md-6 col-lg-4">
                                            <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                                <label for="city" class="col-form-label control-label">City</label>
                                                <input type="text" class="form-control" value="" id="city">
                                            </div>
                                        </div>
                                        <div class="col-12 col-md-6 col-lg-4">
                                            <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                                <label for="state">State</label>
                                                <select name="select" id="state" class="form-control">
                                                    <option></option>
                                                    <option>Texas</option>
                                                    <option>Georgia</option>
                                                    <option>Washington</option>
                                                    <option>Florida</option>
                                                    <option>Pennslyvania</option>
                                                    <option>New York</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-12 col-md-6 col-lg-4">
                                            <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                                <label for="zipcode" class="col-form-label control-label">Zip Code</label>
                                                <input type="text" class="form-control" value="" id="zipcode">
                                            </div>
                                        </div>
                                        <div class="col-12 col-md-6 col-lg-4">
                                            <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                                <label for="country">Country</label>
                                                <select name="select" id="country" class="form-control">
                                                    <option></option>
                                                    <option>United States</option>
                                                    <option>India</option>
                                                    <option>Australia</option>
                                                    <option>Germany</option>
                                                    <option>Japan</option>
                                                </select>
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
                                                    <select name="degree" id="degree" class="form-control">
                                                        <option></option>
                                                        <option>Bachelor of Engineering</option>
                                                        <option>Masters of Engineering</option>
                                                        <option>Bachelor of Computer Applications</option>
                                                        <option>Master of Computer Applications</option>
                                                        <option>Bachelors of Business Administration</option>
                                                        <option>Masters of Business Administration</option>
                                                        <option>Bachelor of Arts</option>
                                                        <option>Bachelor of Commerce</option>
                                                        <option>Masters of Commerce</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-12 col-md-6 col-lg-4">
                                                <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                                    <label for="specialization">Specialization</label>
                                                    <select name="specialization" id="specialization" class="form-control">
                                                        <option></option>
                                                        <option>Computer Science</option>
                                                        <option>Information Technology</option>
                                                        <option>Mechanical Engineering</option>
                                                        <option>Automobile Engineering</option>
                                                        <option>Accounts</option>
                                                        <option>Finance</option>
                                                        <option>Marketing</option>
                                                        <option>Human Resource</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group pmd-textfield">
                                                    <label class="control-label" for="passing-year">Passing Year</label>
                                                    <input type="date" class="form-control" id="passing-year">
                                                </div>
                                            </div>
                                            <div class="col-md-8 col-lg-6">
                                                <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                                    <label for="institute">Institute</label>
                                                    <input type="text" class="mat-input form-control" id="institute" value="">
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-lg-3">
                                                <div class="form-group pmd-textfield">
                                                    <label class="control-label" for="datepicker-start">Start Date</label>
                                                    <input type="date" class="form-control" id="datepicker-start">
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-lg-3">
                                                <div class="form-group pmd-textfield">
                                                    <label class="control-label" for="datepicker-end">End Date</label>
                                                    <input type="date" class="form-control" id="datepicker-end">
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
                                                    <input type="text" class="mat-input form-control" id="organization" value="">
                                                </div>
                                            </div>
                                            <div class="col-12 col-md-6">
                                                <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                                    <label for="exp_esignation">Designation</label>
                                                    <input type="text" class="mat-input form-control" id="exp_esignation" value="">
                                                </div>
                                            </div>
                                            <div class="col-12 col-sm-6 col-lg-3">
                                                <div class="form-group pmd-textfield">
                                                    <label class="control-label" for="exp-datepicker-start">Start Date</label>
                                                    <input type="date" class="form-control" id="exp-datepicker-start">
                                                </div>
                                            </div>
                                            <div class="col-12 col-sm-6 col-lg-3">
                                                <div class="form-group pmd-textfield">
                                                    <label class="control-label" for="exp-datepicker-end">End Date</label>
                                                    <input type="date" class="form-control" id="exp-datepicker-end">
                                                </div>
                                            </div>
                                            <div class="col-12 col-sm-12 col-lg-5">
                                                <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                                    <label for="start_salary">Salary</label>
                                                    <input type="text" class="mat-input form-control" id="start_salary" value="">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <div class="card-footer pmd-card-border">
                                <button class="btn pmd-ripple-effect btn-primary pmd-btn-raised" type="button">Save</button>
                                <button class="btn pmd-ripple-effect btn-outline-secondary" type="button">Reset</button>
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
                                <form>
                                    <div class="row">
                                        <div class="col-12 col-md-6 col-lg-3">
                                            <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                                <label for="hourly" class="col-form-label control-label">Actual Hourly Salary</label>
                                                <input type="text" class="form-control" value="" id="hourly">
                                            </div>
                                        </div>
                                        <div class="col-12 col-md-6 col-lg-3">
                                            <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                                <label for="monthly" class="col-form-label control-label">Total Monthly Salary</label>
                                                <input type="text" class="form-control" value="" id="monthly">
                                            </div>
                                        </div>
                                        <div class="col-12 col-md-6 col-lg-3">
                                            <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                                <label for="annual" class="col-form-label control-label">Annual Gross Salary</label>
                                                <input type="text" class="form-control" value="" id="annual">
                                            </div>
                                        </div>
                                        <div class="col-12 col-md-6 col-lg-3">
                                            <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                                <label for="federal" class="col-form-label control-label">Federal Withholding</label>
                                                <input type="text" class="form-control" value="" id="federal">
                                            </div>
                                        </div>
                                        <div class="col-12 col-md-6 col-lg-3">
                                            <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                                <label for="medicare" class="col-form-label control-label">Medicare</label>
                                                <input type="text" class="form-control" value="" id="medicare">
                                            </div>
                                        </div>
                                        <div class="col-12 col-md-6 col-lg-3">
                                            <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                                <label for="social" class="col-form-label control-label">Social Security</label>
                                                <input type="text" class="form-control" value="" id="social">
                                            </div>
                                        </div>
                                        <div class="col-12 col-md-6 col-lg-3">
                                            <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                                <label for="allowances" class="col-form-label control-label">Allowances</label>
                                                <input type="text" class="form-control" value="" id="allowances">
                                            </div>
                                        </div>
                                        <div class="col-12 col-md-6 col-lg-3">
                                            <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                                <label for="add-allowances" class="col-form-label control-label">Add Allowances</label>
                                                <input type="text" class="form-control" value="" id="add-allowances">
                                            </div>
                                        </div>
                                        <div class="col-12 col-md-6 col-lg-3">
                                            <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                                <label for="net-pay" class="col-form-label control-label">Net Pay</label>
                                                <input type="text" class="form-control" value="" id="net-pay" disabled>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12 mt-3">
                                            <button class="btn btn-primary pmd-ripple-effect pmd-btn-raised" type="submit">Save</button>
                                            <button class="btn btn-outline-secondary pmd-ripple-effect" type="submit">Reset</button>
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
