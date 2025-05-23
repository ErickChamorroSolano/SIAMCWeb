<%@ Page Title="PUC" Language="vb" AutoEventWireup="false" CodeBehind="PUC.aspx.vb" Inherits="SIAMCWeb.PUC" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContent">
    <asp:TextBox ID="txtnombre" runat="server" />
    <br />
    <asp:Button ID="btnAceptar" runat="server" OnClick="btnAceptar_Click" Text="Aceptar" />
</asp:Content>
