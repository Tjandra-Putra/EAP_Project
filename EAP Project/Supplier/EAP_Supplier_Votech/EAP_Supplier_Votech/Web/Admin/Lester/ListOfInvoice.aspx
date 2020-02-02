<%@ Page Title="" Language="C#" MasterPageFile="~/Static/Master/Admin/Admin_Master_Page.master" AutoEventWireup="true" CodeBehind="ListOfInvoice.aspx.cs" Inherits="EAP_Supplier_Votech.Web.Admin.PaymentStatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header>

        <div class="container">
            <div class="title">
                <div class="container-fluid">
                    <p class="display-4 text-center ">List of Invoice</p>
                    <hr />
                </div>
            </div>
        </div>
        <div class="container">

            <asp:GridView ID="gv_PaymentStatus" runat="server" AutoGenerateColumns="False" OnRowUpdating="gv_PaymentStatus_RowUpdating" OnRowCancelingEdit="gv_PaymentStatus_RowCancelingEdit" OnRowEditing="gv_PaymentStatus_RowEditing" DataKeyNames="CO_ID" OnSelectedIndexChanged="gv_PaymentStatus_SelectedIndexChanged">
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
                    <asp:CommandField HeaderText="View Order items " SelectText="View More" ShowSelectButton="True" />
                    <asp:CommandField EditText="Update Status" HeaderText="Update of Payment Status " ShowEditButton="True" />
                </Columns>
            </asp:GridView>

        </div>

    </header>
</asp:Content>
