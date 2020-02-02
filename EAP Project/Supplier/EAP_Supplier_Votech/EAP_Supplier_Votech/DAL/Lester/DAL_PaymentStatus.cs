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
    public class DAL_PaymentStatus
    {
        SqlConnection myconnect = DAL_Connection.GetConnection();

        //Retrieve all customer order 
        public DataSet GetAllCustomerOrders()
        {
            StringBuilder sql;
            SqlDataAdapter da;
            DataSet customerorders;

            customerorders = new DataSet();

            sql = new StringBuilder();
            sql.AppendLine("SELECT C.CO_ID, C.CO_PaymentStatus, P.PO_CompanyName, P.PO_Date, P.PO_CompanyEmail,  P.PO_CompanyContact, I.InvoiceNum, I.InvoiceDate, I.InvoiceTotalAmt, I.InvoiceStatus FROM CustomerOrder C JOIN PurchaseOrder P ON C.PO_ID = P.PO_ID JOIN Invoice I ON I.CO_ID = C.CO_ID");

            da = new SqlDataAdapter(sql.ToString(), myconnect);
            da.Fill(customerorders);

            myconnect.Close();

            return customerorders;
        }

        // retrieve all order item from customer order Id
        public DataSet GetAllOrderItem(string CO_ID)
        {
            StringBuilder sql;
            SqlDataAdapter da;
            SqlCommand cmd;
            DataSet OrderItems;

            OrderItems = new DataSet();

            sql = new StringBuilder();
            sql.AppendLine("SELECT * FROM OrderItem WHERE CO_ID=@CO_ID");

            
            myconnect.Open();
            da = new SqlDataAdapter(sql.ToString(), myconnect);
            da.SelectCommand.Parameters.AddWithValue("@CO_ID", CO_ID);
            da.Fill(OrderItems);

            myconnect.Close();

            return OrderItems;
        }

        // update payment status
        public int PaymentStatusUpdate(string CO_ID, string CO_PaymentStatus)
        {

            int updatepayment = 0;
            string querstr = "UPDATE CustomerOrder SET CO_PaymentStatus= @CO_PaymentStatus WHERE CO_ID=@CO_ID";

            myconnect.Open();
            SqlCommand cmd = new SqlCommand(querstr, myconnect);
            cmd.Parameters.AddWithValue("@CO_ID", CO_ID);
            cmd.Parameters.AddWithValue("@CO_PaymentStatus", CO_PaymentStatus);

            updatepayment = cmd.ExecuteNonQuery();

            myconnect.Close();
            return updatepayment;
        }

    }
}