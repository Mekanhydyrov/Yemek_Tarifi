<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminMesaj.aspx.cs" Inherits="Yemek_Tarifi.AdminMesaj" %>

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

        .auto-style9 {
            width: 350px;
        }

        .auto-style10 {
            text-align: right;
            width: 81px;
        }

        .auto-style8 {
            text-align: right;
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
                <td><strong><span class="auto-style5">&nbsp; Mesaj Listesi</span></strong></td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="480px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style9"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text='<%# Eval("MesajAdSoyad") %>'></asp:Label>
                        </strong></td>

                        <td class="auto-style8">
                            <a href="AdminMesajDetay.aspx?Mesajid=<%# Eval("Mesajid") %>">
                                <asp:Image ID="Image3" runat="server" Height="28px" ImageUrl="~/icon/mesaj.png" Width="28px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>

</asp:Content>
