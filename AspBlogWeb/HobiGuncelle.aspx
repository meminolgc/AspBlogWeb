<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="HobiGuncelle.aspx.cs" Inherits="AspBlogWeb.HobiGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

      <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label ID="Label2" runat="server" Text="ID"></asp:Label>
                <asp:TextBox ID="txtid" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label1" runat="server" Text="HOBI"></asp:Label>
                <asp:TextBox ID="txthobi" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
        
            <asp:Button ID="BtnKyt" runat="server" Text="Güncelle" CssClass="btn btn-primary" OnClick="BtnKyt_Click" />
            
        </div>
    </form>

</asp:Content>
