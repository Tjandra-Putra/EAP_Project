﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Static/Master/Admin/Admin_Master_Page.master" AutoEventWireup="true" CodeBehind="SendingInvoice.aspx.cs" Inherits="EAP_Supplier_Votech.Web.Admin.Invoice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        @import url('https://fonts.googleapis.com/css?family=Acme|Lobster|Patua+One|Rubik|Sniglet&display=swap');

        @import url('https://fonts.googleapis.com/css?family=Luckiest+Guy|Open+Sans|Pacifico|Permanent+Marker|Roboto|Volkhov&display=swap');

        @import url('https://fonts.googleapis.com/css?family=Cinzel|Cinzel+Decorative|Hind+Madurai|Lalezar|Nanum+Myeongjo&display=swap');

        /* GLOBAL */
        :root {
            --Snigle-font: "Sniglet", cursive;
            --Rubik: "Rubik", cursive;
            --Patua: "Patua One", cursive;
            --Lobster: "Lobster", cursive;
            --Roboto: 'Roboto', sans-serif;
            --OpenSans: 'Open Sans', sans-serif;
        }

        main {
            font-family: var(--OpenSans);
        }
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

    </header>

    <main>
        <div class="container justify-content-center">
            <div class="container">
                <asp:GridView ID="gvInvoice" runat="server" AutoGenerateColumns="False" OnRowCommand="gvInvoice_RowCommand" CssClass="table shadow table-light border-0 table-condensed table-responsive table-hover mb-5">
                    <HeaderStyle
                        BackColor="#606060"
                        Height="35"
                        ForeColor="White"
                        Font-Bold="True" />
                    <Columns>
                        <asp:BoundField DataField="CO_ID" HeaderText="Customer Order Reference" />
                        <asp:BoundField DataField="CO_CompanyName" HeaderText="Customer Order Company Name" />
                        <asp:BoundField DataField="CO_Date" HeaderText="Customer Order Date" />
                        <asp:BoundField DataField="CO_CompanyEmail" HeaderText="Company Email" />
                        <asp:BoundField DataField="CO_CompanyAddress" HeaderText="Company Address" />
                        <asp:BoundField DataField="DO_Status" HeaderText="Delivery Order Status" />
                        <asp:BoundField DataField="CO_TotalAmount" HeaderText="Total Amount" />
                        <asp:TemplateField HeaderText="View Details" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="View Details" Text="View Details"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Generate Invoice" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Generate Invoice" Text="Create Invoice"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </main>



</asp:Content>
