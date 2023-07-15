using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using tokoku.Classes;

namespace tokoku
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TampilData();
                TampilDataAdmin();
            }

        }

        private void TampilData()
        {
            DataTable Dt = new DataTable();
            Dt = ClsHomepage.TampilData();
            RptTampilBarang.DataSource = Dt;
            RptTampilBarang.DataBind();

        }

        private void TampilDataAdmin()
        {
            DataTable Dt = new DataTable();
            Dt = ClsHomepage.TampilAdmin();
            RptTampilAdmin.DataSource = Dt;
            RptTampilAdmin.DataBind();

        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            ClsHomepage.SimpanBarang(TxtNamaProduk.Text, TxtWaktuPengerjaan.Text, DdlKategori.SelectedValue);
            TampilData();
            Bersih();
        }

        public void Bersih()
        {
            TxtNamaProduk.Text = string.Empty;
            TxtWaktuPengerjaan.Text = string.Empty; 
            DdlKategori.SelectedValue = "--Pilih Satuan---";
        }

        protected void BtnEdit_Click(object sender, EventArgs e)
        {
            ClsHomepage.EditBarang(TxtEditNama.Text, TxtEditWaktu.Text, DdlEditKategori.SelectedValue, Convert.ToInt32(TxtEditKode.Text));
            TampilData();
            Bersih();
        }

        protected void BtnHapus_Click(object sender, EventArgs e)
        {
            ClsHomepage.HapusBarang(Convert.ToInt32(TxtEditKode.Text));
            TampilData();
            Bersih();
        }

        protected void Kickbutton1_Click(object sender, EventArgs e)
        {
            ClsHomepage.KickAdmin(Convert.ToInt32(TxtKickId.Text));
            TampilDataAdmin();
            

        }
    }
}