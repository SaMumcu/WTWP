<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Bileklik.aspx.cs" Inherits="SubMenu_Bileklik" %>

<%@ Register Src="~/Controls/AnaSablon.ascx" TagPrefix="uc1" TagName="AnaSablon" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div style="float:left; width:700px; height:auto; font-size:medium;">Bileklikler</div>
    <br />
    <br />
    <div style="width:700px; height:auto; float:left;">
        <div style="width:693px;height:auto;margin:0 auto;">
            <asp:datalist runat="server" ID="dlBileklik" Width="693px" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <ItemTemplate>
                    <uc1:AnaSablon runat="server" ID="AnaSablon" />
                </ItemTemplate>
            </asp:datalist>

        </div>

    </div>
</asp:Content>

