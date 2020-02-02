<%@ Page Title="" Language="C#" MasterPageFile="~/Static/Master/Admin/Admin_Master_Page.master" AutoEventWireup="true" CodeBehind="ListOfInvoiceViewMore.aspx.cs" Inherits="EAP_Supplier_Votech.Web.Admin.PaymentStatusViewMore" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header>

        <div class="container">
            <div class="title">
                <div class="container-fluid">
                    <p class="display-4 text-center ">Order Items for Invoice</p>
                    <hr />
                </div>
            </div>
        </div>
        <div class="container">

            <asp:GridView ID="gvViewMore" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="OI_ID" HeaderText="Order Item Reference" />
                    <asp:BoundField DataField="OI_TotalAmount" HeaderText="Total Amount of that item" />
                    <asp:BoundField DataField="OI_Name" HeaderText="Name of Product" />
                    <asp:BoundField DataField="OI_Desc" HeaderText="Description of item" />
                    <asp:BoundField DataField="OI_Price" HeaderText="Price per item" />
                    <asp:BoundField DataField="OI_Qty" HeaderText="Quantity of item" />
                    <asp:BoundField DataField="CO_ID" HeaderText="Customer Order Reference" />
                </Columns>
            </asp:GridView>

        </div>

    </header>
</asp:Content>
