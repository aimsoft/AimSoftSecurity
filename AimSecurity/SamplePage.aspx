<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SamplePage.aspx.cs" Inherits="AimExchange.SamplePage" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<ajax:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </ajax:ToolkitScriptManager>
    <div class="line">
    Create User
    </div>
    <div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Panel ID="pHeader" runat="server" CssClass="cpHeader">
                    <asp:Label ID="lblText" runat="server" />
                    <asp:Image ID="Image1" CssClass="pm" runat="server" />
                </asp:Panel>
                <asp:Panel ID="pBody" runat="server" CssClass="cpBody">
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                        incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                        exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure
                        dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur
                        <br />
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                        incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                        exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure
                        dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                        incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                        exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure
                        dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                        incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                        exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure
                        dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur
                        <br />
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                        incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                        exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure
                        dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                        incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                        exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure
                        dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                        incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                        exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure
                        dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur</p>
                </asp:Panel>
                <ajax:CollapsiblePanelExtender ID="CollapsiblePanelExtender1" runat="server" TargetControlID="pBody"
                    CollapseControlID="pHeader" ExpandControlID="pHeader" Collapsed="false" TextLabelID="lblText"
                    CollapsedText="Search Criteria" ExpandedText="Search Hide" ImageControlID="Image1"
                    ExpandedImage="images/collapse1.png" CollapsedImage="images/expand1.png" CollapsedSize="0">
                </ajax:CollapsiblePanelExtender>
                <ajax:Accordion ID="UserAccordion" runat="server" SelectedIndex="0" HeaderCssClass="cpHeader"
                    HeaderSelectedCssClass="cpHeader" ContentCssClass="cpBody" FadeTransitions="true"
                    SuppressHeaderPostbacks="true" TransitionDuration="250" FramesPerSecond="40"
                    RequireOpenedPane="false" AutoSize="None">
                    <Panes>
                        <ajax:AccordionPane ID="AccordionPane1" runat="server">
                            <Header>
                                <a href="#">New User</a></Header>
                            <Content>
                                <asp:Panel ID="UserReg" runat="server">
                                <div class="divReg">
                                    <p><asp:label id=lblUserName runat="server" width="100px" text="UserName:" /><asp:TextBox ID="txtLogin" runat="server" placeholder="Username" ></asp:TextBox>*</p>
                                    <p><asp:label id=Label1 runat="server" width="100px" text="Name:" /><asp:TextBox ID="TextBox1" runat="server" placeholder="Name" ></asp:TextBox>*</p>
                                    <p><asp:label id=Label2 runat="server" width="100px" text="Designation:" /><asp:TextBox ID="TextBox2" runat="server" placeholder="Designation" ></asp:TextBox>*</p>
                                    <p><asp:label id=Label3 runat="server" width="100px" text="Mobile:" /><asp:TextBox ID="TextBox3" runat="server" placeholder="Mobile" ></asp:TextBox>*</p>
                                    <p><asp:label id=Label4 runat="server" width="100px" text="Address:" /><asp:TextBox ID="TextBox4" runat="server" placeholder="Address" ></asp:TextBox>*</p>
                                    <p><asp:label id=Label5 runat="server" width="100px" text="NIC:" /><asp:TextBox ID="TextBox5" runat="server" placeholder="NIC" ></asp:TextBox>*</p>
                                 </div>
                                
                                </asp:Panel>
                            </Content>
                        </ajax:AccordionPane>
                        <ajax:AccordionPane ID="AccordionPane2" runat="server">
                            <Header>
                                <a href="#" class="href">User Detail</a></Header>
                            <Content>
                                <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                        incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                        exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure
                        dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur
                        <br />
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                        incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                        exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure
                        dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                        incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                        exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure
                        dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                        incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                        exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure
                        dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur
                        <br />
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                        incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                        exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure
                        dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                        incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                        exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure
                        dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                        incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                        exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure
                        dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur</p>
                            </Content>
                        </ajax:AccordionPane>
                        
                    </Panes>
                </ajax:Accordion>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PlaceHolderButton" runat="server">
 <asp:ImageButton ID="ImageButton1" ImageUrl="images/btnAdd.png" CssClass="wobble-skew"
        runat="server" />
    <asp:ImageButton ID="ImageButton2" ImageUrl="images/btnSave.png" CssClass="wobble-skew"
        runat="server" />
    <asp:ImageButton ID="ImageButton3" ImageUrl="images/btnUpdate.png" CssClass="wobble-skew"
        runat="server" />
    <asp:ImageButton ID="ImageButton4" ImageUrl="images/btnPrint.png" CssClass="wobble-skew"
        runat="server" />
    <asp:ImageButton ID="ImageButton5" ImageUrl="images/btnRefresh.png" CssClass="wobble-skew"
        runat="server" />
    <asp:ImageButton ID="ImageButton6" ImageUrl="images/btnEmail.png" CssClass="wobble-skew"
        runat="server" />
    <asp:ImageButton ID="ImageButton7" ImageUrl="images/btnAuthorize.png" CssClass="wobble-skew"
        runat="server" />
</asp:Content>
