<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="Yemek_Tarifi.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            font-size: x-large;
            color: #FFFFFF;
        }
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            font-size: large;
        }
        .auto-style7 {
            text-align: right;
        }
        .auto-style8 {
            font-size: x-small;
            color: #000000;
        }
        .auto-style9 {
            font-size: x-large;
        }
        .auto-style10 {
            font-size: medium;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style4" Text="Label"></asp:Label>
    <br />
    <br />
    </strong>
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style5">
                <tr>
                    <td><strong>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style6" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        : </strong></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Yorumİcerik") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style8" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #000000;">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />
    <br />
    <div style="border-bottom-style: groove; border-bottom-width: thin">
        &nbsp;<strong><span class="auto-style9">Yorum Paneli </span></strong>
    </div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style5">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10"><strong>Ad Soyad:</strong></td>
                <td>
                    <asp:TextBox ID="TxtYorumAd" runat="server" Height="20px" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"><strong>Mail:</strong></td>
                <td>
                    <asp:TextBox ID="TxtYorumMail" runat="server" Height="20px" TextMode="Email" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"><strong>Yorumunuz:</strong></td>
                <td>
                    <asp:TextBox ID="TxtYorumİcerik" runat="server" Height="150px" TextMode="MultiLine" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click" Text="Yorum Yap" CssClass="btn" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
