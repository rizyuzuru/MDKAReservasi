using Microsoft.ApplicationBlocks.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace MDKAReservasi.Mapper
{
    public class ReservasiMapper
    {
        protected SqlParameter p_function = new SqlParameter("@function", SqlDbType.Int);
        protected SqlParameter p_RuanganFK = new SqlParameter("@Ruangan_FK", SqlDbType.Int, 50);
        protected SqlParameter p_subject = new SqlParameter("@Subject", SqlDbType.VarChar, 255);
        protected SqlParameter p_dateReservasi = new SqlParameter("@dateReservasi", SqlDbType.VarChar, 50);
        protected SqlParameter p_jamMulai = new SqlParameter("@jamMulai", SqlDbType.VarChar, 20);
        protected SqlParameter p_jamSelesai = new SqlParameter("@jamSelesai", SqlDbType.VarChar, 20);
        protected SqlParameter p_PKTransaksi = new SqlParameter("@Reservasi_PK", SqlDbType.Int, 20);

        public DataSet InsertDataReservasi(int ruanganFK, string subject, string dateReservasi, string jamMulai, string jamSelesai)
        {
            p_function.Value = 1;
            p_RuanganFK.Value = ruanganFK;
            p_subject.Value = subject;
            p_dateReservasi.Value = dateReservasi;
            p_jamMulai.Value = jamMulai;
            p_jamSelesai.Value = jamSelesai;
            return SqlHelper.ExecuteDataset(ConnectionReservasi.connectionString, CommandType.StoredProcedure, "SP_ProsesReservasi", p_function, p_RuanganFK, p_subject, p_dateReservasi, p_jamMulai, p_jamSelesai);
        }
        public DataSet GetAllReservasi()
        {
            p_function.Value = 2;            
            return SqlHelper.ExecuteDataset(ConnectionReservasi.connectionString, CommandType.StoredProcedure, "SP_ProsesReservasi", p_function);
        }
        public void DeleteReservasi(int PK_Transaksi, int PK_Ruangan)
        {
            p_function.Value = 3;
            p_PKTransaksi.Value = PK_Transaksi;
            p_RuanganFK.Value = PK_Ruangan;
             SqlHelper.ExecuteNonQuery(ConnectionReservasi.connectionString, CommandType.StoredProcedure, "SP_ProsesReservasi", p_function, p_PKTransaksi, p_RuanganFK);
        }
    }
    
}