using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

using EAP_Supplier_Votech.DAL.Nelson;



namespace EAP_Supplier_Votech
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IWs_Supplier_Votech" in both code and config file together.
    [ServiceContract]
    public interface IWs_Supplier_Votech
    {
        // Tjandra
        [OperationContract]
        int insertPurchaseOrder(string name, string email, string contact, string address, string date);

        //Lester 
        [OperationContract]
        DataSet GetAllCustomerOrders();

        [OperationContract]
        DataSet GetAllOrderItem(string CO_ID);

        //Nelson
        [OperationContract]
        DataSet getAllDeliveryOrders();
        [OperationContract]
        List<DAL_DeliveryOrder> getDeliveryOrder(string DO_ID);


    }
}
