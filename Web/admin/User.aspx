<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="Web.admin.User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="right_col" role="main">
         <asp:Label ID="lblMessage" runat="server" Text="" CssClass="err" Visible="false"></asp:Label>
            <div class="clearfix"></div>

    
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                            
                            <h2 class="title">User List</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                        </div>
                        <div class="x content ">


                        <div class="form-horizontal form-label-left">
                        <div class="row">
                        <div class="col-md-4 col-sm-6 col-xs-12 form-group">
                                <label class="control-label">Name</label>
                                <asp:TextBox ID="txtName" runat="server" MaxLength="50" CssClass="form-control"></asp:TextBox>
                             </div>
                             <div class="col-md-4 col-sm-6 col-xs-12 form-group">
                                       <label class="control-label">User Type</label>
                                      <asp:DropDownList ID="ddlUserType" runat="server" CssClass="form-control">
                                           <asp:ListItem value="0">All user</asp:ListItem>
                                           <asp:ListItem Value="2">Customer</asp:ListItem>
                                            <asp:ListItem Value="1">Admin</asp:ListItem>
                                      </asp:DropDownList>
                             </div>
                                   <div class="col-lg-2 col-md-3 col-sm-4 col-xs-12 form-group search-btn">
                                       <asp:LinkButton ID="btnSearch" runat="server" CssClass="btn btn-primary" OnClick="btnSearch_Click" 
                                           >Search</asp:LinkButton>
                                   </div>
                            </div>
                        </div>
                    </div>
                            
                   </div>
                            <%--<div class="row">
                                <div class="col-md-4">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Name</label>
                                        <asp:TextBox ID="txtName" runat="server" MaxLength="50" CssClass="form-control"></asp:TextBox>

                                    </div>
                                </div>
                                <div class="col-md-4">

                                    <div class="form-group label-floating">
                                        <label class="control-label">User Type</label>
                                        <asp:DropDownList ID="ddlUserType" runat="server" Width="150" CssClass="form-control">
                                            <asp:ListItem Value="2">Customer</asp:ListItem>
                                            <asp:ListItem Value="1">Admin</asp:ListItem>
                                        </asp:DropDownList>

                                    </div>
                                </div>
                                <div class="col-md-4">
                        <asp:LinkButton ID="btnSave" runat="server" class="btn btn-primary pull-right" OnClick="btnSave_Click">Search</asp:LinkButton>
                                    </div>
                            </div>
                        <%--</div>--%>
                 
                    </div>
                </div>
           
                        <div class="clearfix"></div>
            <%--</div>--%>
            <div class="row">
                  <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
	                        <div class="card card-plain">
	                            <div class="card-header" data-background-color="purple">
	                            </div>
	                            <div class="card-content table-responsive">
                              <div class="x_content">
                             <table id="main-table-Country" class="table table-striped table-bordered">
                            <thead class="text-primary">
                                <tr class="summ">
                                    <th width="50px">Sr.</th>
                                     <th width="50px">User Name</th>
                                     <th width="50px"> Name</th>
                                        <th width ="100px">Address</th>
                                        <th width ="100px">City</th>
                                        <th width="100px">State</th>
                                        <th width="50px">Country</th>
                                        <th width="50px">Zip Code</th>
                                        <th width="50px">Phone</th>
                                        <th width="50px">Active</th>
                                </tr>
                            </thead>
	                        <tbody>
                            <asp:Repeater ID="rptUser" runat="server" OnItemCommand="rptUser_ItemCommand">
                                        <ItemTemplate>
                                            <tr>
                                                <td><%#Container.ItemIndex+1 %></td>
                                                <td><%#Eval("UserName")%></td>
                                                <td><%#Eval("Name")%></td>
                                                <td><%#Eval("Address")%></td>
                                                <td><%#Eval("CityName")%></td>
                                                <td><%#Eval("StateId")%></td>
                                                <td><%#Eval("CountryId")%></td>
                                                <td><%#Eval("ZipCode")%></td>
                                                 <td ><%#Eval("Phone")%></td>
                                                <td><%#Eval("IsActive")%></td>
                                               
                                                
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                            </tbody>
                        </table>
                       </div>
	                </div>
	            </div>
	        </div>
	        </div>

        </div>
            
    </div>
</asp:Content>
