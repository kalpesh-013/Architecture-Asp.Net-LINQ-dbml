<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Orderhistory.aspx.cs" Inherits="Web.Orderhistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pg-header">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-12 title">
                    <h1>Order History</h1>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="b-crumbs pull-right"><a href="#">Home</a> <i class="arrow_carrot-right"></i>Basic Page</div>
                </div>
            </div>
        </div>
    </div>
    <div class="pg-body">
        <div class="container">
            <div class="row">
                <div class="container">
                    <table class="user-info">
                        <tr>
                            <td class="picture">
                                <div class="img-cover">
                                    <asp:Image ID="Image1" runat="server" src="" />
                                </div>
                                <h6 class="name">MICHAEL DOE</h6>
                                <div class="change-picture">
                                    <i class="icon-camera"></i>
                                    <a href="#">Change picture</a>
                                </div>
                            </td>
                            <td>
                                <div class="col-xs-12 wellcome">
                                    <div class="col-xs-12 col-sm-6 col-md-5 col-lg-4">
                                        <h4>Good Morning <span>Michael</span></h4>
                                        <p>
                                            Welcome to your account. Here you can 
                              manage all of your personal information.
                                        </p>
                                    </div>
                                    <div class="col-lg-5 col-xs-12 col-sm-6 pull-right">
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-6">
                                                <p class="my-orders">My Orders:</p>
                                                <p>You have 2 item in your cart</p>
                                            </div>
                                            <div class="col-xs-12 col-sm-6 view-cart">
                                                <asp:LinkButton ID="lbtnViewCart" runat="server" CssClass="btn btn-sec-col"><i class="icon-bag"></i>&nbsp;&nbsp;VIEW CART</asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12 last">
                                    <div class="col-xs-12 col-sm-6 col-md-5 col-lg-4">
                                        <p>Last loged on:<span>   19.06.2016 – 10:23 pm</span></p>
                                    </div>
                                    <div class="col-lg-5 col-xs-12 col-sm-6 pull-right">
                                        <div class="row">
                                            <p class="col-xs-12">Last item ordered:<span>  Majestic Beecroft Sweater</span>  <span class="price">$800</span></p>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12 col-md-2 left-menu">
                    <a href="account.html">
                        <div>
                            <i class="icon-user"></i>
                            <span>YOUR PROFILE</span>
                        </div>
                    </a>
                    <a href="Wishlist.aspx">
                        <div>
                            <i class="icon-heart"></i>
                            <span>WISHLIST</span>
                        </div>
                    </a>
                    <a href="Orderhistory.aspx">
                        <div class="active">
                            <i class="icon-clock"></i>
                            <span>HISTORY</span>
                        </div>
                    </a>
                </div>

                <div class="col-md-6 col-sm-12 title">
                    <asp:Label ID="lblMessage1" runat="server" Text="Label"></asp:Label>
                    <div class="search">
                        <table>
                            <tr>
                                <td>From Date:</td>
                                <td>
                                    <asp:TextBox ID="txtFromDate" runat="server" Width="75px"></asp:TextBox>
                                </td>

                                <td>To Date:</td>
                                <td>
                                    <asp:TextBox ID="txtToDate" runat="server" Width="75px"></asp:TextBox>
                                </td>
                                <td>Display:</td>
                                <td>
                                    <asp:DropDownList ID="ddlFindDisplay" runat="server" CssClass="form-control validate[required]" data-prompt-position="topLeft">
                                        <asp:ListItem Value="10" Selected="True">10 record</asp:ListItem>
                                        <asp:ListItem Value="20">20 record</asp:ListItem>
                                        <asp:ListItem Value="50">50 record</asp:ListItem>
                                        <asp:ListItem Value="100">100 record</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>Status:</td>
                                <td>
                                    <asp:DropDownList ID="ddlStatus" CssClass="form-control validate[required]" data-prompt-position="topLeft" runat="server">
                                   <asp:ListItem Value="1" Selected="True">Received</asp:ListItem>
                                        <asp:ListItem Value="2">In Process</asp:ListItem>
                                        <asp:ListItem Value="3">Delivered</asp:ListItem>
                                        <asp:ListItem Value="4">Cancel</asp:ListItem>
                                         </asp:DropDownList>
                                </td>
                                   <td>
                                <asp:LinkButton ID="iBtnGo" runat="server" ToolTip="Search" CssClass="btn btn-third-col btn-md" data-type="submit" OnClick="iBtnGo_Click">Search<span></span></asp:LinkButton></td>
                       
                            </tr>
                        </table>
                    </div>
                </div>

                <div class="col-md-10 col-sm-12 col-xs-12">
                    <h6 class="account-table-head">Order History</h6>

                    <div class="table_block table-responsive clearfix" id="order-detail-content">
                        <table class="table table-bordered" id="cart_summary">
                            <thead>
                                <tr>
                                    <th>ORDER NO</th>
                                    <th>ORDER DATE</th>
                                    <th>STATUS</th>
                                    <th>SHIP DATE</th>
                                    <th class="cart_unit item">PRICE</th>
                                </tr>
                            </thead>
                            <tbody class="dropdown-product-list">
                        <asp:Repeater runat="server" ID="rptOrder" OnItemCommand="rptOrder_ItemCommand">
                            <ItemTemplate>
                                <tr class="cart_item first_item address_0 odd dd-product-group">
                                    <td data-title="ORDER NO" class="default">
                                        <span><%#Eval("OrderNo")%></span>
                                    </td>
                                    <td data-title="ORDER DATE" class="date">
                                        <span><%#Eval("OrderDate")%></span>
                                    </td>
                                    <td data-title="STATUS" class="default">
                                        <span><%#Eval("OrderStatus")%></span>
                                    </td>
                                    <%--<td data-title="PRICE" class="cart_unit">--%>
                                        <%--<span class="price"><%#Eval("Price2") %></span>--%>
                                    <%--</td>--%>
                                </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                            </tbody>

                        </table>
                        <div class="container col-xs-12 tfoot">
                            <p class="row info"><span class="pull-left col-xs-6">Shipment Free</span><span class="pull-right col-xs-6 text-right">$10.00</span></p>
                            <p class="row info total"><span class="pull-left col-xs-6">Total Amount</span><span class="col-xs-6 pull-right text-right">$2400.00</span></p>
                        </div>
                        <div>
                           
                                <tr class="summ">
                                    <td colspan="8">
                                        <div class="col-sm-6 text-right">
                                            <ul class="pagination pagination-primary">
                                                <li>
                                                    <asp:LinkButton ID="lbFirst" runat="server" ToolTip="First" CausesValidation="false"><i class="arrow_carrot-2left"></i></asp:LinkButton></li>
                                                <li>
                                                    <asp:LinkButton ID="lbPrev" runat="server" ToolTip="Previus" CausesValidation="false"><i class="arrow_carrot-left"></i></asp:LinkButton></li>
                                                <asp:Label ID="lblPageNo" runat="server" Text="1/10" CssClass="rec" CausesValidation="false" />
                                                <li>
                                                    <asp:LinkButton ID="lbNext" runat="server" ToolTip="Next" CausesValidation="false"><i class="arrow_carrot-right"></i></asp:LinkButton></li>
                                                <li>
                                                    <asp:LinkButton ID="lbLast" runat="server" ToolTip="Last" CausesValidation="false"><i class="arrow_carrot-2right"></i></asp:LinkButton></li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
