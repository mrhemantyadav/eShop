<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_dash/Admin_dash.Master" AutoEventWireup="true" CodeBehind="AddSubCategory.aspx.cs" Inherits="EShop.Admin_dash.AddSubCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="row">

        <div class="card card-primary col-md-5 mt-3 mr-2 p-0">
            <div class="card-header">
                <h3 class="card-title">Sub Category</h3>
            </div>
            <!-- /.card-header -->
            <!-- form start -->
            <div class="card-body">

                <div class="form-group">
                    <label>Enter Category name </label>
                    <asp:DropDownList ID="CategoryDropDownList1" class="form-control" runat="server"></asp:DropDownList>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="CategoryDropDownList1" runat="server"
                        ErrorMessage="Select Option" SetFocusOnError="true" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label>Enter Sub Category Name </label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="addSubCategory" runat="server"
                        ErrorMessage="Select valid name" SetFocusOnError="true" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="addSubCategory" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <!-- /.card-body -->
            <div class="card-footer">
                <asp:Button ID="AddSubCategoryButton" class="btn btn-primary" OnClick="AddSubCategoryButton_Click" runat="server" Text="Add" />
                <%--<button type="submit" >Submit</button>--%>
            </div>
        </div>
        <div class="card card-primary col-md-6 mt-3 mr-2 p-0">
            <div class="card-header">
                <h3 class="card-title">View Sub Category</h3>
            </div>
            <!-- /.card-header -->
            <asp:GridView ID="GridView1" class="table table-hover m-0" AutoGenerateColumns="False" runat="server">
                <Columns>
                    <asp:BoundField DataField="sid" HeaderText="Id" />
                    <asp:BoundField DataField="cname" HeaderText="Category" />
                    <asp:BoundField DataField="SubName" HeaderText="Sub Category" />
                </Columns>

            </asp:GridView>
        </div>
    </div>




</asp:Content>
