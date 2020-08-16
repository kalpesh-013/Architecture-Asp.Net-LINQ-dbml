<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="ViewUser.aspx.cs" Inherits="Web.admin.ViewUser1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <div class="container-fluid">
            <br />
            <asp:Label ID="lblMessage" runat="server" Text="" CssClass="err" Visible="false"></asp:Label>
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header" data-background-color="purple">
                            <h4 class="title">View User</h4>
                        </div>
                        <div class="card-content">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Username</label>
                                        <asp:TextBox ID="txtUsername" runat="server" MaxLength="50" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvUsername" runat="server" Display="None" SetFocusOnError="True"
                                            ControlToValidate="txtUsername" ErrorMessage="Please enter Username." />

                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Password</label>
                                        <asp:TextBox ID="txtPassword" runat="server" MaxLength="50" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" Display="None" SetFocusOnError="True"
                                            ControlToValidate="txtPassword" ErrorMessage="Please enter Password." />

                                    </div>
                                </div>
                                 <div class="col-md-4">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Select Image</label>
                                        <asp:FileUpload ID="fileImage" runat="server" />

                                    </div>
                                </div>
                               
                                <div class="col-md-4">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Name</label>
                                        <asp:TextBox ID="txtName" runat="server" MaxLength="50" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvName" runat="server" Display="None" SetFocusOnError="True"
                                            ControlToValidate="txtName" ErrorMessage="Please enter Name." />
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Address</label>
                                        <asp:TextBox ID="txtAddress" runat="server" MaxLength="50" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvAddress" runat="server" Display="None" SetFocusOnError="True"
                                            ControlToValidate="txtAddress" ErrorMessage="Please enter Address." />
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Country</label>
                                        <asp:DropDownList runat="server" ID="ddlCountry" CssClass="form-control"></asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="rfvCountry" runat="server" Display="None" SetFocusOnError="True"
                                            ControlToValidate="ddlCountry" InitialValue="0" ErrorMessage="Please select Country." />
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group label-floating">
                                        <label class="control-label">State</label>
                                        <asp:DropDownList runat="server" ID="ddlState" CssClass="form-control"></asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="rfvState" runat="server" Display="None" SetFocusOnError="True"
                                            ControlToValidate="ddlState" InitialValue="0" ErrorMessage="Please enter State." />
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group label-floating">
                                        <label class="control-label">City</label>
                                        <asp:TextBox ID="txtCity" runat="server" MaxLength="64" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvCity" runat="server" Display="None" SetFocusOnError="True"
                                            ControlToValidate="txtCity" ErrorMessage="Please enter City." />
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Zipcode</label>
                                        <asp:DropDownList runat="server" ID="ddlZipcode" CssClass="form-control"></asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="rfvZipcode" runat="server" Display="None" SetFocusOnError="True"
                                            ControlToValidate="ddlZipcode" ErrorMessage="Please enter Zipcode." />
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Phone</label>
                                        <asp:TextBox ID="txtPhone" runat="server" MaxLength="50" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvPhone" runat="server" Display="None" SetFocusOnError="True"
                                            ControlToValidate="txtPhone" ErrorMessage="Please enter Phone." />
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group label-floating">
                                        <label class="control-label">User Type</label>
                                        <asp:DropDownList ID="ddlUserType" runat="server" Width="150" CssClass="form-control">
                                            <asp:ListItem Value="4">Guest</asp:ListItem>
                                            <asp:ListItem Value="3">Customer</asp:ListItem>
                                            <asp:ListItem Value="2">Employee</asp:ListItem>
                                            <asp:ListItem Value="1">Admin</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group label-floating">
                                        <label class="control-label">IsActive</label>
                                        <asp:CheckBox ID="chkActive" runat="server" />
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <asp:LinkButton ID="btnSave" runat="server" class="btn btn-primary pull-right">Back</asp:LinkButton>
                                </div>
                                <div class="col-md-4">
                                    <asp:LinkButton ID="btnSubmit" runat="server" class="btn btn-primary pull-right" OnClick="btnSubmit_Click">Submit</asp:LinkButton>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
