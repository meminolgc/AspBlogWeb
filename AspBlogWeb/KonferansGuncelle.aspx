﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="KonferansGuncelle.aspx.cs" Inherits="AspBlogWeb.KonferansGuncelle" %>
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
                <asp:Label ID="Label1" runat="server" Text="KONFERANSLAR"></asp:Label>
                <asp:TextBox ID="txtkonf" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
        
            <asp:Button ID="BtnKyt" runat="server" Text="Güncelle" CssClass="btn btn-success" OnClick="BtnKyt_Click"  />
            
        </div>
    </form>
</asp:Content>