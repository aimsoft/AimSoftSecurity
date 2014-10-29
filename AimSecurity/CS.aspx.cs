using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class CS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gvCustomers.DataSource = GetData("select top 10 * from Customers");
            gvCustomers.DataBind();
        }
    }

    private static DataTable GetData(string query)
    {
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = query;
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataSet ds = new DataSet())
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        return dt;
                    }
                }
            }
        }
    }

    protected void Show_Hide_OrdersGrid(object sender, EventArgs e)
    {
        ImageButton imgShowHide = (sender as ImageButton);
        GridViewRow row = (imgShowHide.NamingContainer as GridViewRow);
        if (imgShowHide.CommandArgument == "Show")
        {
            row.FindControl("pnlOrders").Visible = true;
            imgShowHide.CommandArgument = "Hide";
            imgShowHide.ImageUrl = "~/images/minus.png";
            string customerId = gvCustomers.DataKeys[row.RowIndex].Value.ToString();
            GridView gvOrders = row.FindControl("gvOrders") as GridView;
            BindOrders(customerId, gvOrders);
        }
        else
        {
            row.FindControl("pnlOrders").Visible = false;
            imgShowHide.CommandArgument = "Show";
            imgShowHide.ImageUrl = "~/images/plus.png";
        }
    }

    private void BindOrders(string customerId, GridView gvOrders)
    {
        gvOrders.ToolTip = customerId;
        gvOrders.DataSource = GetData(string.Format("select * from Orders where CustomerId='{0}'", customerId));
        gvOrders.DataBind();
    }

    protected void OnOrdersGrid_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView gvOrders = (sender as GridView);
        gvOrders.PageIndex = e.NewPageIndex;
        BindOrders(gvOrders.ToolTip, gvOrders);
    }

    protected void Show_Hide_ProductsGrid(object sender, EventArgs e)
    {
        ImageButton imgShowHide = (sender as ImageButton);
        GridViewRow row = (imgShowHide.NamingContainer as GridViewRow);
        if (imgShowHide.CommandArgument == "Show")
        {
            row.FindControl("pnlProducts").Visible = true;
            imgShowHide.CommandArgument = "Hide";
            imgShowHide.ImageUrl = "~/images/minus.png";
            int orderId = Convert.ToInt32((row.NamingContainer as GridView).DataKeys[row.RowIndex].Value);
            GridView gvProducts = row.FindControl("gvProducts") as GridView;
            BindProducts(orderId, gvProducts);
        }
        else
        {
            row.FindControl("pnlProducts").Visible = false;
            imgShowHide.CommandArgument = "Show";
            imgShowHide.ImageUrl = "~/images/plus.png";
        }
    }

    private void BindProducts(int orderId, GridView gvProducts)
    {
        gvProducts.ToolTip = orderId.ToString();
        gvProducts.DataSource = GetData(string.Format("SELECT ProductId, ProductName FROM Products WHERE ProductId IN (SELECT ProductId FROM [Order Details] WHERE OrderId = '{0}')", orderId));
        gvProducts.DataBind();
    }

    protected void OnProductsGrid_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView gvProducts = (sender as GridView);
        gvProducts.PageIndex = e.NewPageIndex;
        BindProducts(int.Parse(gvProducts.ToolTip), gvProducts);
    }
}