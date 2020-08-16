<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Web.Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pg-header">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-12 title">
                    <h1>Registration
                    </h1>
                </div>
               <%-- <div class="col-md-6 col-sm-12">
                    <div class="b-crumbs pull-right"><a href="#">Home</a> <i class="arrow_carrot-right"></i>Basic Page</div>
                </div>--%>
            </div>
        </div>
    </div>
    <div class="pg-body">
        <div class="container login-register">
            <div class="row">
                <div class="col-xs-12 col-sm-6 register">
                    <h6>Personal detail</h6>
                    <div class="required form-group">
                        <p>Name</p>
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control validate[required]" data-prompt-position="topLeft"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Please enter Name." Display="None" SetFocusOnError="true" ControlToValidate="txtName" />
                    </div>
                    <div class="required form-group">
                        <p>Username/Email ID</p>
                        <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control validate[required]" data-prompt-position="topLeft"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvUsernameEmailId" runat="server" ErrorMessage="Please enter Username/Email ID."
                            ControlToValidate="txtUserName"  Display="None" SetFocusOnError="true" />
                        <asp:RegularExpressionValidator ID="revUserName" runat="server" Display="None" SetFocusOnError="True" ControlToValidate="txtUserName" 
                            ErrorMessage="Please enter valid Email Address." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                    </div>
                    <div class="required form-group">
                        <p>Password</p>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control validate[required]" data-prompt-position="topLeft" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Please enter Password." SetFocusOnError="true" Display="None" ControlToValidate="txtPassword" />
                    </div>
                    <div class="required form-group">
                        <p>Confirm Password</p>
                        <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control validate[required]" data-prompt-position="topLeft" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ErrorMessage=""
                            Display="None" SetFocusOnError="true" ControlToValidate="txtConfirmPassword" />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" Display="None" SetFocusOnError="true" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword"
                            ErrorMessage="Password and Confirm Password does not match." />
                    </div>
                    <div class="required form-group">
                        <p>Address</p>
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control validate[required]" data-prompt-position="topLeft"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvAddress" ControlToValidate="txtAddress" runat="server" ErrorMessage="Please enter Address." Display="None" SetFocusOnError="true" />
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 register">
                    <h6>Contact detail</h6>
                    <div class="required form-group">
                        <p>Phone No</p>
                        <asp:TextBox ID="txtPhoneNo" runat="server" CssClass="form-control validate[required]" data-prompt-position="topLeft"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPhoneNo" runat="server" ControlToValidate="txtPhoneNo" ErrorMessage="Please enter Phone No." Display="None" SetFocusOnError="true" />
                    </div>
                    <div class="required form-group">
                        <p>Country</p>
                        <asp:DropDownList ID="ddlCountry" CssClass="form-control validate[required]" data-prompt-position="topLeft" runat="server">
                            <asp:ListItem Value="0">Country *</asp:ListItem>
                            <asp:ListItem Value="India">India</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvCountry" runat="server" ErrorMessage="Please select Country." Display="None"
                            InitialValue="0" ControlToValidate="ddlCountry" SetFocusOnError="true" />
                    </div>
                    <div class="required form-group">
                        <p>State</p>
                          <asp:DropDownList ID="ddlState" CssClass="form-control validate[required]" data-prompt-position="topLeft" runat="server">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvState" runat="server" ControlToValidate="ddlState" ErrorMessage="Please select State." 
                             InitialValue="0" Display="None" SetFocusOnError="true" />
                    </div>
                    <div class="required form-group">
                        <p>City</p>
                        <asp:TextBox ID="txtCity" runat="server" MaxLength="64" CssClass="form-control validate[required]" data-prompt-position="topLeft"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvCity" runat="server" ErrorMessage="Please enter City." ControlToValidate="txtCity" Display="None" SetFocusOnError="true" />
                    </div>
                    <div class="required form-group">
                        <p>Zip Code</p>
                        <asp:TextBox ID="txtZipCode" runat="server" CssClass="form-control validate[required]" data-prompt-position="topLeft"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvZipcode" runat="server" ControlToValidate="txtZipcode" ErrorMessage="Please enter Zipcode." Display="None" SetFocusOnError="true" />
                    </div>
                    <div>
                        <asp:Button ID="btnSave" runat="server" Text="Sumbmit" OnClick="btnSave_Click" CssClass="btn btn-third-col btn-sm" />
                    </div>
                </div>

            </div>
        </div>
    </div>
    <asp:ValidationSummary ID="vs" runat="server" ShowMessageBox="True" ShowSummary="False" />
</asp:Content>
