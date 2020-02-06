using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace EAP_Supplier_Votech.DAL.Lester
{
    public class DAL_CreateInvoice
    {
        SqlConnection myConnect = DAL_Connection.GetConnection();

        public int createinvoice(string InvoiceDate, decimal InvoiceTotalAmt, int CO_ID)
        {
            int result = 0;

            string query = "INSERT INTO Invoice(InvoiceDate, InvoiceTotalAmt, CO_ID) VALUES(@InvoiceDate, @InvoiceTotalAmt, @CO_ID)";

            SqlCommand cmd = new SqlCommand(query, myConnect);
            cmd.Parameters.AddWithValue("@InvoiceDate", DateTime.ParseExact(InvoiceDate, "dd/MM/yyyy", null));
            cmd.Parameters.AddWithValue("@InvoiceTotalAmt", InvoiceTotalAmt);
            cmd.Parameters.AddWithValue("@CO_ID", CO_ID);

            myConnect.Open();

            cmd.ExecuteNonQuery();

            myConnect.Close();

            return result;
        }
    }
}