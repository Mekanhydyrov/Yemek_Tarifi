<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminYemekler.aspx.cs" Inherits="Yemek_Tarifi.AdminYemekler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            background-color: #CCCCCC;
        }

        .auto-style8 {
            text-align: right;
        }

        .auto-style9 {
            width: 350px;
        }

        .auto-style10 {
            text-align: right;
            width: 81px;
        }

        .auto-style11 {
            width: 30px;
        }

        .auto-style12 {
            width: 55px;
        }

        .auto-style13 {
            text-align: right;
            font-size: medium;
        }

        .auto-style14 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style7">
        <table class="auto-style4">
            <tr>
                <td class="auto-style11">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style5" Font-Bold="True" Height="35px" Text="+" Width="35px" OnClick="Button1_Click1" />
                </td>
                <td class="auto-style12">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style5" Font-Bold="True" Height="35px" Text="-" Width="35px" OnClick="Button2_Click" />
                </td>
                <td><strong><span class="auto-style5">Yemek Listesi</span></strong></td>
            </tr>
        </table>
    </asp:Panel>
    <br />
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="480px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style9"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </strong></td>
                        <td class="auto-style10">
                          <a href="AdminYemekler.aspx?Yemekid=<%#Eval("Yemekid") %> &islem=sil"><asp:Image ID="Image2" runat="server" Height="28px" ImageUrl="~/icon/Delete.png" Width="28px" /></a>
                        </td>
                        <td class="auto-style8">
                            <a href="AdminYemekDetay.aspx?Yemekid=<%# Eval("Yemekid") %>">
                                <asp:Image ID="Image3" runat="server" Height="28px" ImageUrl="~/icon/Update.png" Width="28px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style7" Style="margin-top: 15px">
        <table class="auto-style4">
            <tr>
                <td class="auto-style11">
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style5" Font-Bold="True" Height="35px" Text="+" Width="35px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style12">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style5" Font-Bold="True" Height="35px" Text="-" Width="35px" OnClick="Button4_Click" />
                </td>
                <td><strong><span class="auto-style5">Yemek Ekleme</span></strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style4">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13"><strong>Yemek Ad:</strong></td>
                <td>
                    <asp:TextBox ID="TxtYemekAd" runat="server" Width="298px" Font-Size="Medium" Height="20px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13"><strong>Malzemeler:</strong></td>
                <td>
                    <asp:TextBox ID="TxtMalzeme" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8"><strong>Yemek Tarif:</strong></td>
                <td>
                    <asp:TextBox ID="TxtTarif" runat="server" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8"><strong>Kategori:</strong></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="307px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style14">
                    <asp:Button ID="BtnEkle" runat="server" Font-Bold="True" Font-Italic="False" Height="35px" OnClick="BtnEkle_Click" Text="Ekle" Width="150px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <br />
</asp:Content>
