<%@ Page Title="" Language="C#" MasterPageFile="~/Static/Master/Admin/Admin_Master_Page.master" AutoEventWireup="true" CodeBehind="ListOfSupplierInvoice.aspx.cs" Inherits="EAP_Company_FixTech.Web.Admin.TrackingOfPaymentStatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header>

        <div class="title">
            <div class="container-fluid ">
                <p class="display-4 text-center ">List of Supplier Invoice</p>
            </div>
        </div>
        <div class="container">

            <asp:GridView ID="gv_PaymentStatus" runat="server" AutoGenerateColumns="False" onrowcommand="gv_PaymentStatus_RowCommand">
                <Columns>
                    <asp:BoundField DataField="CO_ID" HeaderText="Customer Order ID" ReadOnly="True" />
                    <asp:BoundField DataField="InvoiceNum" HeaderText="Invoice Number Reference" ReadOnly="True" />
                    <asp:BoundField DataField="InvoiceDate" HeaderText="Date when Invoice is Sent" ReadOnly="True" />
                    <asp:BoundField DataField="InvoiceTotalAmt" HeaderText="Total amount to pay" ReadOnly="True" />
                    <asp:BoundField DataField="InvoiceStatus" HeaderText="Invoice Status" ReadOnly="True" />
                    <asp:BoundField DataField="PO_CompanyName" HeaderText="Company Name" ReadOnly="True" />
                    <asp:BoundField DataField="PO_Date" HeaderText="Date when company make purchase order" ReadOnly="True" />
                    <asp:BoundField DataField="PO_CompanyEmail" HeaderText="Company Email" ReadOnly="True" />
                    <asp:BoundField DataField="PO_CompanyContact" HeaderText="Company Contact Number" />
                    <asp:TemplateField HeaderText="Payment Status">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtCOPaymentStatus" runat="server" Text='<%# Bind("CO_PaymentStatus") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblCOPaymentStatus" Text='<%# Bind("CO_PaymentStatus") %>'  runat="server"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="View Purchase Order Items" ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="View More" Text="View More"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Payment" ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Pay" Text="Pay"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>

        </div>

    </header>
</asp:Content>
