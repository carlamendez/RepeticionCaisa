using commons;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Caisa
{
    public partial class MenuPrincipal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarInfoUsuario();
            }
        }
        private void CargarInfoUsuario()
        {
            lblnombre.Text = datos.nombre + " "+datos.paterno+" "+datos.materno;
            lbledadu.Text = datos.edad.ToString();
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("DatosPersonales.aspx");
        }

        protected void lnkcerrarsesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}