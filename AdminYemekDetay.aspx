<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminYemekDetay.aspx.cs" Inherits="Yemek_Tarifi.AdminYemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            text-align: right;
            width: 120px;
        }
        .auto-style7 {
            width: 120px;
        }
        .auto-style8 {
            text-align: right;
            width: 120px;
            height: 26px;
        }
        .auto-style9 {
            height: 26px;
        }
        .auto-style10 {
            text-align: center;
        }
        .auto-style11 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Yemek Ad:</strong></td>
            <td>
                <asp:TextBox ID="TxtAd" runat="server" Width="298px" CssClass="txt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Malzeme:</strong></td>
            <td>
                <asp:TextBox ID="TxtMalzeme" runat="server" Height="100px" TextMode="MultiLine" Width="300px" CssClass="txt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Tarif:</strong></td>
            <td>
                <asp:TextBox ID="TxtTarif" runat="server" Height="200px" TextMode="MultiLine" Width="300px" CssClass="txt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Kategori::</strong></td>
            <td class="auto-style9">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="35px" Width="307px" CssClass="txt">
                </asp:DropDownList>
            </td>
        </tr>       
        <tr>
            <td class="auto-style6"><strong>Yemek Fotograf:</strong></td>
            <td class="auto-style11">
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="txt" Height="35px" Width="307px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style10">
                <asp:Button ID="BtnGuncelle" runat="server" Font-Bold="True" OnClick="Button1_Click" Text="Güncelle" CssClass="btn" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style10">
                <asp:Button ID="BtnGununYemegi" runat="server" CssClass="btn" OnClick="Button1_Click1" Text="Günün Yemeğini Seç" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
