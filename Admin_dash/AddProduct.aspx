<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_dash/Admin_dash.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="EShop.Admin_dash.AddProduct" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            float: left;
            font-size: 1.1rem;
            font-weight: 400;
            height: 27px;
            margin: 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="card card-primary col-md-6 mt-3 mr-2 p-0">
        <div class="card-header">
            <h3 class="auto-style1">Sub Category</h3>
        </div>
        <!-- /.card-header -->
        <!-- form start -->
        <div class="card-body">
            <div class="form-group">
                <label>Select Category</label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="CategoryDropDownList1" runat="server"
                    ErrorMessage="Select Option" SetFocusOnError="true" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <asp:DropDownList ID="CategoryDropDownList1" class="form-control" AutoPostBack OnSelectedIndexChanged="CategoryDropDownList1_SelectedIndexChanged"  runat="server"></asp:DropDownList>

            </div>

            <div class="form-group">
                <label>Select Sub Category</label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="SubCategoryDropDownList2" runat="server"
                    ErrorMessage="Select Option" SetFocusOnError="true" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <asp:DropDownList ID="SubCategoryDropDownList2" class="form-control" runat="server"></asp:DropDownList>

            </div>

            <div class="form-group">
                <label>Add Product Name</label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtAddProductName" runat="server"
                    ErrorMessage="Product Name" SetFocusOnError="true" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtAddProductName" class="form-control" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Add Product Price</label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtAddProductPrice" runat="server"
                    ErrorMessage="Product Name" SetFocusOnError="true" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtAddProductPrice" class="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Add Product Specification</label>
             
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="txtAddProductSpecification" runat="server"
                    ErrorMessage="Product Name" SetFocusOnError="true" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtAddProductSpecification" class="form-control" TextMode="MultiLine" Height="300px" Width="100%" runat="server"></asp:TextBox>
               
                <ajaxToolkit:HtmlEditorExtender ID="HtmlEditorExtender1" EnableSanitization="false" TargetControlID="txtAddProductSpecification" runat="server"></ajaxToolkit:HtmlEditorExtender>
            </div>

            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                ErrorMessage="Required Field" SetFocusOnError="true" ForeColor="#FF3300" ControlToValidate="FileUpload1"></asp:RequiredFieldValidator>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        </div>
        <!-- /.card-body -->
        <div class="card-footer">
            <%--<button type="submit" >Submit</button>--%>
            <asp:Button ID="AddProductButton" class="btn btn-primary" runat="server" Text="AddProduct" OnClick="AddProductButton_Click" />
        </div>
    </div>
</asp:Content>
