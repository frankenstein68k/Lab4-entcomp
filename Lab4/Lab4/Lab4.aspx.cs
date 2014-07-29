using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getSuppliers();
            }
            lbl1.Text = DateTime.Now.ToLongTimeString();
        }


        protected void getSuppliers()
        {
            using (NorthwindEntities objEnt = new NorthwindEntities())
            {
                var data = from Supplier in objEnt.Suppliers
                           orderby Supplier.CompanyName
                           select Supplier;

                ddlSupplier.DataSource = data.ToList();
                ddlSupplier.DataBind();
            }
        }

        protected void getProducts()
        {
            int SupplierID = int.Parse(ddlSupplier.SelectedValue);

            using (NorthwindEntities objEnt = new NorthwindEntities())
            {
                var data = from Product in objEnt.Products
                           where Product.SupplierID == SupplierID
                           orderby Product.ProductName
                           select Product;

                grdProducts.DataSource = data.ToList();
                grdProducts.DataBind();
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            getProducts();
            lbl2.Text = DateTime.Now.ToLongTimeString();
        }
    }
}