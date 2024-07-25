<%@ Page Title="" Language="C#" MasterPageFile="~/EShop.Master" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="EShop.ForgetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class=" container  ">
        <div class="row p-2">
            <div class="header jumbotron col-md-6 mx-auto">
                <h1 class="text-center">Forget</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 ">
                <div class="col-md-6 mx-auto ">
                    <asp:TextBox ID="txtEmailUsername" class="form-control" placeholder="Enter email or username" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ErrorMessage="Required field" ForeColor="red" ControlToValidate="txtEmailUsername" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>

                    <%--  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
        ErrorMessage="Invalid email" ControlToValidate="txtEmail" Display="Dynamic" ForeColor="#FF0066"
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>--%>
                    <br />
                </div>
                <div class="col-md-6 mx-auto">
                    <asp:TextBox ID="txtNewPassword" CssClass="form-control" placeholder="Enter New Password" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                        ErrorMessage="Required Field" ControlToValidate="txtNewPassword" Display="Dynamic" ForeColor="#FF0066" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <br />
                </div>

                <div class="col-md-6 mx-auto">
                    <asp:TextBox ID="txtConfirmPass" CssClass="form-control" placeholder="Enter confirm password" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                        ErrorMessage="Required Field" ControlToValidate="txtConfirmPass" Display="Dynamic" ForeColor="#FF0066" SetFocusOnError="True"></asp:RequiredFieldValidator>

                    <asp:CompareValidator ID="CompareValidator1" runat="server"
                        ErrorMessage="not match Password" ControlToCompare="txtNewPassword" ControlToValidate="txtConfirmPass" Display="Dynamic" ForeColor="#FF0066"></asp:CompareValidator>
                    <br />
                </div>
            </div>




        </div>
        <br />
        <div class="col-md-3 mx-auto">
            <asp:Button ID="ForgetButton" class="btn btn-block btn-success" runat="server" Text="Forget" OnClick="ForgetButton_Click" />
        </div>
        <br>
    </div>

</asp:Content>
