<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="UrunAyrinti.aspx.cs" Inherits="UrunAyrinti" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="float:left; width:700px; height:auto; font-size:medium;">Urunler</div>
    <br />
    <div style="float:right; margin-right:10px;">
        <asp:Label ID="Musteri" runat="server" Text=""></asp:Label>
    </div>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Label ID="toplamFiyat" runat="server" Text=""></asp:Label>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="sepeteEkle" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>

    <div style="width:700px; height:auto; float:left;">
        <div style="width:340px;height:auto;margin:0 auto; float:left;">
            <asp:datalist runat="server" ID="dlAyrinti" Width="340px" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <ItemTemplate>
                    <div class="default">
                        <div style="width:190px; margin:0 auto; height:150px;">
                            <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Eval("urunResim") %>' Width="190px" />
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
            <asp:Button ID="sepeteEkle" runat="server" Text="Sepete Ekle" BackColor="Black" ForeColor="White" Height="35px" Width="120px" Font-Bold="True" OnClick="sepeteEkle_Click" EnableTheming="false"/><br /> 
            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
        </div>

        <div style="width:330px;height:auto;margin:0 auto; float:right;">
            <asp:datalist runat="server" ID="dlAyrinti2" Width="330px" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <ItemTemplate>
                    <div style="width: 200px; height: 100px; background-color:white ; float:left; margin:12px;">
                        
                        <div style="height:30px; width:190px; margin:0 auto; color:#808080; font-weight:bold">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("urunDetay") %>'></asp:Label>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:datalist>
            
        </div>

        
           
        
        
    </div>
    
</asp:Content>

