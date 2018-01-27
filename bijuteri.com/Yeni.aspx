<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Yeni.aspx.cs" Inherits="Yeni" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="float:left; width:700px; height:auto; font-size:medium;">En Yeniler</div>
    <br />
    <br />
    <div style="width:700px; height:auto; float:left;">
        <div style="width:693px;height:auto;margin:0 auto;">
            <asp:datalist runat="server" ID="dlYeni" Width="693px" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <ItemTemplate>
                    <div class="default">
                        <div style="width:200px; margin:0 auto; height:150px;">
                            <a href="UrunAyrinti.aspx?urunID=<%#Eval("urunID") %>"><asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Eval("urunResim") %>' Width="200px" /></a>
                        </div>
                        <div style="height:30px; width:190px; margin:0 auto; background-color:#f9f9f9;">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("urunAdi") %>'></asp:Label>
                        </div>
                        <div style="height:30px; width:190px; margin:0 auto; background-color:#fafafa; color:black; font-weight:bold">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("urunFiyat") %>'></asp:Label>
                            <asp:Label ID="Label3" runat="server" Text=" TL"></asp:Label>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:datalist>

        </div>

    </div>
</asp:Content>

