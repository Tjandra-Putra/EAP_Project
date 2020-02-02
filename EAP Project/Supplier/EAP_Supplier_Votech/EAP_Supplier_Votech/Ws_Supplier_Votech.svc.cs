using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

using System.Data;
using EAP_Supplier_Votech.BLL.Tjandra;
using EAP_Supplier_Votech.BLL.Lester;
using EAP_Supplier_Votech.BLL.Nelson;
using EAP_Supplier_Votech.DAL.Nelson;


namespace EAP_Supplier_Votech
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Ws_Supplier_Votech" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Ws_Supplier_Votech.svc or Ws_Supplier_Votech.svc.cs at the Solution Explorer and start debugging.
    public class Ws_Supplier_Votech : IWs_Supplier_Votech
    {
        //Tjandra
       public int insertPurchaseOrder(string name, string email, string contact, string address, string date)
        {
            BLL_Supplier_Class bizLayerInsertPO = new BLL_Supplier_Class();
            return bizLayerInsertPO.insertPurchaseOrder(name, email, contact, address, date);
        }

        //Lester
        public DataSet GetAllCustomerOrders()
        {
            BLL_Payment dataLayerPS = new BLL_Payment();
            return dataLayerPS.GetAllCustomerOrders();
        }

        public DataSet GetAllOrderItem(string CO_ID)
        {
            BLL_Payment dataLayerPS;

            dataLayerPS = new BLL_Payment();
            return dataLayerPS.GetAllOrderItem(CO_ID);
        }

        //Nelson
        public List<DAL_DeliveryOrder> getDeliveryOrder(string DO_ID)
        {
            BLL_SupplierNelson bizLayergetDO = new BLL_SupplierNelson();
            return bizLayergetDO.getDeliveryOrder(DO_ID);
        }

        public DataSet getAllDeliveryOrders()
        {
            BLL_SupplierNelson bizLayergetDO = new BLL_SupplierNelson();
            return bizLayergetDO.getAllDeliveryOrders();
        }








    }
}
