using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using EAP_Supplier_Votech.DAL.Tjandra;

namespace EAP_Supplier_Votech.BLL.Tjandra
{
    public class BLL_Supplier_Class
    {
        public int insertPurchaseOrder(string name, string email, string contact, string address, string date)
        {
            DAL_PurchaseOrder obj = new DAL_PurchaseOrder();
            return obj.insertPurchaseOrder(name, email, contact, address, date);
        }











    }
}