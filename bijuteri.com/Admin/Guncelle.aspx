<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/admin.master" AutoEventWireup="true" CodeFile="Guncelle.aspx.cs" Inherits="Guncelle" %>

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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Urun Adi</td>
            <td>
                <asp:TextBox ID="txtUrunAd" runat="server" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Urun Fiyati</td>
            <td>
                <asp:TextBox ID="txtUrunFiyat" runat="server" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Urunun Detayı</td>
            <td>
                <asp:TextBox ID="txtDetay" runat="server" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" width="200px" OnClick="Button1_Click" Text="Urun Bilgilerini Guncelle" CssClass="button1" EnableTheming="false"/>
            </td>
        </tr>
    </table>
</asp:Content>

