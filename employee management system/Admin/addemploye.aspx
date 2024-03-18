<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeFile="addemploye.aspx.cs" Inherits="employee_management_system.Admin.addemploye" %>

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
                <div class="form-group">
                    <label for="ContentPlaceHolder1_EmployeeID" runat="server" cssclass="form-group col-form-label control-label">Employee Id</label>
                    <asp:TextBox runat="server" ID="EmployeeID" CssClass="form-control border-primary border-1" placeholder="eg:. EmployeeName012345" />
                    <asp:Label runat="server" ID="IDNOT" class="text-danger fs-6" Visible="false" Text="Employee ID is not available" />
                    <asp:Label runat="server" ID="IDOK" class="text-success fs-6" Visible="false" Text="Employee ID is available" />

                </div>
            </div>

        </div>

        <div class="row">

            <div class="col col-6 col-md-6">
                <div class="form-group">
                    <label for="ContentPlaceHolder1_FirstName" runat="server" class="form-group col-form-label control-label">First Name</label>
                    <asp:TextBox runat="server" ID="FirstName" CssClass="form-control border-primary border-1" />


                </div>
            </div>

            <div class="col col-6 col-md-6">
                <div class="form-group">
                    <label for="ContentPlaceHolder1_LastName" runat="server" class="form-group col-form-label control-label">Last Name</label>
                    <asp:TextBox runat="server" ID="LastName" CssClass="form-control border-primary border-1" />

                </div>
            </div>

        </div>

        <div class="row">

            <div class="col col-6 col-md-6">
                <div class="form-group">
                    <label runat="server" for="ContentPlaceHolder1_DepartemtList" class="form-group col-form-label control-label">Select Department</label>
                    <asp:DropDownList ID="DepartemtList" runat="server" CssClass="form-control border-primary border-1" DataSourceID="SqlDataSource1" DataTextField="DepartmentName" DataValueField="DepartmentName"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sqlConnectionForUI %>" SelectCommand="SELECT [DepartmentName] FROM [DepartmentTable]"></asp:SqlDataSource>


                </div>
            </div>

            <div class="col col-6 col-md-6">
                <div class="form-group">
                    <label for="ContentPlaceHolder1_EmailID" runat="server" class="form-group col-form-label control-label">Email ID</label>
                    <asp:TextBox runat="server" TextMode="Email" ID="EmailID" CssClass="form-control border-primary border-1" />
                    <asp:Label runat="server" ID="EmailIDOK" Visible="false" Text="Employee Email ID is available" class="text-success fs-6" />
                    <asp:Label runat="server" ID="EmailIDNOTOK" Visible="false" Text="Employee Email ID is not available" class="text-danger fs-6" />
                </div>
            </div>

        </div>

        <div class="row">

            <div class="col col-6 col-md-6">
                <div class="form-group">
                    <label for="ContentPlaceHolder1_MobileNO" runat="server" class="form-group col-form-label control-label">Mobile No</label>
                    <asp:TextBox runat="server" ID="MobileNO" CssClass="form-control border-primary border-1" />
                    <asp:Label runat="server" ID="mobilevalid" Visible="false" Text="Employee Email ID is not available" class="text-danger fs-6 d-none" />
                </div>
            </div>

            <div class="col col-6 col-md-6">
                <div class="form-group ">
                    <label runat="server" for="ContentPlaceHolder1_country" class="form-group col-form-label control-label">Country</label>
                    <asp:TextBox runat="server" ID="country" CssClass="form-control border-primary border-1" />

                </div>
            </div>

        </div>

        <div class="row">

            <div class="col col-6 col-md-6">
                <div class="form-group ">
                    <label for="ContentPlaceHolder1_state" runat="server" class="form-group col-form-label control-label">State</label>
                    <asp:TextBox runat="server" ID="state" CssClass="form-control border-primary border-1" />

                </div>
            </div>

            <div class="col col-6 col-md-6">
                <div class="form-group ">
                    <label runat="server" for="ContentPlaceHolder1_city" class="form-group col-form-label control-label">City</label>
                    <asp:TextBox runat="server" ID="city" CssClass="form-control border-primary border-1" />

                </div>
            </div>
        </div>

        <div class="row">

            <div class="col col-6 col-md-6">
                <div class="form-group ">
                    <label runat="server" for="ContentPlaceHolder1_DOB" class="form-group col-form-label control-label">DOB</label>
                    <asp:TextBox runat="server" TextMode="SingleLine" ID="DOB" CssClass="form-control border-primary border-1" />

                </div>
            </div>

            <div class="col col-6 col-md-6">
                <div class="form-group ">
                    <label runat="server" for="ContentPlaceHolder1_DOJ" class="form-group col-form-label control-label">Date of Joining</label>
                    <asp:TextBox runat="server" ID="DOJ" TextMode="SingleLine" CssClass="form-control border-primary border-1" />

                </div>
            </div>
        </div>

        <div class="row">

            <div class="col col-6 col-md-6">
                <div class="form-group ">
                    <label runat="server" for="ContentPlaceHolder1_file" class="form-group col-form-label control-label">Profile Photo</label>
                    <asp:FileUpload runat="server" ID="file" CssClass="form-control border-primary border-1" />
                    <asp:Label runat="server" ID="Label1" Visible="true" Text="File Name not found" class="text-danger fs-6 d-none" />
                </div>
            </div>

            <div class="col col-6 col-md-6">
                <div class="form-group ">
                    <label runat="server" for="ContentPlaceHolder1_Address" class="form-group col-form-label control-label">Address</label>
                    <asp:TextBox runat="server" ID="Addresses" TextMode="MultiLine" CssClass="form-control border-primary border-1" />

                </div>
            </div>
        </div>

        <div class="row">
            <div class="col col-6 col-md-6">
                <div class="form-group">
                    <label runat="server" for="ContentPlaceHolder1_password" class="form-group col-form-label control-label">Password</label>
                    <asp:TextBox runat="server" ID="password" CssClass="form-control border-primary border-1" />


                </div>
            </div>

            <div class="col col-6 col-md-6">
                <div class="form-group ">
                    <label runat="server" for="ContentPlaceHolder1_cPassword" class="form-group col-form-label control-label">Conform Password</label>
                    <asp:TextBox runat="server" ID="cPassword" CssClass="form-control border-primary border-1" />
                    <asp:Label runat="server" ID="Label2" Visible="true" Text="password is empty" class="text-danger fs-6 d-none" />
                </div>
            </div>
        </div>

        <asp:Button runat="server" OnClientClick="Unnamed_Click" Text="Submit" OnClick="Unnamed_Click" CssClass="btn btn-primary mt-3" />

    </div>
</asp:Content>
