<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/admin.master" AutoEventWireup="true" CodeFile="UrunDetay.aspx.cs" Inherits="Admin_UrunDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 305px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Urun</td>
            <td>
                <asp:DropDownList ID="ddlIlan" runat="server" CssClass="ddl" Width="200px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Urunun Detayı</td>
            <td>
                <asp:TextBox ID="txtDetay" runat="server" TextMode="MultiLine" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlKategori" ErrorMessage="Bos gecilemez"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" CssClass="button1" OnClick="Button1_Click" Text="Detay Ekle" EnableTheming="false"/>
            </td>
        </tr>
    </table>
</asp:Content>


