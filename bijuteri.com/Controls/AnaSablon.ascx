<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AnaSablon.ascx.cs" Inherits="Controls_AnaSablon" %>
 <div class="default">
                        <div style="width:190px; margin:0 auto; height:150px;">
                            <a href="../UrunAyrinti.aspx?urunID=<%#Eval("urunID") %>"><asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Eval("urunResim") %>' Width="190px" /></a>
                        </div>
                        <div style="height:30px; width:190px; margin:0 auto; background-color:#f9f9f9;">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("urunAdi") %>'></asp:Label>
                        </div>
                        <div style="height:30px; width:190px; margin:0 auto; background-color:#fafafa; color:black; font-weight:bold">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("urunFiyat") %>'></asp:Label>
                            <asp:Label ID="Label3" runat="server" Text=" TL"></asp:Label>

                        </div>
</div>