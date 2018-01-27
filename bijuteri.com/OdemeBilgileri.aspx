<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="OdemeBilgileri.aspx.cs" Inherits="OdemeBilgileri" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style2 {
        width: 100%;
    }
    .auto-style3 {
        width: 295px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <table class="auto-style2">
    <tr>
        <td class="auto-style3">Kredi Karti Sahibi</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="221px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox1" ErrorMessage="Bos gecilemez"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Kart Numarası</td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server" Width="200px"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" MaximumValue="999999" MinimumValue="000000" ControlToValidate="TextBox5" Type="Integer" runat="server" ErrorMessage="Kart numarasi gecersiz."></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="Bos gecilemez"></asp:RequiredFieldValidator>

        </td>
    </tr>
    <tr>
        <td class="auto-style3">Güvenlik Kodu/CVV2</td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server" Width="63px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegExp1" runat="server"    
                ErrorMessage="Guvenlik kodu araligi yanlis."
                ControlToValidate="TextBox6"    
                ValidationExpression="^[0-9]{0,3}$" />
            <asp:RangeValidator ID="RangeValidator2" MaximumValue="999" MinimumValue="001" ControlToValidate="TextBox6" Type="Integer" runat="server" ErrorMessage="CVV2 yanlis girildi."></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Bos gecilemez"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Son Kullanma Tarihi</td>
        <td>
            <asp:TextBox ID="TextBox7" runat="server" Width="64px" Text="Ay"></asp:TextBox>
             <asp:RangeValidator ID="RangeValidator3" ControlToValidate="TextBox7"  MinimumValue="01" MaximumValue="12" Type="Integer" runat="server" ErrorMessage="Ay bilgisi yanlis."></asp:RangeValidator>
            <asp:TextBox ID="TextBox8" runat="server" Width="67px" Text="Yil"></asp:TextBox>
           
            <asp:RangeValidator ID="RangeValidator4" ControlToValidate="TextBox8" MinimumValue="2017" MaximumValue="2042" Type="Integer"  runat="server" ErrorMessage="Yil bilgisi yanlis."></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="Bos gecilemez"></asp:RequiredFieldValidator>
        </td>
    </tr>
   
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Odeme Yap" Width="103px" CssClass="button1"/>
        </td>
    </tr>
</table>

    
</asp:Content>

