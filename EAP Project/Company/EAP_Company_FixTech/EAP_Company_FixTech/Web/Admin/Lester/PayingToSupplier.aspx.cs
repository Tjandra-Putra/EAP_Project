using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EAP_Company_FixTech.Web.Admin
{
    public partial class PayingToSupplier : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnPay_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Payment Have Been Made');</script>");
        }
    }
}