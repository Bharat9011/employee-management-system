<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="showemployee.aspx.cs" Inherits="employee_management_system.Admin.showemployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="mt-5 ms-3 me-3 bg-white rounded shadow">

        <div class="h1 text-center mb-3">Employee Detaile</div>

        <div style="width: 100%; height: 50px; display: inline-flex; justify-content: end; padding-top: 15px; padding-right: 20px;">

            <div id="optionshow" style="width: fit-content; height: fit-content; background: #fff; border-radius: 10px; z-index: 1; display: none;">
                <ul runat="server" style="list-style: none; padding: 10px;">
                    <li style="padding: 10px;" id="employeeInfo" onclick="showInfo()">Employee Inforamtion</li>
                    <li style="padding: 10px;" id="contactInfo" onclick="showCon()">Contact Inforamtion</li>
                    <li style="padding: 10px;" id="EducationInfo" onclick="Educations()">Education</li>
                    <li style="padding: 10px;" id="Expreience" onclick="Experience()">Experience</li>
                    <li style="padding: 10px;" id="previoueJOB" onclick="JOBInformation()">Previous Job Information</li>
                    <li style="padding: 10px;" id="salaryInfo" onclick="SalaryInformation()">Salay Information</li>
                </ul>
            </div>

            <i onclick="show1()" class="fa-solid fa-filter"></i>

            <script>
                function show1() {
                    if (document.getElementById("optionshow").style.display == "none") {
                        document.getElementById("optionshow").style.display = "block";
                    } else {
                        document.getElementById("optionshow").style.display = "none";
                    }
                }

                function showCon() {
                    if (document.getElementById('ContactInformation').style.display == "none") {

                        document.getElementById("ContactInformation").style.display = "block";
                        document.getElementById("employeeinfo").style.display = "none";
                        document.getElementById("Education").style.display = "none";
                        document.getElementById("EmpExperience").style.display = "none";
                        document.getElementById("PreJOBInformation").style.display = "none";
                        document.getElementById("SalaryInformation").style.display = "none";
                    } else {
                        document.getElementById("ContactInformation").style.display = "none";
                    }
                }

                function showInfo() {
                    if (document.getElementById("employeeinfo").style.display == "none") {
                        document.getElementById("ContactInformation").style.display = "none";
                        document.getElementById("employeeinfo").style.display = "block";
                        document.getElementById("Education").style.display = "none";
                        document.getElementById("EmpExperience").style.display = "none";
                        document.getElementById("PreJOBInformation").style.display = "none";
                        document.getElementById("SalaryInformation").style.display = "none";
                    } else {
                        document.getElementById("employeeinfo").style.display = "none";
                    }
                }

                function Educations() {
                    if (document.getElementById("Education").style.display == "none") {
                        document.getElementById("ContactInformation").style.display = "none";
                        document.getElementById("employeeinfo").style.display = "none";
                        document.getElementById("Education").style.display = "block";
                        document.getElementById("EmpExperience").style.display = "none";
                        document.getElementById("PreJOBInformation").style.display = "none";
                        document.getElementById("SalaryInformation").style.display = "none";
                    } else {
                        document.getElementById("Education").style.display = "none";
                    }
                }

                function Experience() {
                    if (document.getElementById("EmpExperience").style.display == "none") {
                        document.getElementById("ContactInformation").style.display = "none";
                        document.getElementById("employeeinfo").style.display = "none";
                        document.getElementById("Education").style.display = "none";
                        document.getElementById("EmpExperience").style.display = "block";
                        document.getElementById("PreJOBInformation").style.display = "none";
                        document.getElementById("SalaryInformation").style.display = "none";
                    } else {
                        document.getElementById("EmpExperience").style.display = "none";
                    }
                }

                function JOBInformation() {
                    if (document.getElementById("PreJOBInformation").style.display == "none") {
                        document.getElementById("ContactInformation").style.display = "none";
                        document.getElementById("employeeinfo").style.display = "none";
                        document.getElementById("Education").style.display = "none";
                        document.getElementById("EmpExperience").style.display = "none";
                        document.getElementById("PreJOBInformation").style.display = "block";
                        document.getElementById("SalaryInformation").style.display = "none";;
                    } else {
                        document.getElementById("PreJOBInformation").style.display = "none";
                    }
                }

                function SalaryInformation() {
                    if (document.getElementById("SalaryInformation").style.display == "none") {
                        document.getElementById("ContactInformation").style.display = "none";
                        document.getElementById("employeeinfo").style.display = "none";
                        document.getElementById("Education").style.display = "none";
                        document.getElementById("EmpExperience").style.display = "none";
                        document.getElementById("PreJOBInformation").style.display = "none";
                        document.getElementById("SalaryInformation").style.display = "block";
                    } else {
                        document.getElementById("SalaryInformation").style.display = "none";
                    }
                }

            </script>

        </div>

        <div runat="server" id="employeebasicINFO" class=" d-flex justify-content-center">

            <div id="employeeinfo" style="display: block;" class="p-0 m-0">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="table table-hover table-striped table-bordered" DataKeyNames="EmployeeID">
                    <Columns>
                        <asp:BoundField DataField="EmployeeID" HeaderText="Employee ID" InsertVisible="False" ReadOnly="True" SortExpression="EmployeeID" />
                        <asp:BoundField DataField="EmpFullName" HeaderText="Name" SortExpression="EmpFullName" />
                        <asp:BoundField DataField="EmpPhone" HeaderText="Phone No." SortExpression="EmpPhone" />
                        <asp:BoundField DataField="EmpEmail" HeaderText="Email" SortExpression="EmpEmail" />
                        <asp:BoundField DataField="EmpDateOfBirth" HeaderText="Date Of Birth" SortExpression="EmpDateOfBirth" />
                        <asp:BoundField DataField="EmpGender" HeaderText="Gender" SortExpression="EmpGender" />
                        <asp:BoundField DataField="EmpMartialStatus" HeaderText="Martial Status" SortExpression="EmpMartialStatus" />
                        <asp:BoundField DataField="EmpPassword" HeaderText="Password" SortExpression="EmpPassword" />
                    </Columns>
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Connectionstr %>" SelectCommand="SELECT [EmployeeID], [EmpFullName], [EmpPhone], [EmpEmail], [EmpDateOfBirth], [EmpGender], [EmpMartialStatus], [EmpPassword] FROM [EmployeeInformation]"></asp:SqlDataSource>
            </div>

            <div id="Education"  style="display: none;"  class="p-0 m-0">
                <asp:GridView ID="GridView2" runat="server"  AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CssClass="table table-hover table-striped table-bordered">
                    <Columns>
                        <asp:BoundField DataField="EmployeeID" HeaderText="Employee ID" SortExpression="EmployeeID" />
                        <asp:BoundField DataField="EmpDegreeName" HeaderText="Degree Name" SortExpression="EmpDegreeName" />
                        <asp:BoundField DataField="EmpSpecialize" HeaderText="Specialize" SortExpression="EmpSpecialize" />
                        <asp:BoundField DataField="EmpPassingOfYear" HeaderText="Passing Of Year" SortExpression="EmpPassingOfYear" />
                        <asp:BoundField DataField="EmpInstitue" HeaderText="Institue" SortExpression="EmpInstitue" />
                        <asp:BoundField DataField="EmpStartDate" HeaderText="Start Date" SortExpression="EmpStartDate" />
                        <asp:BoundField DataField="EmpEndOfDate" HeaderText="End Of Date" SortExpression="EmpEndOfDate" />
                    </Columns>
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Connectionstr %>" SelectCommand="SELECT * FROM [EmpEducation]"></asp:SqlDataSource>
            </div>

            <div id="EmpExperience"  style="display: none;"  class="p-0 m-0">
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" CssClass="table table-hover table-striped table-bordered">
                    <Columns>
                        <asp:BoundField DataField="EmployeeID" HeaderText="Employee ID" SortExpression="EmployeeID" />
                        <asp:BoundField DataField="EmpOrganization" HeaderText="Organization" SortExpression="EmpOrganization" />
                        <asp:BoundField DataField="EmpDesignation" HeaderText="Designation" SortExpression="EmpDesignation" />
                        <asp:BoundField DataField="EmpStartDate" HeaderText="Start Date" SortExpression="EmpStartDate" />
                        <asp:BoundField DataField="EmpEndDate" HeaderText="End Date" SortExpression="EmpEndDate" />
                        <asp:BoundField DataField="EmpSalary" HeaderText="Salary" SortExpression="EmpSalary" />
                    </Columns>
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Connectionstr %>" SelectCommand="SELECT * FROM [EmpExperience]"></asp:SqlDataSource>
            </div>

            <div id="PreJOBInformation" style="display: none;"  class="p-0 m-0">
                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" CssClass="table table-hover table-striped table-bordered">
                    <Columns>
                        <asp:BoundField DataField="EmployeeID" HeaderText="Employee ID" SortExpression="EmployeeID" />
                        <asp:BoundField DataField="EmpEnrollmentID" HeaderText="Enrollment ID" SortExpression="EmpEnrollmentID" />
                        <asp:BoundField DataField="EmpCompaniesName" HeaderText="Companies Name" SortExpression="EmpCompaniesName" />
                        <asp:BoundField DataField="EmpCompanyEmail" HeaderText="Company Email" SortExpression="EmpCompanyEmail" />
                        <asp:BoundField DataField="EmpDepartmentName" HeaderText="Department Name" SortExpression="EmpDepartmentName" />
                        <asp:BoundField DataField="EmpDesignation" HeaderText="Designation" SortExpression="EmpDesignation" />
                        <asp:BoundField DataField="EmpDateofJoning" HeaderText="Date of Joning" SortExpression="EmpDateofJoning" />
                        <asp:BoundField DataField="EmpDateofleaving" HeaderText="Date of leaving" SortExpression="EmpDateofleaving" />
                        <asp:BoundField DataField="EmpTypeodEmployee" HeaderText="Typeod Employee" SortExpression="EmpTypeodEmployee" />
                    </Columns>
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Connectionstr %>" SelectCommand="SELECT * FROM [EmpPreJOBInformation]"></asp:SqlDataSource>
            </div>

            <div id="SalaryInformation" style="display: none;"  class="p-0 m-0">
                <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" CssClass="table table-hover table-striped table-bordered">
                    <Columns>
                        <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" SortExpression="EmployeeID" />
                        <asp:BoundField DataField="EmpHourlySalay" HeaderText="Hourly Salay" SortExpression="EmpHourlySalay" />
                        <asp:BoundField DataField="EmpMonthlySalary" HeaderText="Monthly Salary" SortExpression="EmpMonthlySalary" />
                        <asp:BoundField DataField="EmpAnnualGrossSalary" HeaderText="Annual Gross Salary" SortExpression="EmpAnnualGrossSalary" />
                        <asp:BoundField DataField="EmpFederalWithHolder" HeaderText="Federal" SortExpression="EmpFederalWithHolder" />
                        <asp:BoundField DataField="EmpMedicare" HeaderText="Medicare" SortExpression="EmpMedicare" />
                        <asp:BoundField DataField="EmpSocialSecurity" HeaderText="Social Security" SortExpression="EmpSocialSecurity" />
                        <asp:BoundField DataField="EmpAllowances" HeaderText="Allowances" SortExpression="EmpAllowances" />
                        <asp:BoundField DataField="EmpAddAllowances" HeaderText="Add Allowances" SortExpression="EmpAddAllowances" />
                        <asp:BoundField DataField="EmpNetDay" HeaderText="Net Salary" SortExpression="EmpNetDay" />
                    </Columns>
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:Connectionstr %>" SelectCommand="SELECT * FROM [EmpSalaryInformation]"></asp:SqlDataSource>
            </div>

            <div id="ContactInformation" style="display: none; width: fit-content; height: fit-content;"  class="p-0 m-0">
                <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource6" CssClass="text-center table table-hover table-striped table-bordered">
                    <Columns>
                        <asp:BoundField DataField="EmployeeID" HeaderText="Employee ID" SortExpression="EmployeeID" />
                        <asp:BoundField DataField="EmpAddressLine1" HeaderText="Address 1" SortExpression="EmpAddressLine1" />
                        <asp:BoundField DataField="EmpAddressLine2" HeaderText="Address2" SortExpression="EmpAddressLine2" />
                        <asp:BoundField DataField="EmpCity" HeaderText="City" SortExpression="EmpCity" />
                        <asp:BoundField DataField="EmpState" HeaderText="State" SortExpression="EmpState" />
                        <asp:BoundField DataField="EmpZipCode" HeaderText="Zip Code" SortExpression="EmpZipCode" />
                        <asp:BoundField DataField="EmpCountry" HeaderText="Country" SortExpression="EmpCountry" />
                    </Columns>
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:Connectionstr %>" SelectCommand="SELECT * FROM [EmpContactInformation]"></asp:SqlDataSource>
            </div>

        </div>
    </div>
</asp:Content>
