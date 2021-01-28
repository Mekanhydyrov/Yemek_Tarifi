<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminHakkimizda.aspx.cs" Inherits="Yemek_Tarifi.AdminHakkimizda" %>

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
            text-align: center;
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
                <td><strong><span class="auto-style5">&nbsp; Mesaj Listesi</span></strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style7">
        <table class="auto-style4">
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:TextBox ID="TxtHakkimizda" runat="server" CssClass="txt" Height="300px" Width="460px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Button ID="BtnGuncelle" runat="server" CssClass="btn" Text="Güncelle" OnClick="BtnGuncelle_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
