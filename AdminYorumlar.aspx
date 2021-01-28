<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminYorumlar.aspx.cs" Inherits="Yemek_Tarifi.AdminYorumlar" %>
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
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style5" Font-Bold="True" Height="35px" Text="+" Width="35px" OnClick="Button1_Click"/>
                </td>
                <td class="auto-style12">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style5" Font-Bold="True" Height="35px" Text="-" Width="35px" OnClick="Button2_Click"  />
                </td>
                <td><strong><span class="auto-style5">&nbsp; Onaylanan Yorum Listesi</span></strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="480px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style9"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style10"><a href="AdminYorumlar.aspx?Yorumid=<%#Eval("Yorumid") %> &islem=sil">
                            <asp:Image ID="Image2" runat="server" Height="28px" ImageUrl="~/icon/Delete.png" Width="28px" />
                            </a></td>
                        <td class="auto-style8"><a href="AdminYorumDetay.aspx?Yorumid=<%# Eval("Yorumid") %>">
                            <asp:Image ID="Image3" runat="server" Height="28px" ImageUrl="~/icon/Update.png" Width="28px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <br />
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style7">
        <table class="auto-style4">
            <tr>
                <td class="auto-style11">
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style5" Font-Bold="True" Height="35px" Text="+" Width="35px" OnClick="Button3_Click"/>
                </td>
                <td class="auto-style12">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style5" Font-Bold="True" Height="35px" Text="-" Width="35px" OnClick="Button4_Click"  />
                </td>
                <td><strong><span class="auto-style5">&nbsp; Onaysız Yorum Listesi</span></strong></td>
            </tr>
        </table>
    </asp:Panel>
     <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style9"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style10"><a href="AdminYorumlar.aspx?Yorumid=<%#Eval("Yorumid") %> &islem=sil">
                            <asp:Image ID="Image2" runat="server" Height="28px" ImageUrl="~/icon/Delete.png" Width="28px" />
                            </a></td>
                        <td class="auto-style8"><a href="AdminYorumDetay.aspx?Yorumid=<%# Eval("Yorumid") %>">
                            <asp:Image ID="Image3" runat="server" Height="28px" ImageUrl="~/icon/Update.png" Width="28px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
