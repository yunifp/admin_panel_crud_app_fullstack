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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(TxtUser.Text) && !string.IsNullOrEmpty(TxtPassword.Text))
            {
                DataTable dtLogin = new DataTable();
                dtLogin = ClsLogin.DtLogin(TxtUser.Text, TxtPassword.Text);

                if (dtLogin.Rows.Count != 0)
                {
                    Response.Redirect("~/HomePage.aspx");
                }
                else
                {
                    LblWarning.Text = "Email dan password yang anda masukkan salah...";
                }
            }
            else
            {
                LblWarning.Text = "Mohon masukkan email dan password.";
            }

        }
    }
}


