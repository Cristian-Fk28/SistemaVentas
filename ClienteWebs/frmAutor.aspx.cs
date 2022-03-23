using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClienteWebs
{
    public partial class frmAutor : System.Web.UI.Page
    {
        ServiceReference1.WSAutorSoapClient servicio = new ServiceReference1.WSAutorSoapClient();


        private void Listar()
        {
            gvEscuela.DataSource = servicio.Listar().Tables[0];
            gvEscuela.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Params["Nombre"] != null)
            {
                txtLabel1.Text = Request.Params["Nombre"];

            }
            if (Request.Params["id"] != null)
            {

                txtlabel2.Text = Request.Params["id"];

            }
            //Solo debe cargar la primera vez
            if (!Page.IsPostBack)
                Listar();
        }




        protected void btnAgregar_Click2(object sender, EventArgs e)
        {
            // Agregar una escuela a la tabla Escuela
            string[] msj = servicio.Agregar(txtCodigo.Text, txtNombre.Text, txtApellido.Text, txtCelular.Text, txtDireccion.Text, txtCiudad.Text, txtEstado.Text, txtCodPostal.Text, txtContrato.Text);

            Response.Write("<script>alert('" + msj[0] + " : " + msj[1] + "'); </script>");
            Listar();
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {

            // ACTUALIZAR una escuela a la tabla Escuela
            string[] msj = servicio.Actualizar(txtCodigo.Text, txtNombre.Text, txtApellido.Text, txtCelular.Text, txtDireccion.Text, txtCiudad.Text, txtEstado.Text, txtCodPostal.Text, txtContrato.Text);

            Response.Write("<script>alert('" + msj[0] + " : " + msj[1] + "'); </script>");
            Listar();

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            //// eliminar una escuela a la tabla Escuela
            string[] msj = servicio.Eliminar(txtCodigo.Text);
            Response.Write("<script>alert('" + msj[0] + " : " + msj[1] + "'); </script>");
            Listar();
        }


        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            // Buscar una escuela a la tabla Escuela
            gvEscuela.DataSource = servicio.Buscar(txtNombres.Text, txtCriterios.Text).Tables[0];
            gvEscuela.DataBind();
        }
        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            // Buscar una escuela a la tabla Escuela

            txtCriterios.Text = "";
            txtNombres.Text = "";
            txtNombre.Text = "";
            txtApellido.Text = "";
            txtCelular.Text = "";
            txtCiudad.Text = "";
            txtDireccion.Text = "";
            txtCodigo.Text = "";
            txtCodPostal.Text = "";
            txtEstado.Text = "";
            txtContrato.Text = "";
            Listar();
        }

        protected void gvEscuela_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtCodigo.Text = this.gvEscuela.Rows[gvEscuela.SelectedIndex].Cells[1].Text;
            txtNombre.Text = this.gvEscuela.Rows[gvEscuela.SelectedIndex].Cells[2].Text;
            txtApellido.Text = this.gvEscuela.Rows[gvEscuela.SelectedIndex].Cells[3].Text;
            txtCelular.Text = this.gvEscuela.Rows[gvEscuela.SelectedIndex].Cells[4].Text;
            txtDireccion.Text = this.gvEscuela.Rows[gvEscuela.SelectedIndex].Cells[5].Text;
            txtCiudad.Text = this.gvEscuela.Rows[gvEscuela.SelectedIndex].Cells[6].Text;
            txtEstado.Text = this.gvEscuela.Rows[gvEscuela.SelectedIndex].Cells[7].Text;
            txtCodPostal.Text = this.gvEscuela.Rows[gvEscuela.SelectedIndex].Cells[8].Text;
            txtContrato.Text = this.gvEscuela.Rows[gvEscuela.SelectedIndex].Cells[9].Text;

        }

        protected void btnVer_Click(object sender, EventArgs e)
        {
            if (txtCodigo.Text == "")
            {
                Response.Write("<script>alert('ERROR: NO EXISTE UN ID DE AUTOR PARA VER'); </script>");
            }
            else
            {
                Response.Redirect("~/frmTituloAutor?id=" + txtCodigo.Text + "&Nombre=" + txtlabel2.Text);
            }

        }
    }
}