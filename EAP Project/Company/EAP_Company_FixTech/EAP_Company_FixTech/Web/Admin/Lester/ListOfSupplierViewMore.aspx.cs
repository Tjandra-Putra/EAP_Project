using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EAP_Company_FixTech.BLL.Lester;
using System.Data;

namespace EAP_Company_FixTech.Web.Admin
{
    public partial class TrackingPaymentStatusViewMore : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                BindPaymentStatusList();
            }
        }
        private void BindPaymentStatusList()
        {
            string CO_ID = Request.QueryString["CO_ID"];
            BLL_Supplier_Votech obj = new BLL_Supplier_Votech();
            DataSet ds;
            ds = obj.GetAllOrderItem(CO_ID);
            gvViewMore.DataSource = ds;
            gvViewMore.DataBind();
        }
    }
}