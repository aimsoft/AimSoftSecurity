<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateProgress.aspx.cs" Inherits="AimExchange.UpdateProgress" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <title>UpdateProgress Example</title>
    <style type="text/css">
    #UpdatePanel1, #UpdatePanel2, #UpdateProgress1 { 
      border-right: gray 1px solid; border-top: gray 1px solid; 
      border-left: gray 1px solid; border-bottom: gray 1px solid;
    }
    #UpdatePanel1, #UpdatePanel2 { 
      width:200px; height:200px; position: relative;
      float: left; margin-left: 10px; margin-top: 10px;
     }
     #UpdateProgress1 {
      width: 400px; background-color: #FFC080; 
      bottom: 0%; left: 0px; position: absolute;
     }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 
    <div>
    <asp:ScriptManager ID="ScriptManager1" runat="server" />
    <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
    <ContentTemplate>
    <%=DateTime.Now.ToString() %> <br />
    <asp:Button ID="Button1" runat="server" Text="Refresh Panel" OnClick="Button_Click" />    
    </ContentTemplate>
    </asp:UpdatePanel>
    <asp:UpdatePanel ID="UpdatePanel2" UpdateMode="Conditional" runat="server">
    <ContentTemplate>
    <%=DateTime.Now.ToString() %> <br />
    <asp:Button ID="Button2" runat="server" Text="Refresh Panel" OnClick="Button_Click"/>    
    </ContentTemplate>
    </asp:UpdatePanel>
    <asp:UpdateProgress ID="UpdateProgress1" runat="server">
    <ProgressTemplate>
      Update in progress...
    </ProgressTemplate>
    </asp:UpdateProgress>
    </div>
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PlaceHolderButton" runat="server">
</asp:Content>
