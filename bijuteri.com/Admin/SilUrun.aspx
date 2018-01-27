<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/admin.master" AutoEventWireup="true" CodeFile="SilUrun.aspx.cs" Inherits="SilUrun" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="float:left; width:700px; height:auto;">Urunler</div>

    <div style="width:700px; height:auto; float:left;">
        <div style="width:680px;height:auto;margin:0 auto;">
            <asp:datalist runat="server" ID="dlSilinecek" Width="680px" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <ItemTemplate>
                    <div style="width: 200px; height: 220px; background-color: #f5f5f5; float:left; margin:12px;">
                        <div style="width:190px; margin:0 auto; height:150px;">
                            <a href="Sil.aspx?urunID=<%#Eval("urunID") %>"><asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Eval("urunResim") %>' Width="190px" /></a>
                        </div>
                        <div style="height:30px; width:190px; margin:0 auto; color:#808080;">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("urunAdi") %>'></asp:Label>
                        </div>
                        <div style="height:30px; width:190px; margin:0 auto; color:#808080; font-weight:bold">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("urunFiyat") %>'></asp:Label>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:datalist>

        </div>

    </div>
</asp:Content>

