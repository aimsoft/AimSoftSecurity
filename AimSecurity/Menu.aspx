<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="AimExchange.Menu" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <cc1:ToolkitScriptManager runat="server">
</cc1:ToolkitScriptManager>
<cc1:Accordion ID="AccordionMenu" runat="server" OnItemDataBound="OnItemDataBound" Width = "300"
    HeaderCssClass="header" HeaderSelectedCssClass="header_selected" ContentCssClass = "content">
    <HeaderTemplate>
        <asp:HyperLink ID="lnkMenu" NavigateUrl='<%# Eval("Url") %>' Text='<%# Eval("Title") %>' runat="server" />
    </HeaderTemplate>
    <ContentTemplate>
        <table>
            <asp:Repeater ID="rptMenu" runat="server">
                <ItemTemplate>
                    <tr>
                        <td>
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# Eval("Url") %>' Text='<%# Eval("Title") %>'
                                runat="server" />
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
    </ContentTemplate>
</cc1:Accordion>
<asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" ShowStartingNode="false" />
    
    </div>
    </form>
</body>
</html>
