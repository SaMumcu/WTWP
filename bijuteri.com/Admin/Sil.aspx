<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/admin.master" AutoEventWireup="true" CodeFile="Sil.aspx.cs" Inherits="Admin_Sil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="width:700px; height:auto; float:left;">
        <div style="width:680px;height:auto;margin:0 auto;">
            <asp:datalist runat="server" ID="dlSil" Width="680px" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <ItemTemplate>
                    <div style="width: 200px; height: 220px; background-color: #f5f5f5; float:left; margin:12px;">
                        <div style="width:190px; margin:0 auto; height:150px;">
                            <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Eval("urunResim") %>' Width="190px" />
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

    <asp:Button ID="Button1" runat="server" Text="Sil" OnClick="Button1_Click" CssClass="button1" EnableTheming="false"/>
</asp:Content>

