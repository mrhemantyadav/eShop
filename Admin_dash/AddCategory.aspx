<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_dash/Admin_dash.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="EShop.Admin_dash.AddCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="card card-primary col-md-6 mt-3 p-0">
        <div class="card-header">
            <h3 class="card-title">Category</h3>
        </div>
        <!-- /.card-header -->
        <!-- form start -->
        <div class="card-body">
            <div class="form-group">
                <label>Enter Category name </label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="addCategory" runat="server" 
                    ErrorMessage="Select valid name" SetFocusOnError="true"  ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <asp:TextBox ID="addCategory" class="form-control" runat="server"></asp:TextBox>
            </div>
        </div>

        <!-- /.card-body -->
        <div class="card-footer">
            <asp:Button ID="AddCategoryButton" class="btn btn-primary" runat="server" Text="Add" OnClick="AddCategoryButton_Click" />
            <%--<button type="submit" >Submit</button>--%>
        </div>
    </div>

</asp:Content>
