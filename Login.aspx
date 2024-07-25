<%@ Page Title="" Language="C#" MasterPageFile="~/EShop.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EShop.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .login-box-shadow {
            box-shadow: 15px 10px 38px 4px rgba(0,0,0,0.1);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class=" container ">
        <div class="row p-2">
            <div class="header jumbotron col-md-6  bg-success mx-auto">
                <h1 class="text-center text-light">Login</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mx-auto">
                <asp:TextBox ID="txtEmailUsername" class="form-control" placeholder="Enter email or username" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ErrorMessage="Required field" ForeColor="red" ControlToValidate="txtEmailUsername" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>

              <%--  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                    ErrorMessage="Invalid email" ControlToValidate="txtEmailUsername" Display="Dynamic" ForeColor="#FF0066"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>--%>
                <br />
                <asp:TextBox ID="txtPassword" class="form-control" placeholder="Enter password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ErrorMessage="Required field" ForeColor="red" ControlToValidate="txtPassword" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>

                <br>
                <asp:CheckBox ID="CheckBox1" class="form-check-input mx-auto  " runat="server" Text="Remember me" />
                <br />
                <br />
                <asp:Button ID="LoginButton" class="btn btn-block btn-success" runat="server" Text="Login" OnClick="LoginButton_Click" />
                <br>
                <div class="row">
                    <div class="col-md-6 mx-auto">
                        <asp:HyperLink ID="HyperLink2" NavigateUrl="forgetpassword.aspx" runat="server">Forget</asp:HyperLink>
                    </div>
                    <div class="col-md-6 mx-auto">
                        <asp:HyperLink ID="HyperLink1" NavigateUrl="Register.aspx" runat="server">Regisert</asp:HyperLink>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
