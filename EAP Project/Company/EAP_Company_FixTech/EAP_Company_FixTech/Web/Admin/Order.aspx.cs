using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using EAP_Company_FixTech.BLL.Tjandra;

namespace EAP_Company_FixTech.Web.Admin
{
    public partial class Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            tb_CompanyName.Text = "FixTech";
            //tb_CompanyEmail.Text = "fixtech.eap@gmail.com";
            //tb_CompanyAddress.Text = "Novena Street 203 BLK576";
            //tb_CompanyContact.Text = "67858576";
        }

        protected void btn_CreateOrder_Click(object sender, EventArgs e)
        {
           

            BLL_Supplier_Class obj = new BLL_Supplier_Class();
            obj.insertPurchaseOrder(tb_CompanyName.Text, tb_CompanyEmail.Text, tb_CompanyContact.Text, tb_CompanyAddress.Text, DateTime.Now.ToString());

            Response.Write("<script>alert('Your order has been created!');</script>");
        }
    }
}