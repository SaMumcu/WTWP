<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="AlisverisSepeti.aspx.cs" Inherits="AlisverisSepeti" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="float:left; width:700px; height:auto;">Alisveris Sepeti</div>
    <div style="float:right; margin-right:10px; vertical-align:initial;">
        <asp:Label ID="Musteri" runat="server" Text=""></asp:Label>
        <asp:Button ID="Onay" runat="server" Text="Siparisi Onayla" Width="128px" OnClick="Onay_Click" CssClass="button1"/>
        
    </div>
    


    <div style="width:700px; height:auto; float:left;">
        <div style="width:693px;height:auto;margin:0 auto;">
            <asp:datalist runat="server" ID="dlSepet" Width="693px" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <ItemTemplate>
                    <div style="width:200px;background-color:white; float:left; margin:12px; height:250px;border:2px solid">
                        <div style="width:190px; margin:0 auto; height:150px; background-color:white">
                           <a href="SilSepetten.aspx?urunID=<%#Eval("urunID") %>"><asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Eval("urunResim") %>' Width="190px" /></a>
                        </div>
                        <div style="height:30px; width:190px; margin:0 auto; background-color:#f9f9f9;">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("urunAdi") %>'></asp:Label>
                        </div>
                        <div style="height:30px; width:190px; margin:0 auto; background-color:#fafafa; color:black; font-weight:bold">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("urunFiyat") %>'></asp:Label>
                            <asp:Label ID="Label4" runat="server" Text=" TL"></asp:Label>

                        </div>
                        <div style="height:30px; width:190px; margin:0 auto; background-color:#fafafa; color:black; font-weight:bold">
                            <asp:Label ID="Label3" runat="server" Text='Adet:'></asp:Label>

                        </div>
                    </div>
                </ItemTemplate>
            </asp:datalist>

           <!-- <asp:DataList ID="dlayri" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" Width="680px">
                <ItemTemplate>
                    <div style="width: 200px; height: 220px; background-color:white; float:left; margin:12px;">
                        <div style="height:30px; width:190px; margin:0 auto; background-color:#fafafa; color:black; font-weight:bold">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("MusteriID") %>'></asp:Label>

                        </div>
                    </div>
                </ItemTemplate>

            </asp:DataList>
              --->

            
        </div>

    </div>
</asp:Content>

