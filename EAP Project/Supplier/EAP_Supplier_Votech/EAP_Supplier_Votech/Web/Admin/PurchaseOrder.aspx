<%@ Page Title="" Language="C#" MasterPageFile="~/Static/Master/Admin/Admin_Master_Page.master" AutoEventWireup="true" CodeBehind="PurchaseOrder.aspx.cs" Inherits="EAP_Supplier_Votech.Web.PurchaseOrder" %>

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
                    <p class="display-4 text-center "><span class="text-success">Process</span> Purchase Orders</p>
                    <hr />
                </div>
            </div>
        </div>

    </header>

    <main>
        <div class="container justify-content-center">

            <div class="container">
                <div class="mb-3 form-inline py-2 shadow-sm bg-light">
                    <asp:TextBox ID="tb_SearchName" runat="server" CssClass="form-control mr-sm-2 ml-2" placeholder="Enter company name" required="required"></asp:TextBox>
                    <asp:Button ID="btn_SearchName" runat="server" Text="Search" CssClass="btn btn-success my-2 my-sm-0  d-inline" OnClick="btn_SearchName_Click" />
                    <asp:Button ID="btn_Refresh" runat="server" Text="Refresh" CssClass="btn btn-warning my-2 my-sm-0 d-inline ml-2 float-right" OnClick="btn_Refresh_Click" />
                </div>

                <asp:GridView ID="gv_PurchaseOrder" runat="server" AutoGenerateColumns="False" DataKeyNames="PO_ID" CssClass="table table-striped table-light table-condensed table-responsive border-0"
                    OnRowDeleting="gv_PurchaseOrder_RowDeleting"
                    OnRowCancelingEdit="gv_PurchaseOrder_RowCancelingEdit"
                    OnRowEditing="gv_PurchaseOrder_RowEditing"
                    OnRowUpdating="gv_PurchaseOrder_RowUpdating" AllowPaging="True"
                    OnPageIndexChanging="gv_PurchaseOrder_PageIndexChanging" PageSize="5" OnSelectedIndexChanged="gv_PurchaseOrder_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="PO_ID" HeaderText="ID" SortExpression="PO_ID" ReadOnly="True" HeaderStyle-Width="5%">
                            <HeaderStyle Width="5%"></HeaderStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="PO_CompanyName" HeaderText="Ship To" SortExpression="PO_CompanyName" ReadOnly="True" HeaderStyle-Width="15%">
                            <HeaderStyle Width="15%"></HeaderStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="OI_ID" HeaderText="OI_ID" SortExpression="OI_ID" ReadOnly="True" HeaderStyle-Width="5%">
                            <HeaderStyle Width="5%"></HeaderStyle>
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="Note" SortExpression="PO_AdminComment" HeaderStyle-Width="30%">
                            <EditItemTemplate>
                                <asp:TextBox ID="tb_AdminComment" runat="server" Text='<%# Bind("PO_AdminComment") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lbl_AdminComment" runat="server" Text='<%# Bind("PO_AdminComment") %>'></asp:Label>
                            </ItemTemplate>

                            <HeaderStyle Width="30%"></HeaderStyle>
                        </asp:TemplateField>
                        <asp:BoundField DataField="PO_Date" HeaderText="Date" SortExpression="PO_Date" ReadOnly="True" HeaderStyle-Width="20%">
                            <HeaderStyle Width="20%"></HeaderStyle>
                        </asp:BoundField>
                        <asp:CommandField SelectText="View" ShowSelectButton="True" />
                        <asp:CommandField ShowEditButton="True" EditText="Comment" />
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="lbl_Delete" runat="server" CausesValidation="False" CommandName="Delete" Text="Reject" OnClientClick="return confirm('Are you sure to reject?')"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>

        

        </div>
    </main>




</asp:Content>
