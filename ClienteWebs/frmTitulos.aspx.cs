using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClienteWebs
{
    public partial class frmTitulos : System.Web.UI.Page
    {
        ServiceReference3.WSTituloSoapClient servicio = new ServiceReference3.WSTituloSoapClient();


        private void Listar()
        {
            gvEscuela.DataSource = servicio.Listar().Tables[0];
            gvEscuela.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            //Solo debe cargar la primera vez
            if (!Page.IsPostBack)
                Listar();
        }




        protected void btnAgregar_Click2(object sender, EventArgs e)
        {
            // Agregar una escuela a la tabla Escuela
            string[] msj = servicio.Agregar(txtCodigo.Text, txtNombre.Text, txtTipo.Text, txtPub.Text, txtPrecio.Text, txtAdvance.Text, txtRoyalty.Text, txtYtd.Text, txtNotas.Text,txtFecha.Text);

            Response.Write("<script>alert('" + msj[0] + " : " + msj[1] + "'); </script>");
            Listar();
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {

            // ACTUALIZAR una escuela a la tabla Escuela
            string[] msj = servicio.Actualizar(txtCodigo.Text, txtNombre.Text, txtTipo.Text, txtPub.Text, txtPrecio.Text, txtAdvance.Text, txtRoyalty.Text, txtYtd.Text, txtNotas.Text, txtFecha.Text);

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
            txtTipo.Text = "";
            txtPub.Text = "";
            txtAdvance.Text = "";
            txtPrecio.Text = "";
            txtCodigo.Text = "";
            txtYtd.Text = "";
            txtRoyalty.Text = "";
            txtNotas.Text = "";
            txtFecha.Text = "";


            Listar();
        }
     

        protected void btnVer_Click1(object sender, EventArgs e)
        {
            if (txtCodigo.Text == "")
            {
                Response.Write("<script>alert('ERROR: NO EXISTE UN ID DE AUTOR PARA VER'); </script>");
            }
            else
            {
                Response.Redirect("~/frmAutor?id=" + txtCodigo.Text + "&Nombre=" + txtNombre.Text);
            }
        }

        protected void gvEscuela_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtCodigo.Text = this.gvEscuela.Rows[gvEscuela.SelectedIndex].Cells[1].Text;
            txtNombre.Text = this.gvEscuela.Rows[gvEscuela.SelectedIndex].Cells[2].Text;
            txtTipo.Text = this.gvEscuela.Rows[gvEscuela.SelectedIndex].Cells[3].Text;
            txtPub.Text = this.gvEscuela.Rows[gvEscuela.SelectedIndex].Cells[4].Text;
            txtPrecio.Text = this.gvEscuela.Rows[gvEscuela.SelectedIndex].Cells[5].Text;
            txtAdvance.Text = this.gvEscuela.Rows[gvEscuela.SelectedIndex].Cells[6].Text;
            txtRoyalty.Text = this.gvEscuela.Rows[gvEscuela.SelectedIndex].Cells[7].Text;
            txtYtd.Text = this.gvEscuela.Rows[gvEscuela.SelectedIndex].Cells[8].Text;
            txtNotas.Text = this.gvEscuela.Rows[gvEscuela.SelectedIndex].Cells[9].Text;
            txtFecha.Text = this.gvEscuela.Rows[gvEscuela.SelectedIndex].Cells[10].Text;
        }

     
        protected void btnVer_Click2(object sender, EventArgs e)
        {
            if (txtCodigo.Text == "")
            {
                Response.Write("<script>alert('ERROR: NO EXISTE UN ID DE AUTOR PARA VER'); </script>");
            }
            else
            {
                Response.Redirect("~/frmAutor?id=" + txtCodigo.Text + "&Nombre=" + txtNombre.Text);
            }
        }
    }
}