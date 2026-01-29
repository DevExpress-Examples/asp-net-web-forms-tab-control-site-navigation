Imports System
Imports System.Data
Imports System.Configuration
Imports System.Collections
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.Web

Partial Public Class MasterPage
	Inherits System.Web.UI.MasterPage

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

	End Sub
	Protected Sub tcDemos_TabDataBound(ByVal source As Object, ByVal e As DevExpress.Web.TabControlEventArgs)
		Dim tab As Tab = TryCast(e.Tab, Tab)
		If tab Is Nothing Then
			Return
		End If
		e.Tab.Name = ResolveClientUrl(tab.NavigateUrl)
	End Sub
End Class
