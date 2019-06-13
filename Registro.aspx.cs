using BusinessCaisa;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Caisa
{
    public partial class Registro : System.Web.UI.Page
    {
        BusUsuario bu = new BusUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void btnregistrar_Click(object sender, EventArgs e)
        {
            try
            {
                EntitiesCaisa ec = new EntitiesCaisa();

                ec.email = txtemail.Text;
                ec.usuario = txtusuario.Text;
                ec.contrasena = txtpass.Text;
                ec.confirmarcontrasena = txtconfpass.Text;
                ec.nombre = txtnombre.Text;
                ec.paterno = txtpaterno.Text;
                ec.materno = txtmaterno.Text;
                ec.nacimiento = Convert.ToDateTime(txtnacimiento.Text);
                ec.edad = DateTime.Today.Year - ec.nacimiento.Year;
                txtedad.Text = ec.edad.ToString(); //Convert.ToInt32(txtedad.Text);
                ec.direccion = txtdireccion.Text;
                ec.telefono = txttelefono.Text;

                if (ec.email.Contains("@")&& ec.email.Contains(".com"))
                {
                    lblerror.Text = "Email valido";
                }
                else
                {
                    lblerror.Text = "Email no valido favor de escribir nuevamente";
                }

                bu.registrar(ec);
                ScriptManager.RegisterStartupScript(btnregistrar, this.GetType(), "alert", "alert('El registro se genero correctamente');", true);
                Response.Redirect("Login.aspx");
                

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        protected void btncancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}