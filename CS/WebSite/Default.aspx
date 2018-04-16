<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register Assembly="DevExpress.Web.v16.1, Version=16.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="Stylesheet" type="text/css" href="Styles/SelectorStyles.css" />
    <script src="Scripts/jquery-1.6.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function OnInit(s, e) {
            AttachSelectors();
        }
        function OnEndCallback(s, e) {
            AttachSelectors();
        }
        function AttachSelectors() {
            //http://api.jquery.com/hover/
            $(".container").hover(
                //handlerIn
                function() {
                    $(this).css("border", "dashed 2px #000000");
                    $(this).animate({ opacity: 0.1 }, 500);
                    
                    popup.SetContentHtml($(this).html());
                    popup.ShowAtElement($(this)[0]);
                },
                //handlerOut
                function() {
                    $(this).css("border", "solid 2px #000000");
                    $(this).animate({ opacity: 1.0 }, 500);
                    popup.Hide();
                }
            );
        }
    </script>
</head>
<body>
    <form id="mainForm" runat="server">
    <div>
        <b>Hover the "Description" field DataCell to invoke jQuery animation effects</b>
        <br />
        <br />
        <dx:ASPxGridView ID="gv" runat="server" AutoGenerateColumns="False" DataSourceID="ds"
            KeyFieldName="CategoryID">
            <Columns>
                <dx:GridViewDataTextColumn FieldName="CategoryID" ReadOnly="True" VisibleIndex="0">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="CategoryName" VisibleIndex="1">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="2">
                    <DataItemTemplate>
                        <div class="container">
                            <%#Eval("Description")%>
                        </div>
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
            </Columns>
            <ClientSideEvents Init="OnInit" EndCallback="OnEndCallback" />
        </dx:ASPxGridView>
    </div>
    <dx:ASPxPopupControl ID="popupControl" runat="server" ClientInstanceName="popup"
        CloseAction="CloseButton" HeaderText="Description" PopupHorizontalAlign="OutsideRight">
    </dx:ASPxPopupControl>
    <asp:AccessDataSource ID="ds" runat="server" DataFile="~/App_Data/nwind.mdb" SelectCommand="SELECT [CategoryID], [CategoryName], [Description] FROM [Categories]">
    </asp:AccessDataSource>
    </form>
</body>
</html>