<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="employee_management_system.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Management System</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <style>
        .color-white {
            color: white;
        }

        .mt-6 {
            margin-top: 7rem;
        }
    </style>
</head>
<body class="bg-secondary">
    <form id="form1" runat="server">
        <h1 class="text-center mt-5" style="color: black;"><strong>Employee Management System</strong></h1>
        <div style="width: 100%; height: 100%; display: flex; justify-content: center; align-content: center; margin-top: 70px;">
            <div>
                <asp:Image ImageUrl="~/Images/bg_login.png" runat="server" CssClass="pe-4" />
            </div>

            <div class="border border-1 border-danger p-5 rounded-4" style="width: 500px; background-color: rgb(255, 255, 255, 0.30)">

                <h3>
                    <strong0>Login Your Account</strong0></h3>

                <div class="justify-content-center align-content-center mt-3 rounded p-4">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" style="color: black;" class="form-label">Email address</label>
                        <asp:TextBox runat="server" type="email" class="form-control" ID="Email" aria-describedby="emailHelp" />
                        <div style="display: none;">User name is incorrect</div>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" style="color: black;" class="form-label">Password</label>
                        <asp:TextBox runat="server" type="password" class="form-control" ID="Password" />
                        <div style="display: none;">Password is incorrect</div>
                    </div>
                    <asp:Button runat="server" CssClass="btn btn-info m-auto mb-3" Text="Submit" ID="login" OnClick="loginCheck" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
