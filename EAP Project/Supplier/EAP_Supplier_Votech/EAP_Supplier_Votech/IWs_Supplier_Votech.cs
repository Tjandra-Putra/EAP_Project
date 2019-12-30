using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace EAP_Supplier_Votech
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IWs_Supplier_Votech" in both code and config file together.
    [ServiceContract]
    public interface IWs_Supplier_Votech
    {
        [OperationContract]
        int insertPurchaseOrder(string name, string email, string contact, string address, string date);
    }
}
