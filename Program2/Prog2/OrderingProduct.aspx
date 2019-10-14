<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="OrderingProduct.aspx.cs" Inherits="Program2.Prog2.OrderingProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 23px;
            width: 248px;
        }
        .auto-style2 {
            height: 23px;
            width: 148px;
        }
        .auto-style3 {
            width: 148px;
        }
        .auto-style4 {
            height: 23px;
            width: 116px;
        }
        .auto-style5 {
            width: 116px;
        }
        .auto-style6 {
            height: 23px;
            width: 149px;
        }
        .auto-style7 {
            width: 149px;
        }
        .auto-style8 {
            width: 248px;
        }
        .auto-style9 {
            width: 149px;
            text-align: left;
        }
        .auto-style10 {
            width: 148px;
            height: 30px;
        }
        .auto-style11 {
            width: 116px;
            height: 30px;
        }
        .auto-style12 {
            width: 149px;
            height: 30px;
        }
        .auto-style13 {
            width: 248px;
            height: 30px;
        }
        .auto-style14 {
            width: 100%;
            height: 226px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
    <table class="auto-style14">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
            </td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">
                <asp:Label ID="Label4" runat="server" Text="Sub Total"></asp:Label>
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtID" ErrorMessage="ID cannot be empty!"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="txtSubTotal" runat="server" ReadOnly="True" ></asp:TextBox>
            </td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Text="Price"></asp:Label>
            </td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="Label5" runat="server" Text="Tax"></asp:Label>
            </td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPrice" ErrorMessage="Price Cannot be empty!"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPrice" ErrorMessage="Unit Price must be a positive number" MaximumValue="9999999999999999999999999" MinimumValue="0"></asp:RangeValidator>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="txtTax" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label3" runat="server" Text="Quantity"></asp:Label>
            </td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="Label6" runat="server" Text="Grand Total"></asp:Label>
            </td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:TextBox ID="txtQuanity" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtQuanity" Display="Dynamic" ErrorMessage="Quanity cannot be empty!"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtQuanity" ErrorMessage="Quanity must be a non-negative number" MaximumValue="99999999999999999999999" MinimumValue="0"></asp:RangeValidator>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="txtGrandTotal" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:Button ID="btnCompute" runat="server" Text="Compute" OnClick="btnCompute_Click" />
            </td>
            <td class="auto-style11"></td>
            <td class="auto-style12">
                <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Text="Reset" />
            </td>
            <td class="auto-style13"></td>
        </tr>
    </table>
        </div>
</asp:Content>
