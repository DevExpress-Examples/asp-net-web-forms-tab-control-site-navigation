<%@ Page Language="vb" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Page2.aspx.vb" Inherits="Page2" Title="Untitled Page" %>
<%@ Register Assembly="DevExpress.Web.v8.3, Version=8.3.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxPanel" TagPrefix="dxp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<dxp:ASPxPanel ID="ASPxPanel2" runat="server" Height="100%" Width="100%" BackColor="White">
		<PanelCollection>
			<dxp:PanelContent runat="server">
			<asp:Label runat="server" ID = "Page2Label" Text = "PAGE2" ForeColor="Indigo"></asp:Label>
			</dxp:PanelContent>
		</PanelCollection>
	</dxp:ASPxPanel>
</asp:Content>

