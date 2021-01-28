<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminGununYemegi.aspx.cs" Inherits="Yemek_Tarifi.AdminGununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style7 {
            background-color: #CCCCCC;
        }

        .auto-style11 {
            width: 30px;
        }

        .auto-style12 {
            width: 55px;
        }

        .auto-style13 {
            width: 274px;
        }

        .auto-style14 {
            text-align: right;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style7">
        <table class="auto-style4">
            <tr>
                <td class="auto-style11">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style5" Font-Bold="True" Height="35px" Text="+" Width="35px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style12">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style5" Font-Bold="True" Height="35px" Text="-" Width="35px" OnClick="Button2_Click" />
                </td>
                <td><strong><span class="auto-style5">Yemek Listesi</span></strong></td>
            </tr>
        </table>
    </asp:Panel>
     <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="480px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style13"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </strong></td>
                        <td class="auto-style14">
                            <a href="AdminYemekDetay.aspx?Yemekid=<%# Eval("Yemekid") %>">
                                <asp:Image ID="Image3" runat="server" Height="28px" ImageUrl="~/icon/seç.png" Width="28px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
