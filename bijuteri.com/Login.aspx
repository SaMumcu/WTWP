<%@ Page Title="Login to the website" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 184px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <table class="auto-style2">
    <div style="margin-left:15px; margin-top:15px;">
    <tr>
        <td class="auto-style3">Kullanici Adı</td>
        <td>
            <asp:TextBox ID="txtKullanici" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Şifre</td>
        <td>
            <asp:TextBox ID="txtSifre" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>
            <asp:Button ID="btnGiris" runat="server" Text="Giriş" Width="131px" OnClick="btnGiris_Click" />
        </td>
    </tr>
    </div>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </td>
    </tr>
    </table>

    
</asp:Content>

