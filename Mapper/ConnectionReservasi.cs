using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace MDKAReservasi.Mapper
{
    public class ConnectionReservasi
    {
        public static string connectionString
        {
            get
            {
                return ConfigurationManager.ConnectionStrings["ConsReservasi"].ToString();
            }
        }
    }
}