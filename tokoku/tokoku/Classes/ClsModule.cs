using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace tokoku.Classes
{
    public class ClsModul
    {
        public static string Conn = ConfigurationManager.ConnectionStrings["Koneksi"].ConnectionString;
    }
}