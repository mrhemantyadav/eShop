<%@ Page Title="" Language="C#" MasterPageFile="~/EShop.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="EShop.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container w-50 shadow">
        <div class="header jumbotron bg-success row">
            <div class="col-md-6 mx-auto ">
                <h2 class="text-center text-light">Register Here</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 ">
                <div class="row">
                    <div class="col-md-6 ">
                        <asp:TextBox ID="txtFirstName" CssClass="form-control" placeholder="Enter First Name" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                            ErrorMessage="Required Field" ControlToValidate="txtFirstName" Display="Dynamic" ForeColor="#FF0066" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                    </div>
                    <div class="col-md-6 ">
                        <asp:TextBox ID="txtLastName" CssClass="form-control" placeholder="Enter Last Name" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                            ErrorMessage="Required Field" ControlToValidate="txtLastName" Display="Dynamic" ForeColor="#FF0066" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                    </div>
                </div>
            </div>

            <div class="col-md-12 mx-auto">
                <asp:TextBox ID="txtEmail" CssClass="form-control" placeholder="Enter email " runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                    ErrorMessage="Required Field" ControlToValidate="txtEmail" Display="Dynamic" ForeColor="#FF0066" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                    ErrorMessage="Invalid email" ControlToValidate="txtEmail" Display="Dynamic" ForeColor="#FF0066" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
            </div>
            <div class="col-md-12 mx-auto">
                <asp:TextBox ID="txtUserName" CssClass="form-control" placeholder="Enter username" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                    ErrorMessage="Required Field" ControlToValidate="txtUserName" Display="Dynamic" ForeColor="#FF0066" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <br />
            </div>
            <div class="col-md-12 mx-auto">
                <asp:TextBox ID="txtMobileNo" CssClass="form-control" placeholder="Enter Mobile Number" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                    ErrorMessage="Required Field" ControlToValidate="txtMobileNo" Display="Dynamic" ForeColor="#FF0066" SetFocusOnError="True"></asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                    ErrorMessage="Invalid No" ControlToValidate="txtMobileNo" Display="Dynamic" ForeColor="#FF0066" ValidationExpression="^\d{10}$"></asp:RegularExpressionValidator>
                <br />
            </div>
            <div class="col-md-12 mx-auto">
                <asp:TextBox ID="txtPassword" CssClass="form-control" placeholder="Enter Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                    ErrorMessage="Required Field" ControlToValidate="txtPassword" Display="Dynamic" ForeColor="#FF0066" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <br />
            </div>
            <div class="col-md-12 mx-auto">
                <asp:TextBox ID="txtConfirmPass" CssClass="form-control" placeholder="Enter confirm password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                    ErrorMessage="Required Field" ControlToValidate="txtConfirmPass" Display="Dynamic" ForeColor="#FF0066" SetFocusOnError="True"></asp:RequiredFieldValidator>

                <asp:CompareValidator ID="CompareValidator1" runat="server"
                    ErrorMessage="not match Password" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPass" Display="Dynamic" ForeColor="#FF0066"></asp:CompareValidator>
                <br />
            </div>
            <div class="col-md-3 mx-auto">
                <asp:Button ID="RegisterButton" CssClass="btn btn-success btn-block form-control " runat="server" Text="Register" OnClick="RegisterButton_Click" />
            </div>
        </div>
           <br />
    </div>
    <br />
</asp:Content>
