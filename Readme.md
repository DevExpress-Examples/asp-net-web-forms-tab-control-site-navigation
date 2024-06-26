<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128565431/13.1.5%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E1308)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
[![](https://img.shields.io/badge/💬_Leave_Feedback-feecdd?style=flat-square)](#does-this-example-address-your-development-requirementsobjectives)
<!-- default badges end -->
# Tab Control for ASP.NET Web Forms - How to use a tab control for site navigation

This example demonstrates how to bind a tab control to a sitemap file and use ContentPlaceHolder objects to navigate through multiple content pages. 

## Overview

Create a [tab control](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxTabControl) and bind it to a sitemap file to navigate through multiple pages. Set the control's [NavigateUrlField](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxTabControl.NavigateUrlField) property to `Url`.

```aspx
<dx:ASPxTabControl ID="tcDemos" runat="server" NavigateUrlField="Url" TextField="Name" ClientInstanceName = "tcDemos"
    DataSourceID="XmlDataSource1" OnTabDataBound="tcDemos_TabDataBound" EnableClientSideAPI="True">
    <!-- ... -->
</dx:ASPxTabControl>
<asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/SiteMap.xml" XPath="//SitePage" />
<asp:ContentPlaceHolder ID="ContentPlaceHolder1" runat="server" />
```

```xml
<SiteMap>
    <SitePage Name="Page1" Url="~/Default.aspx" />
    <SitePage Name="Page2" Url="~/Page2.aspx" />
</SiteMap>
```

Use [ContentPlaceHolder](https://learn.microsoft.com/en-us/dotnet/api/system.web.ui.webcontrols.contentplaceholder?view=netframework-4.8.1) objects to create content pages. When a user clicks a tab, a content page is loaded into a place holder.

```aspx
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <dx:ASPxPanel ID="ASPxPanel1" runat="server" Height="100%" Width="100%" BackColor="Indigo">
        <PanelCollection>
            <dx:PanelContent runat="server">
                <dx:ASPxLabel runat="server" ID = "Page1Label" Text = "PAGE1" ForeColor="White" />
            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxPanel>
</asp:Content>
```

You can use this approach to create a dynamic [page control](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxPageControl).


## Files to Review

* [Default.aspx](./CS/WebSite14/Default.aspx)
* [SiteMap.xml](./CS/WebSite14/SiteMap.xml)
* [MasterPage.master](./CS/WebSite14/MasterPage.master) (VB: [MasterPage.master.vb](./VB/WebSite14/MasterPage.master.vb))
* [MasterPage.master.cs](./CS/WebSite14/MasterPage.master.cs) (VB: [MasterPage.master.vb](./VB/WebSite14/MasterPage.master.vb))
* [Page2.aspx](./CS/WebSite14/Page2.aspx) (VB: [Page2.aspx](./VB/WebSite14/Page2.aspx))

## Documentation

* [Tab Control](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxTabControl)
* [Tab Control vs Page Control](https://docs.devexpress.com/AspNet/14806/components/site-navigation-and-layout/page-control-and-tab-control/concepts/tab-control-vs-page-control)
<!-- feedback -->
## Does this example address your development requirements/objectives?

[<img src="https://www.devexpress.com/support/examples/i/yes-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=asp-net-web-forms-tab-control-site-navigation&~~~was_helpful=yes) [<img src="https://www.devexpress.com/support/examples/i/no-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=asp-net-web-forms-tab-control-site-navigation&~~~was_helpful=no)

(you will be redirected to DevExpress.com to submit your response)
<!-- feedback end -->
