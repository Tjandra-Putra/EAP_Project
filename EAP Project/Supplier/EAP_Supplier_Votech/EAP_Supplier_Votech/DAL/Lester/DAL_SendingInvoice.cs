using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Configuration;
using EAP_Supplier_Votech.DAL;

namespace EAP_Supplier_Votech.DAL.Lester
{
    public class DAL_SendingInvoice
    {
        SqlConnection myconnect = DAL_Connection.GetConnection();

        //Creating of Invoice
        public DataSet GetAllInvoice()
        {
            StringBuilder sql;
            SqlDataAdapter da;
            DataSet Invoice;

            Invoice = new DataSet();

            sql = new StringBuilder();
            sql.AppendLine("SELECT C.CO_ID, P.PO_CompanyName, P.PO_Date, P.PO_CompanyEmail, P.PO_CompanyAddress, D.DO_Status FROM CustomerOrder C JOIN PurchaseOrder P on C.PO_ID = P.PO_ID JOIN DeliveryOrder D on D.CO_ID = C.CO_ID");

            da = new SqlDataAdapter(sql.ToString(), myconnect);
            da.Fill(Invoice);

            myconnect.Close();

            return Invoice;
        }
    }
}