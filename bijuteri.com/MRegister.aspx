<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="MRegister.aspx.cs" Inherits="MRegister" %>

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
        <tr>
            <td class="auto-style3">Ad Soyad</td>
            <td>
                <asp:TextBox ID="MAdSoyad" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Mail</td>
            <td>
                <asp:TextBox ID="MMail" runat="server" TextMode="Email" Width="202px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="Regex1"    
                    runat="server" ErrorMessage="Gecersiz bir mail adresi girdiniz."
                    ControlToValidate="MMail" 
                    ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"
                    ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Sifre</td>
            <td>
               
                <asp:TextBox ID="MPassword" runat="server" TextMode="Password"></asp:TextBox>
               
                <asp:RegularExpressionValidator ID="Regex2" runat="server" ControlToValidate="MPassword"
                    ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" 
                    ErrorMessage="Sifre en az 8 karakter,bir harf ve bir rakam icermeli." 
                    ForeColor="Red" />
        </tr>
        <tr>
            <td class="auto-style3">Sifre Tekrar</td>
            <td>
                <asp:TextBox ID="MPasswordC" runat="server" TextMode="Password"></asp:TextBox>


                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToValidate="MPasswordC"
                    CssClass="ValidationError"
                    ControlToCompare="MPassword"
                    ErrorMessage="Sifreler eslesmedi." 
                    ToolTip="Sifreler aynı olmalı." />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Adres</td>
            <td>
                <asp:TextBox ID="MAdres" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Telefon</td>
            <td>
                <asp:TextBox ID="MTel" runat="server" TextMode="Phone"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Kullanici Adı</td>
            <td>
                <asp:TextBox ID="kullaniciAdi" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Button ID="Kayit" runat="server" Text="Kayıt Ol" Width="112px" OnClick="Kayit_Click" CssClass="button1"/>
            </td>
        </tr>
    </table>
    <asp:Label ID="Hata" runat="server" Text="" Width="200px"></asp:Label>
    
</asp:Content>

