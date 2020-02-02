using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using EAP_Supplier_Votech.DAL.Lester;

namespace EAP_Supplier_Votech.Web.Admin
{
    public partial class PaymentStatusViewMore : System.Web.UI.Page
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
            DAL_PaymentStatus obj = new DAL_PaymentStatus();
            DataSet ds;
            ds = obj.GetAllOrderItem(CO_ID);
            gvViewMore.DataSource = ds;
            gvViewMore.DataBind();
        }
    }
}