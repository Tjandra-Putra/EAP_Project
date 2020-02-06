using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using EAP_Company_FixTech.DAL.Lester;
using System.Data;

namespace EAP_Company_FixTech.BLL.Lester
{
    public class BLL_Supplier_Votech
    {
        public DataSet GetAllCustomerOrders()
        {
            DAL_Access_Supplier_Votech dataLayerPS;
            DataSet datasetCustomerOrders;

            dataLayerPS = new DAL_Access_Supplier_Votech();
            datasetCustomerOrders = dataLayerPS.GetAllCustomerOrders();
            return datasetCustomerOrders;
        }

        public DataSet GetAllOrderItem(string CO_ID)
        {
            DAL_Access_Supplier_Votech dataLayerPS;
            DataSet datasetCustomerOrderViewMore;

            dataLayerPS = new DAL_Access_Supplier_Votech();
            datasetCustomerOrderViewMore = dataLayerPS.GetAllOrderItem(CO_ID);
            return datasetCustomerOrderViewMore;
        }

        public int PaySupplier(string PaymentDate, string ChequeNo, decimal PaymentAmount, string Payee, string Memo, int InvoiceNum)
        {
            DAL_Access_Supplier_Votech obj = new DAL_Access_Supplier_Votech();
            return obj.PaySupplier(PaymentDate, ChequeNo, PaymentAmount, Payee, Memo, InvoiceNum);
        }
    }
}