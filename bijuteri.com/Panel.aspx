<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/admin.master" AutoEventWireup="true" CodeFile="Panel.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 98px;
            height: 86px;
        }
        .auto-style2 {
            width: 104px;
            height: 85px;
        }
        .auto-style3 {
            width: 97px;
            height: 85px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h4>İslemler</h4>
    <p>
      <a href="../Admin/UrunEkle3.aspx">  <img alt="urunEkle" class="auto-style1" src="Resimler/ekle.png" /></a></p>
    <p>
      <a href="../Admin/SilUrun.aspx"><img alt="Urun Sil" class="auto-style2" src="Resimler/sil3.png" /></a></p>
    <p>
      <a href="../Admin/UrunGuncelle.aspx"><img alt="Urunu Guncelle" class="auto-style3" src="Resimler/Guncelle.png" /></a></p>


</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h4>Musterilerin En Son Yaptıgı Islemler</h4>
    <asp:gridview ID="gv1" runat="server"></asp:gridview>


</asp:Content>