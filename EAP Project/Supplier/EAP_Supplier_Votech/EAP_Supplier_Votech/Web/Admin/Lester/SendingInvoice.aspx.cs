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
    public partial class Invoice : System.Web.UI.Page
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
            DAL_SendingInvoice obj = new DAL_SendingInvoice();
            DataSet ds;
            ds = obj.GetAllInvoice();
            gvInvoice.DataSource = ds;
            gvInvoice.DataBind();
        }
    }
}