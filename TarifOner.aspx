<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="Yemek_Tarifi.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        text-align: right;
    }
        .auto-style5 {
            font-size: x-large;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <caption class="auto-style5">
            <strong><em style="border-bottom-style: groove; border-bottom-width: thin">&nbsp;Tarif Öner Paneli</em></strong></caption>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4"><strong>Tarif Ad :</strong></td>
        <td>
            <asp:TextBox ID="TxtTarifAd" runat="server" Width="250px" CssClass="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4"><strong>Malzeme :</strong></td>
        <td>
            <asp:TextBox ID="TxtMalzeme" runat="server" Height="150px" TextMode="MultiLine" Width="250px" CssClass="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4"><strong>Yapılış :</strong></td>
        <td>
            <asp:TextBox ID="TxtYapilis" runat="server" Height="200px" TextMode="MultiLine" Width="250px" CssClass="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4"><strong>Resim :</strong></td>
        <td>
            <asp:FileUpload ID="FlResim" runat="server" Width="250px" CssClass="txt" />
        </td>
    </tr>
    <tr>
        <td class="auto-style4"><strong>Tarif Öneren :</strong></td>
        <td>
            <asp:TextBox ID="TxtOneren" runat="server" Width="250px" CssClass="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4"><strong>Mail Adresi :</strong></td>
        <td>
            <asp:TextBox ID="TxtMail" runat="server" TextMode="Email" Width="250px" CssClass="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style2">
            <asp:Button ID="BtnTarif" runat="server" CssClass="btn" Font-Bold="True" Font-Italic="True" Text="Tarif Öner" Width="175px" OnClick="BtnTarif_Click" />
        </td>
    </tr>
</table>
</asp:Content>
