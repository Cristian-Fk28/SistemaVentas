using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClienteWebs
{
    public partial class frmTituloAutor : System.Web.UI.Page
    {
        ServiceReference4.WSTituloAutorSoapClient servicio = new ServiceReference4.WSTituloAutorSoapClient();


        private void Listar()
        {
            gvEscuela.DataSource = servicio.Listar().Tables[0];
            gvEscuela.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Params["Nombre"] != null)
            {
                txtlabel2.Text = Request.Params["Nombre"];

            }
            if (Request.Params["id"] != null)
            {

                txtlabel3.Text = Request.Params["id"];

            }
            //Solo debe cargar la primera vez
            if (!Page.IsPostBack)
                Listar();
        }

        protected void btnVer_Click(object sender, EventArgs e)
        {
            // Agregar una escuela a la tabla Escuela
            string[] msj = servicio.Agregar(txtlabel3.Text, txtlabel2.Text,txtNombres.Text,txtCriterios.Text);

            Response.Write("<script>alert('" + msj[0] + " : " + msj[1] + "'); </script>");
            Listar();
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            //// eliminar una escuela a la tabla Escuela
            string[] msj = servicio.Eliminar(Label1.Text);
            Response.Write("<script>alert('" + msj[0] + " : " + msj[1] + "'); </script>");
            Listar();
        }

        protected void gvEscuela_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Text = this.gvEscuela.Rows[gvEscuela.SelectedIndex].Cells[1].Text;
            Label2.Text = this.gvEscuela.Rows[gvEscuela.SelectedIndex].Cells[2].Text;
            Label3.Text = this.gvEscuela.Rows[gvEscuela.SelectedIndex].Cells[3].Text;
            Label4.Text = this.gvEscuela.Rows[gvEscuela.SelectedIndex].Cells[4].Text;

        }
    }
}