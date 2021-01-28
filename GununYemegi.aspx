<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="Yemek_Tarifi.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            font-size: x-large;
        }
        .auto-style5 {
            font-size: large;
        }
        .auto-style6 {
            font-size: large;
            text-align: center;
        }
        .auto-style7 {
            font-size: large;
            text-align: left;
        }
        .auto-style8 {
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="480px">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4"><strong>
                        &nbsp;<asp:Label ID="Label3" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"><span class="auto-style5">&nbsp;<strong>Malzemeler:</strong> </span>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style5" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5"><strong>&nbsp;Tarif: </strong>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Image ID="Image1" runat="server" Height="200px" Width="400px" ImageUrl='<%# Eval("YemekResim") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7"><strong>&nbsp;<em>Puan:</em></strong>
                        <em>
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style8" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                        </em>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7"><strong>&nbsp;<em>Tarıh:</em> </strong>
                        <em>
                        <asp:Label ID="Label7" runat="server" CssClass="auto-style8" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        </em>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
