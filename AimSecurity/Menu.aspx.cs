using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AjaxControlToolkit;

namespace AimExchange
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                AccordionMenu.DataSource = (SiteMapDataSource1.GetView("") as SiteMapDataSourceView).Select(DataSourceSelectArguments.Empty);
                AccordionMenu.DataBind();
            }
        }
        protected void OnItemDataBound(object sender, AccordionItemEventArgs e)
        {
            if (e.ItemType == AccordionItemType.Header)
            {
                string menuText = (e.AccordionItem.FindControl("lnkMenu") as HyperLink).Text;
                if (menuText == SiteMap.CurrentNode.Title || menuText == SiteMap.CurrentNode.ParentNode.Title)
                {
                    AccordionMenu.SelectedIndex = e.ItemIndex;
                }
            }
            if (e.ItemType == AccordionItemType.Content)
            {
                AccordionContentPanel cPanel = e.AccordionItem;
                Repeater rptMenu = (Repeater)cPanel.FindControl("rptMenu");
                rptMenu.DataSource = (e.AccordionItem.DataItem as SiteMapNode).ChildNodes;
                rptMenu.DataBind();
            }
        }
    }
}