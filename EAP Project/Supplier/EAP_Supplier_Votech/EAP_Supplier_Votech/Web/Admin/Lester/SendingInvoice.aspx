<%@ Page Title="" Language="C#" MasterPageFile="~/Static/Master/Admin/Admin_Master_Page.master" AutoEventWireup="true" CodeBehind="SendingInvoice.aspx.cs" Inherits="EAP_Supplier_Votech.Web.Admin.Invoice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


      <header>

        <div class="container">
            <div class="title">
                <div class="container-fluid">
                    <p class="display-4 text-center ">List Of Customer Order</p>
                    <hr />
                </div>
            </div>
        </div>
          <div class="container">
              <asp:GridView ID="gvInvoice" runat="server" AutoGenerateColumns="False">
                  <Columns>
                      <asp:BoundField DataField="CO_ID" HeaderText="Customer Order Reference" />
                      <asp:BoundField DataField="PO_CompanyName" HeaderText="Customer Order Company Name" />
                      <asp:BoundField DataField="PO_Date" HeaderText="Customer Order Date" />
                      <asp:BoundField DataField="PO_CompanyEmail" HeaderText="CO Company Email" />
                      <asp:BoundField DataField="PO_CompanyAddress" HeaderText="CO Company Address" />
                      <asp:BoundField DataField="DO_Status" HeaderText="Delivery Order Status" />
                      <asp:CommandField HeaderText="Generate Invoice" ShowSelectButton="True" />
                  </Columns>
              </asp:GridView>
          </div>

    </header>



</asp:Content>
