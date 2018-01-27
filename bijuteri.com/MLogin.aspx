<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="MLogin.aspx.cs" Inherits="MLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 184px;
        }
        .auto-style4 {
            width: 184px;
            height: 33px;
        }
        .auto-style5 {
            height: 33px;
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
        <td class="auto-style4"></td>
        <td class="auto-style5">
            <asp:Button ID="btnGiris" runat="server" Text="Giriş" Width="68px" OnClick="btnGiris_Click" />
        </td>
    </tr>
    </div>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Henuz kayıt olmadınız mı?"></asp:Label>
            <br />
            <br />
            <div>
                <a href="MRegister.aspx"><asp:Label ID="Label3" runat="server" Text="Kayıt olmak icin tıklayınız." BackColor="Red"></asp:Label></a>
            </div>
        </td>
    </tr>
    </table>
</asp:Content>

