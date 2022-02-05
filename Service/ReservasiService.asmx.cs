using MDKAReservasi.Mapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;

namespace MDKAReservasi.Service
{
    /// <summary>
    /// Summary description for ReservasiService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
     [System.Web.Script.Services.ScriptService]
    public class ReservasiService : System.Web.Services.WebService
    {

        ReservasiMapper mapper = new ReservasiMapper();
        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }
        [WebMethod]
        public string InsertReservasi(int ruanganFK, string subject, string tanggalReservasi, string jamMulai, string jamSelesai)
        {
            try
            {
                mapper.InsertDataReservasi(ruanganFK,subject,tanggalReservasi,jamMulai,jamSelesai);
                return "berhasil insert peminjaman ruangan";
            }
            catch (Exception e)
            {
                return e.ToString();

            }
        }
        [WebMethod]
        public string getAllReservasi()
        {
            DataTable dt = new DataTable();
            dt = mapper.GetAllReservasi().Tables[0];
            return dataTableToJson(dt);
        }
        [WebMethod]
        public string DeleteReservasi(int PKTransaksi, int Ruangan_FK)
        {
            string status = "";
            try
            {
                mapper.DeleteReservasi(PKTransaksi, Ruangan_FK);
                status = "sukses";
            }
            catch (Exception e)
            {

                status = "Gagal=" + e.ToString();
            }
            return status;
        }
        [WebMethod]
        public string getAllRuangan()
        {
            DataTable dt = new DataTable();
            dt = mapper.GetDataRuangan().Tables[0];
            return dataTableToJson(dt);
        }
        public string dataTableToJson(DataTable dt)
        {
            JavaScriptSerializer jsSerializer = new JavaScriptSerializer();
            List<Dictionary<string, object>> parentRow = new List<Dictionary<string, object>>();
            Dictionary<string, object> childRow;
            foreach (DataRow row in dt.Rows)
            {
                childRow = new Dictionary<string, object>();
                foreach (DataColumn col in dt.Columns)
                {
                    childRow.Add(col.ColumnName, row[col]);
                }
                parentRow.Add(childRow);
            }
            return jsSerializer.Serialize(parentRow);
        }
    }
}
