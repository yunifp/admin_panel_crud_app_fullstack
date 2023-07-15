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
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            ClsHomepage.SimpanData(email.Text, password.Text, first_name.Text, last_name.Text, phone.Text, country.Text, city.Text, postal_code.Text);
            Response.Redirect("login.aspx");
        }
    }
}