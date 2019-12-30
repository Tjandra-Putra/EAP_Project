using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using EAP_Company_FixTech.Supplier_Votech_ServiceReference;

namespace EAP_Company_FixTech.DAL.Tjandra
{
    public class DAL_Supplier_Class
    {
        public int insertPurchaseOrder(string name, string email, string contact, string address, string date)
        {
            Ws_Supplier_VotechClient VotechClient;
            VotechClient = new Ws_Supplier_VotechClient();
            return VotechClient.insertPurchaseOrder(name, email, contact, address, date);
        }
    }
}