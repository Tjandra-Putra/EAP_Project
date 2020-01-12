<%@ Page Title="" Language="C#" MasterPageFile="~/Static/Master/Admin/Admin_Master_Page.master" AutoEventWireup="true" CodeBehind="CustomerOrder_Archived.aspx.cs" Inherits="EAP_Supplier_Votech.Web.Admin.CustomerOrder_Archived" %>

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
                    <p class="display-4 text-center "><span class="text-success">Archived</span> Customer Orders</p>
                    <hr />
                </div>
            </div>
        </div>

    </header>


    <main>
        <div class="container justify-content-center">

            <div class="container">
                <div class="mb-3 form-inline py-2 shadow-sm bg-light">
                    <asp:Button ID="btn_Back" runat="server" Text="Back" CssClass="btn btn-danger my-2 my-sm-0 d-inline ml-2 float-left" OnClick="btn_Back_Click" />

                </div>
            </div>









            <asp:GridView ID="gv_CustomerOrderArchived" CssClass="table table-striped table-light table-condensed table-responsive border-0" runat="server" AutoGenerateColumns="False" DataKeyNames="CO_ID" OnSelectedIndexChanged="gv_CustomerOrderArchived_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="CO_ID" HeaderText="CO_ID" />
                    <asp:BoundField DataField="CO_CompanyName" HeaderText="Ship To" />
                    <asp:BoundField DataField="PO_ID" HeaderText="PO_ID" />
                    <asp:BoundField DataField="CO_AdminComment" HeaderText="Note" />
                    <asp:BoundField DataField="CO_Status" HeaderText="Delivery Status" />
                    <asp:BoundField DataField="CO_Date" HeaderText="Date" />
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text="Restore" OnClientClick="return confirm('Are you sure to restore?')"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </main>

</asp:Content>
