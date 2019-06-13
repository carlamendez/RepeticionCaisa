using BusinessCaisa;
using DataCaisa;
using System;
using System.Collections.Generic;
using System.Data;

namespace Caisa
{
    public partial class Login : System.Web.UI.Page
    {
        BusUsuario bu = new BusUsuario();

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                   
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        protected void btniniciosesion_Click(object sender, EventArgs e)
        {

            try
            {
                if (txtusuario.Text !="")
                {
                    if (txtcontrasena.Text !="")
                    {
                        var validlogin = bu.login(txtusuario.Text, txtcontrasena.Text);
                        if (validlogin)
                        {
                            Response.Redirect("MenuPrincipal.aspx");
                        }
                        else
                        {
                            msgerror("Nombre de usuario o contraseña incorrecta");
                            txtcontrasena.Text = ""; 
                            txtusuario.Text = "";
                            txtusuario.Focus();
                        }
                    }
                    else
                    {
                        msgerror("Escribir Contraseña");
                    }
                }
                else
                {
                    msgerror("Escribir Usuario");
                }

                
            }
            catch (Exception ex)
            {

                throw ex;
            }
         }

        protected void btnregistrarse_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro.aspx");
        }
        private void msgerror(string msj)
        {
            lblerror.Text = msj;
            lblerror.Visible = true;
        }
    }
}