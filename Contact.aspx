<%@ Page Title="" Language="C#" MasterPageFile="~/EShop.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="EShop.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!--================Home Banner Area =================-->
    <section class="banner_area">
        <div class="banner_inner d-flex align-items-center">
            <div class="container">
                <div
                    class="banner_content d-md-flex justify-content-between align-items-center">
                    <div class="mb-3 mb-md-0">
                        <h2>Contact Us</h2>
                        <p>Very us move be blessed multiply night</p>
                    </div>
                    <div class="page_link">
                        <a href="index.html">Home</a>
                        <a href="contact.html">Contact Us</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================End Home Banner Area =================-->


    <!-- ================ contact section start ================= -->
    <section class="section_gap">
        <div class="container">
            <div class="d-none d-sm-block mb-5 pb-4">
                <div id="map" style="height: 480px;"></div>
                <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDpfS1oRGreGSBU5HHjMmQ3o5NLw7VdJ6I&callback=initMap"></script>
            </div>


            <div class="row">
                <div class="col-12">
                    <h2 class="contact-title">Get in Touch</h2>
                </div>
                <div class="col-lg-8 mb-4 mb-lg-0">
                    <div class="form-contact contact_form" id="contactForm" novalidate="novalidate">
                        <div class="row">
                            <div class="col-12">
                                <div class="form-group">

                                    <%--<textarea class="form-control w-100" name="message" id="message" cols="30" rows="9" placeholder="Enter Message"></textarea>--%>
                                    <%--  <textarea id="txtMessage" class="form-control w-100" name="message" cols="30" rows="9" placeholder="Enter Message"></textarea>--%>

                                    <asp:TextBox ID="txtMessage" class="form-control w-100" name="message"  TextMode="MultiLine" cols="30" Rows="9" placeholder="Enter Message" runat="server"></asp:TextBox>

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                        ErrorMessage="Required field" Display="Dynamic" SetFocusOnError="True" ControlToValidate="txtMessage" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">

                                    <asp:TextBox ID="txtName"  class="form-control" placeholder="Enter your name" runat="server"></asp:TextBox>

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                        ErrorMessage="Required field" Display="Dynamic" SetFocusOnError="True" ControlToValidate="txtName" ForeColor="#FF0066"></asp:RequiredFieldValidator>

                                    <%--<input class="form-control" name="name" id="name" type="text" placeholder="Enter your name">--%>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <asp:TextBox ID="txtEmail" class="form-control" placeholder="Enter email address" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                        ErrorMessage="Required field" Display="Dynamic" SetFocusOnError="True" ControlToValidate="txtEmail" ForeColor="#FF0066"></asp:RequiredFieldValidator>

                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                        ErrorMessage="Invaild email" ControlToValidate="txtEmail" Display="Dynamic" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    <%--<input class="form-control" name="email" id="email" type="email" placeholder="Enter email address">--%>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <asp:DropDownList ID="DropDownList1" class="form-control" runat="server">
                                        <asp:ListItem Value="select">select</asp:ListItem>
                                        <asp:ListItem>Suggestion</asp:ListItem>
                                        <asp:ListItem>report</asp:ListItem>
                                        <asp:ListItem>other</asp:ListItem>
                                    </asp:DropDownList>

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                        ErrorMessage="Required field" Display="Dynamic" SetFocusOnError="True" InitialValue="select" ControlToValidate="DropDownList1" ForeColor="#FF0066"></asp:RequiredFieldValidator>


                                    <%--<input class="form-control" name="subject" id="subject" type="text" placeholder="Enter Subject">--%>
                                </div>
                            </div>
                        </div>
                        <div class="form-group mt-lg-3">
                            <asp:Button ID="ContactButton" class="main_btn" runat="server" Text="Submit" OnClick="ContactButton_Click" />

                        </div>
                    </div>


                </div>

                <div class="col-lg-4">
                    <div class="media contact-info">
                        <span class="contact-info__icon"><i class="ti-home"></i></span>
                        <div class="media-body">
                            <h3>Buttonwood, California.</h3>
                            <p>Rosemead, CA 91770</p>
                        </div>
                    </div>
                    <div class="media contact-info">
                        <span class="contact-info__icon"><i class="ti-tablet"></i></span>
                        <div class="media-body">
                            <h3><a href="tel:454545654">00 (440) 9865 562</a></h3>
                            <p>Mon to Fri 9am to 6pm</p>
                        </div>
                    </div>
                    <div class="media contact-info">
                        <span class="contact-info__icon"><i class="ti-email"></i></span>
                        <div class="media-body">
                            <h3><a href="mailto:support@colorlib.com">support@colorlib.com</a></h3>
                            <p>Send us your query anytime!</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ================ contact section end ================= -->
</asp:Content>
