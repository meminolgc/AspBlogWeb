<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="KonferansListesi.aspx.cs" Inherits="AspBlogWeb.KonferansListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">

        <table class="table table-bordered">

            <tr>
                <th>ID</th>
                <th>KONFERANSLAR</th>
                <th>İŞLEMLER</th>

            </tr>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>

                        <tr>
                            <th><%# Eval("ID") %></th>
                            <td><%# Eval("KONFERANSLAR") %></td>

                            <td>
                                <asp:HyperLink NavigateUrl='<%#"KonferansSil.aspx?ID=" + Eval("ID") %>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                                <asp:HyperLink NavigateUrl='<%#"KonferansGuncelle.aspx?ID=" + Eval("ID") %>' ID="HyperLink2" runat="server" CssClass="btn btn-warning">Güncelle</asp:HyperLink>
                            </td>
                        </tr>

                    </ItemTemplate>

                </asp:Repeater>
            </tbody>
        </table>
        <br />
        <asp:HyperLink NavigateUrl="~/KonferansEkle.aspx" ID="HyperLink3" runat="server" CssClass="btn btn-primary">Yeni Konferans Ekle</asp:HyperLink>
    </form>

</asp:Content>
