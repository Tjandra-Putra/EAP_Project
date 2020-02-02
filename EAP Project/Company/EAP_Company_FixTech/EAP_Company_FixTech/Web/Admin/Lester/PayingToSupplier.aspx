<%@ Page Title="" Language="C#" MasterPageFile="~/Static/Master/Admin/Admin_Master_Page.master" AutoEventWireup="true" CodeBehind="PayingToSupplier.aspx.cs" Inherits="EAP_Company_FixTech.Web.Admin.PayingToSupplier" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 290px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header>

        <div class="title">
            <div class="container-fluid ">
                <p class="display-4 text-center ">Payment</p>
            </div>
        </div>
        <div class="container">

            <table class="w-100">
                <tr>
                    <td class="auto-style1">Supplier ID</td>
                    <td>
                        <asp:TextBox ID="txtSupplierID" runat="server" Width="711px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Supplier Name</td>
                    <td>
                        <asp:TextBox ID="txtSupplierName" runat="server" Width="710px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Supplier Address</td>
                    <td>
                        <asp:TextBox ID="txtSupplierAddress" runat="server" Width="709px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Supplier Contact Number</td>
                    <td>
                        <asp:TextBox ID="txtSupplierNum" runat="server" Width="705px"></asp:TextBox>
                    </td>
                </tr>
            </table>

            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnPay" runat="server" Text="Pay" OnClick="btnPay_Click" />

        </div>

    </header>
</asp:Content>
