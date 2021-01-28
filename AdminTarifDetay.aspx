<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminTarifDetay.aspx.cs" Inherits="Yemek_Tarifi.AdminTarifDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Tarif Ad:</strong></td>
            <td>
                <asp:TextBox ID="TxtAd" runat="server" CssClass="txt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Tarif Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="TxtMalzeme" runat="server" CssClass="txt" Height="100px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Yapılış:</strong></td>
            <td>
                <asp:TextBox ID="TxtYapilis" runat="server" CssClass="txt" Height="200px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Tarif Resim:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="txt" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Tarif Öneren:</strong></td>
            <td>
                <asp:TextBox ID="TxtOneren" runat="server" CssClass="txt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Öneren Mail:</strong></td>
            <td>
                <asp:TextBox ID="TxtMail" runat="server" CssClass="txt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Yemek Puan:</strong></td>
            <td>
                <asp:TextBox ID="TxtPuan" runat="server" CssClass="txt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Yemek Kategori:</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="txt">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="BtnOnay" runat="server" CssClass="btn" OnClick="BtnOnay_Click" Text="Onayla" />
            </td>
        </tr>
    </table>
</asp:Content>
