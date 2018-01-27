<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Firsatlar.aspx.cs" Inherits="Firsatlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="float:left; width:700px; height:auto; font-size:medium;">Firsatlar</div>

    <div style="width:700px; height:auto; float:left;">
        <div style="width:693px;height:auto;margin:0 auto;">
            <asp:datalist runat="server" ID="dlFirsatlar" Width="693px" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <ItemTemplate>
                    <div class="default">
                        <div style="width:200px; margin:0 auto; height:150px;">
                           <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Eval("urunResim") %>' Width="200px" />
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

