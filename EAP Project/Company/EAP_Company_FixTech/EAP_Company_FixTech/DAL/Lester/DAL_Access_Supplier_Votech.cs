using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
//using EAP_Company_FixTech.getPaymentStatus;
using EAP_Company_FixTech.Supplier_Votech_ServiceReference;


namespace EAP_Company_FixTech.DAL.Lester
{
    public class DAL_Access_Supplier_Votech
    {
        public DataSet GetAllCustomerOrders()
        {
            Ws_Supplier_VotechClient Company_Fixtech;
            Company_Fixtech = new Ws_Supplier_VotechClient();
            return Company_Fixtech.GetAllCustomerOrders();
        }

        public DataSet GetAllOrderItem(string CO_ID)
        {
            Ws_Supplier_VotechClient Company_Fixtech;
            Company_Fixtech = new Ws_Supplier_VotechClient();
            return Company_Fixtech.GetAllOrderItem(CO_ID);
        }

        //public int PaymentStatusUpdate(string CO_ID, string CO_PaymentStatus)
        //{
        //    Ws_Supplier_VotechClient Company_Fixtech;
        //    Company_Fixtech = new Ws_Supplier_VotechClient();
        //    return Company_Fixtech.PaymentStatusUpdate(CO_ID, CO_PaymentStatus);
        //}

    }
}