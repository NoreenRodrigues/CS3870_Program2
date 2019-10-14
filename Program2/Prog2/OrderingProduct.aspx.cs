using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Program2.Prog2
{
    public partial class OrderingProduct : System.Web.UI.Page
    {
        double price ;
        double quanity;
        double subTotal;
        double tax;
        double grandTotal;
        protected void Page_Load(object sender, EventArgs e)
        {
            txtSubTotal.Style["text-align"] = "right";
            txtTax.Style["text-align"] = "right";
            txtGrandTotal.Style["text-align"] = "right";

            if (IsPostBack)
            {
                Session["ID"] = txtID.Text;
                Session["price"] = txtPrice.Text;
                Session["quantity"] = txtQuanity.Text;
                Session["subTotal"] = txtSubTotal.Text;
                Session["tax"] = txtTax.Text;
                Session["grandTotal"] = txtGrandTotal.Text;
            }
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }


        public void Taxamount()
        {
            
            price = Double.Parse(txtPrice.Text.Trim());
            quanity = Double.Parse(txtQuanity.Text.Trim());
            subTotal = price * quanity;
            tax = subTotal * 0.055;
            grandTotal = subTotal + tax;

            

          //  SaveViewState(price) = txtPrice.Text;
        }

        public void clear()
        {
            txtID.Text = "";
            txtPrice.Text = "";
            txtQuanity.Text = "";
            txtSubTotal.Text = "";
            txtTax.Text = "";
            txtGrandTotal.Text = "";
        }

        protected void btnCompute_Click(object sender, EventArgs e)
        {

            Session["ID"] = txtID.Text;
            Session["price"] = txtPrice.Text;
            Session["quantity"] = txtQuanity.Text;
            Session["subTotal"] = txtSubTotal.Text;
            Session["tax"] = txtTax.Text;
            Session["grandTotal"] = txtGrandTotal.Text;

            txtSubTotal.Style["text-align"] = "right";
            txtTax.Style["text-align"] = "right";
            txtGrandTotal.Style["text-align"] = "right";

            Taxamount();
            txtSubTotal.Text = string.Format("{0:C}", subTotal);
            txtTax.Text = string.Format("{0:C}", tax);
            txtGrandTotal.Text = string.Format("{0:C}", grandTotal);
            txtID.ReadOnly = true;
            txtPrice.ReadOnly = true;
            txtQuanity.ReadOnly = true;
            btnReset.Focus();


        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            clear();
            txtPrice.ReadOnly = false;
            txtQuanity.ReadOnly = false;
            txtID.ReadOnly = false;
        }
    }
}