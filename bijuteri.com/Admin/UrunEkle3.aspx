<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/admin.master" AutoEventWireup="true" CodeFile="UrunEkle3.aspx.cs" Inherits="Admin_UrunEkle3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 191px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" style="color: #666666; font-weight: bold">Urun Adi</td>
            <td>
                <asp:TextBox ID="txtUrunAdi" runat="server" CssClass="txt" Width="300px"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="color: #666666; font-weight: bold">Fiyat</td>
            <td>
                <asp:TextBox ID="txtFiyat" runat="server" CssClass="txt"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="color: #666666; font-weight: bold">Kategori</td>
            <td>
                <asp:dropdownlist ID="kategori" runat="server"></asp:dropdownlist>
                <asp:requiredfieldvalidator runat="server" ID="requiredfieldvalidator" errormessage="RequiredFieldValidator" ControlToValidate="kategori"></asp:requiredfieldvalidator>
            </td>
        </tr>
        
        <tr>
            <td class="auto-style2" style="color: #666666; font-weight: bold">Urunun Resmi</td>
            <td>
                <asp:FileUpload ID="fuResim" runat="server" CssClass="txt" Width="300px" />
                
            </td>
        </tr>
        
        <tr>
            <td class="auto-style2" style="color: #666666; font-weight: bold">&nbsp;</td>
            <td>
                <asp:Button ID="btnEkle" runat="server" CssClass="button1" OnClick="btnEkle_Click" Text="Urun Ekle" Width="87px" EnableTheming="false"/>
            </td>
        </tr>
    </table>
</asp:Content>

