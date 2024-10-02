﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="HobiListesi.aspx.cs" Inherits="AspBlogWeb.HobiListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="Form1" runat="server">

        <table class="table table-bordered">

            <tr>
                <th>ID</th>
                <th>HOBİ</th>

            </tr>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>

                        <tr>
                            <th><%# Eval("ID") %></th>
                            <td><%# Eval("HOBI") %></td>

                            <td>
                                <asp:HyperLink NavigateUrl='<%#"HobiSil.aspx?ID=" + Eval("ID") %>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                                <asp:HyperLink NavigateUrl='<%#"HobiGuncelle.aspx?ID=" + Eval("ID") %>' ID="HyperLink2" runat="server" CssClass="btn btn-warning">Güncelle</asp:HyperLink>
                            </td>
                        </tr>

                    </ItemTemplate>

                </asp:Repeater>
            </tbody>
        </table>
        <br />
        <asp:HyperLink NavigateUrl="~/HobiEkle.aspx" ID="HyperLink3" runat="server" CssClass="btn btn-primary">Yeni Hobi Ekle</asp:HyperLink>
    </form>
</asp:Content>
