using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using tokoku.Classes;

namespace tokoku.Classes
{
    public class ClsHomepage
    {
        public static DataTable TampilData()
        {
            try
            {
                DataTable DtTampil = new DataTable();
                SqlConnection Sqlconn = new SqlConnection(ClsModul.Conn.ToString());
                SqlCommand cmd = new SqlCommand();
                SqlDataAdapter Da = new SqlDataAdapter();

                Sqlconn.Open();
                cmd.Connection = Sqlconn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select * from Tblbarang order by KodeBarang asc";
                Da.SelectCommand = cmd;
                Da.Fill(DtTampil);
                Sqlconn.Close();
                return DtTampil;
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        public static DataTable TampilAdmin()
        {
            try
            {
                DataTable DtTampilAdmin = new DataTable();
                SqlConnection Sqlconn = new SqlConnection(ClsModul.Conn.ToString());
                SqlCommand cmd = new SqlCommand();
                SqlDataAdapter Da = new SqlDataAdapter();

                Sqlconn.Open();
                cmd.Connection = Sqlconn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select * from clients order by id asc";
                Da.SelectCommand = cmd;
                Da.Fill(DtTampilAdmin);
                Sqlconn.Close();
                return DtTampilAdmin;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public static void SimpanBarang(string NamaProduk, string WaktuPengerjaan, string Kategori)
        {
            try
            {
                SqlConnection Sqlconn = new SqlConnection(ClsModul.Conn.ToString());
                SqlCommand cmd = new SqlCommand();

                Sqlconn.Open();
                cmd.Connection= Sqlconn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into Tblbarang values('"+NamaProduk+"','"+WaktuPengerjaan+"','"+Kategori+"')";
                cmd.ExecuteNonQuery();
                Sqlconn.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static void EditBarang(string nama, string waktu, string katag, int kode)
        {
            try
            {
                SqlConnection Sqlconn = new SqlConnection(ClsModul.Conn.ToString());
                SqlCommand cmd = new SqlCommand();

                Sqlconn.Open();
                cmd.Connection = Sqlconn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "update Tblbarang set NamaProduk='"+nama+"', WaktuPengerjaan='"+waktu+"', Kategori='"+katag+"' where KodeBarang='"+kode+"'";
                cmd.ExecuteNonQuery();
                Sqlconn.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static void HapusBarang(int kode)
        {
            try
            {
                SqlConnection Sqlconn = new SqlConnection(ClsModul.Conn.ToString());
                SqlCommand cmd = new SqlCommand();

                Sqlconn.Open();
                cmd.Connection = Sqlconn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "delete from Tblbarang where KodeBarang='" + kode + "'";
                cmd.ExecuteNonQuery();
                Sqlconn.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static void KickAdmin(int id)
        {
            try
            {
                SqlConnection Sqlconn = new SqlConnection(ClsModul.Conn.ToString());
                SqlCommand cmd = new SqlCommand();

                Sqlconn.Open();
                cmd.Connection = Sqlconn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "delete from clients where id='" + id + "'";
                cmd.ExecuteNonQuery();
                Sqlconn.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }




        public static void SimpanData( string email, string password, string first_name, string last_name, string phone, string country, string city, string postal_code)
        {
            try
            {
                SqlConnection Sqlconn = new SqlConnection(ClsModul.Conn.ToString());
                SqlCommand cmd = new SqlCommand();
                Sqlconn.Open();
                cmd.Connection = Sqlconn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into clients values('"+email+"', '"+password+"', '"+first_name+"', '"+last_name+"', '"+phone+"', '"+country+"', '"+city+"', '"+postal_code+"')";
                cmd.ExecuteNonQuery();
                Sqlconn.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}