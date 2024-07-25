<%@ Page Title="" Language="C#" MasterPageFile="~/EShop.Master" AutoEventWireup="true" CodeBehind="Admin_Login.aspx.cs" Inherits="EShop.Admin_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <!-- LINK ALL CSS File FROM ADMIN TEMLATE -->

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="/content/adContent/plugins/fontawesome-free/css/all.min.css">
    <!-- icheck bootstrap -->
    <link rel="stylesheet" href="/content/adContent/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="/content/adContent/dist/css/adminlte.min.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="hold-transition login-page">
        <div class="login-box">
            <!-- /.login-logo -->
            <div class="card card-outline card-primary">
                <div class="card-header text-center">
                    <a href="Default.aspx" class="h1"><b>Admin</b>LTE</a>
                </div>
                <div class="card-body">
                    <%-- <p class="login-box-msg">Sign in to start your session</p>--%>
                    <div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                            ErrorMessage="Required field" ForeColor="red" ControlToValidate="txtAdminEmailUsername" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>

                        <div class="input-group mb-3">
                            <%--<input type="email" class="form-control" placeholder="Email">--%>

                            <asp:TextBox ID="txtAdminEmailUsername" class="form-control" placeholder="Enter email or username" runat="server"></asp:TextBox>
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-envelope"></span>
                                </div>
                            </div>
                        </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                            ErrorMessage="Required field" ForeColor="red" ControlToValidate="txtAdminPassword" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <div class="input-group mb-3">
                            <%--<input type="password" class="form-control" placeholder="Password">--%>
                            <asp:TextBox ID="txtAdminPassword" class="form-control" placeholder="Enter password" runat="server"></asp:TextBox>

                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-lock"></span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-8">
                                <asp:CheckBox ID="CheckBox1"  runat="server" />
                                <span>Check</span>
                            </div>
                            <!-- /.col -->
                            <div class="col-4">
                                <asp:Button ID="AdminLoginButton" class="btn btn-primary btn-block" runat="server" Text="Login" OnClick="AdminLoginButton_Click" />
                            </div>
                            <!-- /.col -->
                        </div>
                    </div>
                    <%--    <div class="social-auth-links text-center mt-2 mb-3">
                        <a href="#" class="btn btn-block btn-primary">
                            <i class="fab fa-facebook mr-2"></i>Sign in using Facebook
                        </a>
                        <a href="#" class="btn btn-block btn-danger">
                            <i class="fab fa-google-plus mr-2"></i>Sign in using Google+
                        </a>
                    </div>--%>
                    <!-- /.social-auth-links -->
                    <p class="mb-1">
                        <a href="forgot-password.html">I forgot my password</a>
                    </p>
                    <!-- <p class="mb-0">
                        <a href="register.html" class="text-center">Register a new membership</a>
                    </p>-->
                </div>
                <!-- /.card-body -->
            </div>
            <!-- /.card -->
        </div>
        <!-- /.login-box -->


    </div>


</asp:Content>
