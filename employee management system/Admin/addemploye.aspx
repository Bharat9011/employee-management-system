<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="addemploye.aspx.cs" Inherits="employee_management_system.Admin.addemploye" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="row m-0 bg-white rounded m-3">

        <div>
            <h2 class="text-center mt-2 mb-2">Add Employee</h2>
        </div>

        <hr class="mt-2" />

        <div class="row">

            <div class="col col-6 col-md-6 mt-3">
                <div class="form-group pmd-textfield pmd-textfield-floating-label">
                    <label runat="server" cssclass="form-group col-form-label control-label">Employee Id</label>
                    <asp:TextBox runat="server" ID="EmployeeID" CssClass="form-control border-primary border-1" placeholder="eg:. EmployeeName012345" />
                    <asp:Label runat="server" ID="IDNOT" class="text-success fs-6 d-none" Text="Employee ID is available" />
                    <asp:Label runat="server" ID="IDOK" class="text-danger fs-6 d-none" Text="Employee ID is not available" />

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="EmployeeID" ErrorMessage="*Required FieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>

                </div>
            </div>

        </div>

        <div class="row">

            <div class="col col-6 col-md-6">
                <div class="form-group">
                    <label runat="server" class="form-group col-form-label control-label">First Name</label>
                    <asp:TextBox runat="server" ID="FirstName" CssClass="form-control border-primary border-1" />

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FirstName" ErrorMessage="*Required FieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>

                </div>
            </div>

            <div class="col col-6 col-md-6">
                <div class="form-group">
                    <label runat="server" class="form-group col-form-label control-label">Last Name</label>
                    <asp:TextBox runat="server" ID="LastName" CssClass="form-control border-primary border-1" />

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="LastName" ErrorMessage="*Required FieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>

                </div>
            </div>

        </div>

        <div class="row">

            <div class="col col-6 col-md-6">
                <div class="form-group">
                    <label runat="server" class="form-group col-form-label control-label">Select Department</label>
                    <asp:DropDownList ID="DepartemtList" runat="server" CssClass="form-control border-primary border-1" DataSourceID="SqlDataSource1" DataTextField="DepartmentName" DataValueField="DepartmentName"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sqlConnectionForUI %>" SelectCommand="SELECT [DepartmentName] FROM [DepartmentTable]"></asp:SqlDataSource>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DepartemtList" ErrorMessage="*Required FieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>

                </div>
            </div>

            <div class="col col-6 col-md-6">
                <div class="form-group pmd-textfield pmd-textfield-floating-label">
                    <label runat="server" class="form-group col-form-label control-label">Email ID</label>
                    <asp:TextBox runat="server" TextMode="Email" ID="EmailID" CssClass="form-control border-primary border-1" />
                    <asp:Label runat="server" ID="EmailIDOK" Text="Employee Email ID is available" class="text-success fs-6 d-none" />
                    <asp:Label runat="server" ID="EmailIDNOTOK" Text="Employee Email ID is not available" class="text-danger fs-6 d-none" />

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="EmailID" ErrorMessage="*Required FieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>

                </div>
            </div>

        </div>

        <div class="row">

            <div class="col col-6 col-md-6">
                <div class="form-group pmd-textfield pmd-textfield-floating-label">
                    <label runat="server" class="form-group col-form-label control-label">Mobile No</label>
                    <asp:TextBox runat="server" ID="MobileNO" CssClass="form-control border-primary border-1" />

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="MobileNO" ErrorMessage="*Required FieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>

                </div>
            </div>

            <div class="col col-6 col-md-6">
                <div class="form-group pmd-textfield pmd-pmd-textfield-floating-label">
                    <label runat="server" class="form-group col-form-label control-label">Country</label>
                    <asp:TextBox runat="server" ID="country" CssClass="form-control border-primary border-1" />

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="country" ErrorMessage="*Required FieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>

                </div>
            </div>

        </div>

        <div class="row">

            <div class="col col-6 col-md-6">
                <div class="form-group pmd-textfield pmd-pmd-textfield-floating-label">
                    <label runat="server" class="form-group col-form-label control-label">State</label>
                    <asp:TextBox runat="server" ID="state" CssClass="form-control border-primary border-1" />

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="state" ErrorMessage="*Required FieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>

                </div>
            </div>

            <div class="col col-6 col-md-6">
                <div class="form-group pmd-textfield pmd-pmd-textfield-floating-label">
                    <label runat="server" class="form-group col-form-label control-label">City</label>
                    <asp:TextBox runat="server" ID="city" CssClass="form-control border-primary border-1" />

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="city" ErrorMessage="*Required FieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>

                </div>
            </div>
        </div>

        <div class="row">

            <div class="col col-6 col-md-6">
                <div class="form-group pmd-textfield pmd-pmd-textfield-floating-label">
                    <label runat="server" class="form-group col-form-label control-label">DOB</label>
                    <asp:TextBox runat="server" TextMode="Date" ID="DOB" CssClass="form-control border-primary border-1" />

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="DOB" ErrorMessage="*Required FieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>

                </div>
            </div>

            <div class="col col-6 col-md-6">
                <div class="form-group pmd-textfield pmd-pmd-textfield-floating-label">
                    <label runat="server" class="form-group col-form-label control-label">Date of Joining</label>
                    <asp:TextBox runat="server" ID="DOJ" TextMode="Date" CssClass="form-control border-primary border-1" />

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="DOJ" ErrorMessage="*Required FieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>

                </div>
            </div>
        </div>

        <div class="row">

            <div class="col col-6 col-md-6">
                <div class="form-group pmd-textfield pmd-pmd-textfield-floating-label">
                    <label runat="server" class="form-group col-form-label control-label">Profile Photo</label>
                    <asp:FileUpload runat="server" ID="file" CssClass="form-control border-primary border-1" />

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="file" ErrorMessage="*Required FieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>

                </div>
            </div>

            <div class="col col-6 col-md-6">
                <div class="form-group pmd-textfield pmd-pmd-textfield-floating-label">
                    <label runat="server" class="form-group col-form-label control-label">Address</label>
                    <asp:TextBox runat="server" ID="Address" TextMode="MultiLine" CssClass="form-control border-primary border-1" />

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="Address" ErrorMessage="*Required FieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>

                </div>
            </div>
        </div>

        <div class="row">
            <div class="col col-6 col-md-6">
                <div class="form-group">
                    <label runat="server" class="form-group col-form-label control-label">Password</label>
                    <asp:TextBox runat="server" ID="password" CssClass="form-control border-primary border-1" />

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="password" ErrorMessage="*Required FieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
                    
                </div>
            </div>

            <div class="col col-6 col-md-6">
                <div class="form-group pmd-textfield pmd-pmd-textfield-floating-label">
                    <label runat="server" class="form-group col-form-label control-label">Conform Password</label>
                    <asp:TextBox runat="server" ID="cPassword" CssClass="form-control border-primary border-1" />

                    <asp:RequiredFieldValidator CssClass="d-flex" ID="RequiredFieldValidator15" runat="server" ControlToValidate="cPassword" ErrorMessage="*Required FieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>

                    <asp:CompareValidator CssClass="d-flex" ID="CompareValidator1" runat="server" ErrorMessage="Password is Different" ControlToCompare="password" ControlToValidate="cPassword"></asp:CompareValidator>

                </div>
            </div>
        </div>

        <div class="row mb-5">
            <div class="col col-6 col-md-6">
                <div class="form-group pmd-textfield pmd-pmd-textfield-floating-label">
                    <asp:Button runat="server" ID="submit" Text="Submit" OnClick="saveInfo_Click" CssClass="btn btn-primary mt-3" />
                </div>
            </div>
        </div>

    </div>



</asp:Content>
