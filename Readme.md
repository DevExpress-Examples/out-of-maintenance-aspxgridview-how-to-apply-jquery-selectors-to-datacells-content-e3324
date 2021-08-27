<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128533369/16.1.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E3324)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* **[Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))**
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
* [AutoCompleteStyles.css](./CS/WebSite/Styles/AutoCompleteStyles.css)
* [SelectorStyles.css](./CS/WebSite/Styles/SelectorStyles.css)
<!-- default file list end -->
# ASPxGridView - How to apply jQuery selectors to DataCells' content
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e3324/)**
<!-- run online end -->


<p>This example is an illustration of the <a href="https://www.devexpress.com/Support/Center/p/K18561">K18561: Using jQuery / jQuery UI libraries with DevExpress ASP.NET Controls / MVC Extensions</a> KB Article. Refer to the Article for an explanation.<br><br>This example illustrates how to attach jQuery selectors to ASPxGridView DataCells' content and keep selectors' functionality after grid's rendering is completely updated via a callback.</p>
<p>Usually when it is necessary to attach jQuery selectors to any existing HTML content, it is recommended to use the <a href="http://api.jquery.com/ready/"><u>$(document).ready</u></a> function that can be used for handling the state when the DOM is fully loaded. When some jQuery selectors are attached to the HTML content inside ASPxGridView, these selectors are stopped after the grid's rendering is completely updated via a callback (and the entire grid's HTML content is re-created on the client side). It is necessary to execute the required jQuery selectors explicitely by handling the client-side <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewScriptsASPxClientGridView_EndCallbacktopic"><u>ASPxClientGridView.EndCallback</u></a> event that is raised on the client side after a callback's server-side processing has been completed. It is also recommended to handle the client-side <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxClassesScriptsASPxClientControl_Inittopic"><u>ASPxClientControl.Init</u></a> (<strong>ASPxClientGridView.Init</strong>) event (rather than the use of the jQuery <strong>$(document).ready</strong> function) to enure that the corresponding client-side control's programmatic object is initialized.</p>
<p>Refer to the <a href="http://documentation.devexpress.com/#AspNet/CustomDocument4222"><u>Client-Side Functionality Overview</u></a> topic in our documentation to learn more about the common concepts of the client-side API of the DevExpress ASP.NET Controls.</p>

<br/>


