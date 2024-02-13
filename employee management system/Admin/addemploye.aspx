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
                    <li class="nav-item"><a class="nav-link" href="#documents" aria-controls="documents" role="tab" data-toggle="tab">Documents</a></li>
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
                                        <div class="col-12 col-md-6 col-lg-4">
                                            <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                                <label for="fb" class="col-form-label control-label">Facebook Profile</label>
                                                <input type="url" class="form-control" value="" id="fb">
                                            </div>
                                        </div>
                                        <div class="col-12 col-md-6 col-lg-4">
                                            <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                                <label for="linkedin" class="col-form-label control-label">LinkedIn Profile</label>
                                                <input type="url" class="form-control" value="" id="linkedin">
                                            </div>
                                        </div>
                                        <div class="col-12 col-md-6 col-lg-4">
                                            <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                                <label for="twitter" class="col-form-label control-label">Twitter Profile</label>
                                                <input type="url" class="form-control" value="" id="twitter">
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                                <label>Description</label>
                                                <textarea class="form-control"></textarea>
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
                                            <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                                <label for="doj" class="col-form-label control-label">Date of Joining</label>
                                                <input type="text" class="form-control" id="joindate-picker">
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
                                                <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                                    <label class="control-label" for="passing-year">Passing Year</label>
                                                    <input type="text" class="form-control" id="passing-year">
                                                </div>
                                            </div>
                                            <div class="col-md-8 col-lg-6">
                                                <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                                    <label for="institute">Institute</label>
                                                    <input type="text" class="mat-input form-control" id="institute" value="">
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-lg-3">
                                                <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                                    <label class="control-label" for="datepicker-start">Start Date</label>
                                                    <input type="text" class="form-control" id="datepicker-start">
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-lg-3">
                                                <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                                    <label class="control-label" for="datepicker-end">End Date</label>
                                                    <input type="text" class="form-control" id="datepicker-end">
                                                </div>
                                            </div>
                                            <div class="col-md-6 mb-2">
                                                <label for="score">Score</label>
                                                <div id="pmd-slider-tooltip" class="pmd-range-slider pmd-range-tooltip"></div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Form to add more education details -->
                                    <div class="add-more-edu-form">
                                        <div class="row">
                                            <div class="col-12 col-md-6 col-lg-4">
                                                <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                                    <label for="degree">Degree</label>
                                                    <select name="degree" id="add-degree" class="form-control">
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
                                                    <select name="specialization" id="add-specialization" class="form-control">
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
                                                <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                                    <label class="control-label" for="passing-year">Passing Year</label>
                                                    <input type="text" class="form-control" id="add-passing-year">
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                                    <label for="institute">Institute</label>
                                                    <input type="text" class="mat-input form-control" id="add-institute" value="">
                                                </div>
                                            </div>
                                            <div class="col-lg-3">
                                                <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                                    <label class="control-label" for="datepicker-start">Start Date</label>
                                                    <input type="text" class="form-control" id="add-edu-datepicker-start">
                                                </div>
                                            </div>
                                            <div class="col-lg-3">
                                                <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                                    <label class="control-label" for="datepicker-end">End Date</label>
                                                    <input type="text" class="form-control" id="add-edu-datepicker-end">
                                                </div>
                                            </div>
                                            <div class="col-md-12 mb-2">
                                                <label for="score">Score</label>
                                                <div id="add-pmd-slider-tooltip" class="pmd-range-slider pmd-range-tooltip"></div>
                                            </div>
                                        </div>
                                    </div>

                                    <button class="btn pmd-ripple-effect btn-dark mb-2" type="button" id="education-add">Add</button>
                                    <button class="btn pmd-ripple-effect btn-dark mt-2" type="button" id="education-add-more">Add Education</button>

                                    <!-- Education View Card After Save -->
                                    <div class="edu-view-card">
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <div class="media media-card">
                                                    <i class="material-icons pmd-icon-lg md-dark mr-3 align-self-start">
                                                        <svg x="0px" y="0px" viewBox="164 164 72 72" enable-background="new 164 164 72 72" xml:space="preserve">
                                                            <g>
                                                                <path d="M229.152,194.031v-9.361l-28.862-16.544l-28.862,16.544v9.361h4.644v27.937h-5.224v10.158h58.159v-10.158h-4.426v-27.937
                                                                H229.152z M226.104,224.87v4.354H173.75v-4.354H226.104z M179.057,221.968v-27.937h8.127v27.937H179.057z M190.39,221.968v-27.937
                                                                h8.127v27.937H190.39z M201.864,221.968v-27.937h8.127v27.937H201.864z M213.56,221.968v-27.937h8.127v27.937H213.56z
                                                                 M174.331,191.128v-4.644l25.959-15.093l25.958,15.093v4.644H174.331z" />
                                                                <path d="M200.291,177.342c-2.846,0-5.152,2.307-5.152,5.152c0,2.846,2.306,5.152,5.152,5.152c2.845,0,5.152-2.306,5.152-5.152
                                                                C205.442,179.648,203.136,177.342,200.291,177.342z M200.291,184.743c-1.243,0-2.25-1.007-2.25-2.25c0-1.243,1.007-2.25,2.25-2.25
                                                                s2.25,1.007,2.25,2.25C202.54,183.736,201.533,184.743,200.291,184.743z" />
                                                            </g>
                                                        </svg>
                                                    </i>
                                                    <div class="media-body">
                                                        <h4 class="media-title">University of Pennsylvania</h4>
                                                        <p class="card-subtitle">2016 - 2018</p>
                                                        <p>Maters of Engineering, Computer Engineering, 8.5</p>
                                                    </div>
                                                    <button data-target="#edit-dialog" data-toggle="modal" class="btn pmd-ripple-effect btn-dark btn-sm pmd-btn-fab pmd-btn-flat ml-auto" type="button"><i class="material-icons pmd-icon-xs">edit</i></button>
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
                                                <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                                    <label class="control-label" for="exp-datepicker-start">Start Date</label>
                                                    <input type="text" class="form-control" id="exp-datepicker-start">
                                                </div>
                                            </div>
                                            <div class="col-12 col-sm-6 col-lg-3">
                                                <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                                    <label class="control-label" for="exp-datepicker-end">End Date</label>
                                                    <input type="text" class="form-control" id="exp-datepicker-end">
                                                </div>
                                            </div>
                                            <div class="col-12 col-sm-6 col-lg-3">
                                                <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                                    <label for="start_salary">Start Salary</label>
                                                    <input type="text" class="mat-input form-control" id="start_salary" value="">
                                                </div>
                                            </div>
                                            <div class="col-12 col-sm-6 col-lg-3">
                                                <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                                    <label for="end_salary">End Salary</label>
                                                    <input type="text" class="mat-input form-control" id="end_salary" value="">
                                                </div>
                                            </div>
                                            <div class="col-6">
                                                <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                                    <label>Reason</label>
                                                    <textarea class="form-control"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Add More Experince Form -->
                                    <div class="add-more-exp-form">
                                        <div class="row">
                                            <div class="col-12 col-md-6">
                                                <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                                    <label for="add-more-organization">Organization</label>
                                                    <input type="text" class="mat-input form-control" id="add-more-organization" value="">
                                                </div>
                                            </div>
                                            <div class="col-12 col-md-6">
                                                <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                                    <label for="add-more-exp_esignation">Designation</label>
                                                    <input type="text" class="mat-input form-control" id="add-more-exp_esignation" value="">
                                                </div>
                                            </div>
                                            <div class="col-12 col-sm-6 col-lg-3">
                                                <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                                    <label class="control-label" for="add-exp-datepicker-start">Start Date</label>
                                                    <input type="text" class="form-control" id="add-exp-datepicker-start">
                                                </div>
                                            </div>
                                            <div class="col-12 col-sm-6 col-lg-3">
                                                <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                                    <label class="control-label" for="add-exp-datepicker-end">End Date</label>
                                                    <input type="text" class="form-control" id="add-exp-datepicker-end">
                                                </div>
                                            </div>
                                            <div class="col-12 col-sm-6 col-lg-3">
                                                <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                                    <label for="add-start_salary">Start Salary</label>
                                                    <input type="text" class="mat-input form-control" id="add-start_salary" value="">
                                                </div>
                                            </div>
                                            <div class="col-12 col-sm-6 col-lg-3">
                                                <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                                    <label for="add-end_salary">End Salary</label>
                                                    <input type="text" class="mat-input form-control" id="add-end_salary" value="">
                                                </div>
                                            </div>
                                            <div class="col-6">
                                                <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                                    <label>Reason</label>
                                                    <textarea class="form-control"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <button class="btn pmd-ripple-effect btn-dark" type="button" id="exp-add">Add</button>
                                    <button class="btn pmd-ripple-effect btn-dark mt-2" type="button" id="exp-add-more">Add Experience</button>

                                    <!-- Experience View Card After Save -->
                                    <div class="experience-view-card">
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <div class="media media-card">
                                                    <i class="material-icons pmd-icon-lg md-dark mr-3 align-self-start">
                                                        <svg version="1.1" x="0px" y="0px" viewBox="164 164 72 72" enable-background="new 164 164 72 72" xml:space="preserve">
                                                            <path d="M227.199,187.72H202.72V173.8c0-2.56-2.08-4.8-4.8-4.8H172.8c-2.72,0-4.8,2.24-4.8,4.8v54.4c0,2.72,2.08,4.8,4.8,4.8h54.399
                                                            c2.721,0,4.801-2.08,4.801-4.8v-35.68C232,189.8,229.92,187.72,227.199,187.72z M178.08,229.8v-9.12c0-0.799,0.64-1.6,1.6-1.6h4
                                                            v10.72H178.08z M192.48,229.8h-5.6v-10.72h4c0.96,0,1.6,0.801,1.6,1.6V229.8z M199.52,229.8h-3.68v-9.12
                                                            c0-2.72-2.08-4.799-4.8-4.799h-11.2c-2.72,0-4.8,2.079-4.8,4.799v9.12h-2.24c-0.8,0-1.6-0.64-1.6-1.6v-54.4c0-0.96,0.8-1.6,1.6-1.6
                                                            h25.12c0.8,0,1.6,0.64,1.6,1.6V229.8z M228.8,228.2c0,0.96-0.8,1.6-1.601,1.6H202.72v-38.88h24.479c0.801,0,1.601,0.8,1.601,1.601
                                                            V228.2z" />
                                                            <g>
                                                                <path d="M194.08,179.88h-17.6c-0.96,0-1.6-0.64-1.6-1.6s0.64-1.6,1.6-1.6h17.6c0.96,0,1.6,0.64,1.6,1.6
                                                                S195.04,179.88,194.08,179.88z" />
                                                            </g>
                                                            <g>
                                                                <path d="M194.08,187.88h-17.6c-0.96,0-1.6-0.64-1.6-1.6s0.64-1.6,1.6-1.6h17.6c0.96,0,1.6,0.64,1.6,1.6
                                                                S195.04,187.88,194.08,187.88z" />
                                                            </g>
                                                            <g>
                                                                <path d="M194.08,195.88h-17.6c-0.96,0-1.6-0.64-1.6-1.6s0.64-1.6,1.6-1.6h17.6c0.96,0,1.6,0.64,1.6,1.6
                                                                S195.04,195.88,194.08,195.88z" />
                                                            </g>
                                                            <g>
                                                                <path d="M194.08,203.881h-17.6c-0.96,0-1.6-0.641-1.6-1.601s0.64-1.601,1.6-1.601h17.6c0.96,0,1.6,0.641,1.6,1.601
                                                                S195.04,203.881,194.08,203.881z" />
                                                            </g>
                                                            <g>
                                                                <path d="M224.48,199.08H206.88c-0.96,0-1.601-0.64-1.601-1.6s0.641-1.6,1.601-1.6h17.601c0.96,0,1.6,0.64,1.6,1.6
                                                                S225.44,199.08,224.48,199.08z" />
                                                            </g>
                                                            <g>
                                                                <path d="M224.48,207.08H206.88c-0.96,0-1.601-0.641-1.601-1.6c0-0.961,0.641-1.6,1.601-1.6h17.601c0.96,0,1.6,0.639,1.6,1.6
                                                                C226.08,206.439,225.44,207.08,224.48,207.08z" />
                                                            </g>
                                                            <g>
                                                                <path d="M224.48,215.08H206.88c-0.96,0-1.601-0.641-1.601-1.6c0-0.961,0.641-1.6,1.601-1.6h17.601c0.96,0,1.6,0.639,1.6,1.6
                                                                C226.08,214.439,225.44,215.08,224.48,215.08z" />
                                                            </g>
                                                        </svg>
                                                    </i>
                                                    <div class="media-body">
                                                        <h4 class="media-title">UI/UX Designer, Facebook</h4>
                                                        <p class="mb-1">7<sup>th</sup>Aug 2017 to 3<sup>rd</sup>Aug 2018, $25/hr to $30/hr</p>
                                                        <p>For better opportunities</p>
                                                    </div>
                                                    <button data-target="#edit-dialog" data-toggle="modal" class="btn pmd-ripple-effect btn-dark btn-sm pmd-btn-fab pmd-btn-flat ml-auto" type="button"><i class="material-icons pmd-icon-xs">edit</i></button>
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
                        </form>
                    </div>
                </div>

                <!-- Documents Tab -->
                <div role="tabpanel" class="tab-pane" id="documents">

                    <!-- Documents -->
                    <div class="card pmd-card">
                        <div class="card-body">
                            <div class="d-flex flex-row align-items-center">
                                <div class="media-body">
                                    <h3 class="card-title">Employee Documents</h3>
                                </div>
                                <button data-target="#add-document-dialog" data-toggle="modal" class="btn pmd-ripple-effect btn-outline-primary pmd-btn-flat btn-sm pmd-btn-fab" type="button"><i class="material-icons pmd-sm">add</i></button>
                            </div>

                            <div class="details-tab">
                                <!-- Documents Table -->
                                <div class="table-responsive">
                                    <table class="table pmd-table table-bordered" id="table-propeller">
                                        <thead>
                                            <tr>
                                                <th>File Name</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td colspan="2" class="text-center">
                                                    <div class="no-data-msg">
                                                        <p class="mb-0">No Records Found</p>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Add Document Dialog -->
                    <div tabindex="-1" class="modal pmd-modal fade add-dialog" id="add-document-dialog" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                                <div class="modal-header pmd-modal-border">
                                    <h2 class="modal-title">Add Document</h2>
                                    <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                </div>
                                <div class="modal-body">
                                    <form>
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                            <label for="filename">File Name</label>
                                            <input type="text" class="mat-input form-control" id="filename" value="">
                                        </div>
                                        <div class="custom-file pmd-custom-file">
                                            <input type="file" class="custom-file-input" id="customFile">
                                            <label class="custom-file-label" for="customFile">Choose file</label>
                                        </div>
                                        <div class="mt-4">
                                            <button data-dismiss="modal" class="btn pmd-ripple-effect btn-primary pmd-btn-raised" type="button">Add</button>
                                            <button data-dismiss="modal" class="btn pmd-ripple-effect btn-outline-secondary" type="button">Reset</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
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
