<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="Page1" Title="Untitled Page" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <dxp:ASPxPanel ID="ASPxPanel1" runat="server" Height="100%" Width="100%" BackColor="Indigo">
        <PanelCollection>
            <dxp:PanelContent runat="server">
            <asp:Label runat="server" ID = "Page1Label" Text = "PAGE1" ForeColor="White"></asp:Label>
            </dxp:PanelContent>
        </PanelCollection>
    </dxp:ASPxPanel>
</asp:Content>


