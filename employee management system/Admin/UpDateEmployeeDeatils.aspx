<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeFile="UpDateEmployeeDeatils.aspx.cs" Inherits="employee_management_system.Admin.UpDateEmployeeDeatils" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="row bg-white rounded ms-4 me-4 mt-4">


      <div class="row">

          <div class="col col-6 col-md-6 mt-3">
              <div class="form-group">
                  <label for="ContentPlaceHolder1_EmployeeID" runat="server" cssclass="form-group col-form-label control-label">Employee Id</label>
                  <asp:TextBox runat="server" ID="EID" CssClass="form-control border-primary border-1" placeholder="eg:. EmployeeName012345" Enabled="False" />

              </div>
          </div>

          <div class="col col-6 col-md-6">
              <div class="form-group">
                  <label for="ContentPlaceHolder1_FirstName" runat="server" class="form-group col-form-label control-label">Employee Name</label>
                  <asp:TextBox runat="server" ID="Name" CssClass="form-control border-primary border-1" />
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
              </div>
          </div>

      </div>

      <div class="row">

          <div class="col col-6 col-md-6">
              <div class="form-group">
                  <label for="ContentPlaceHolder1_MobileNO" runat="server" class="form-group col-form-label control-label">Mobile No</label>
                  <asp:TextBox runat="server" ID="MobileNO" CssClass="form-control border-primary border-1" />
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
                  <asp:TextBox runat="server" type="some-HTML5-type" ID="DOB" TextMode="SingleLine" CssClass="form-control border-primary border-1" />
              </div>
          </div>

          <div class="col col-6 col-md-6">
              <div class="form-group ">
                  <label runat="server" for="ContentPlaceHolder1_DOJ" class="form-group col-form-label control-label">Date of Joining</label>
                  <asp:TextBox runat="server" type="some-HTML5-type" ID="DOJ" TextMode="SingleLine" CssClass="form-control border-primary border-1" />

              </div>
          </div>
      </div>

      <div class="row">
          <div class="col col-6 col-md-6">
              <div class="form-group ">
                  <label runat="server" for="ContentPlaceHolder1_Address" class="form-group col-form-label control-label">Address</label>
                  <asp:TextBox runat="server" ID="Address1" CssClass="form-control border-primary border-1" />
              </div>
          </div>
      </div>

      <asp:Button runat="server" Text="Submit" CssClass="w-50 h-25 m-auto btn btn-primary mt-3 mb-3" OnClick="Update_click" />

  </div>

</asp:Content>