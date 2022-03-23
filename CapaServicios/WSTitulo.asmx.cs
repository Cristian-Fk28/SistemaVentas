using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using CapaNegocios;
using System.Data;
using CapaEntidad;
namespace CapaServicios
{
    /// <summary>
    /// Descripción breve de WSTitulo
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    // [System.Web.Script.Services.ScriptService]
    public class WSTitulo : System.Web.Services.WebService
    {

         [WebMethod(Description ="Listar Titulos")]
        public DataSet Listar()
        {
            TituloBL titulo = new TituloBL();
            return titulo.Listar();
        }
        [WebMethod(Description = "Agregar Titulos")]
            public string[] Agregar(string Codigo, string Nombre, string Tipo, string Pub, string Precio, string Advance, string Royalty, string Ytd, string Notas, string Fecha)
            {
                TituloBL escuelaBL = new TituloBL();
                Titulo titulo = new Titulo();
            titulo.Id = Codigo;
            titulo.Nombre = Nombre;
            titulo.Tipo = Tipo;
            titulo.Pub = Pub;
            titulo.Precio = Precio;
            titulo.Advance = Advance;
            titulo.Royalty = Royalty;
            titulo.Ytd = Ytd;
            titulo.Notas = Notas;
            titulo.Fecha = Fecha;
            string[] valores = new string[2];
                valores[0] = escuelaBL.Agregar(titulo).ToString();
                valores[1] = escuelaBL.Mensaje;
                return valores;
            }




          [WebMethod(Description = "Actualizar Titulos")]
        public string[] Actualizar(string Codigo, string Nombre, string Tipo, string Pub, string Precio, string Advance, string Royalty, string Ytd, string Notas, string Fecha)
        {
            TituloBL escuelaBL = new TituloBL();
            Titulo titulo = new Titulo();
            titulo.Id = Codigo;
            titulo.Nombre = Nombre;
            titulo.Tipo = Tipo;
            titulo.Pub = Pub;
            titulo.Precio = Precio;
            titulo.Advance = Advance;
            titulo.Royalty = Royalty;
            titulo.Ytd = Ytd;
            titulo.Notas = Notas;
            titulo.Fecha = Fecha;
            string[] valores = new string[2];
            valores[0] = escuelaBL.Actualizar(titulo).ToString();
            valores[1] = escuelaBL.Mensaje;
            return valores;
        }



        
        [WebMethod(Description = "Eliminar Titulos")]
        public string[] Eliminar(string Codigo)
        {
            TituloBL titulo = new TituloBL();
            string[] valores = new string[2];
            valores[0] = titulo.Eliminar(Codigo).ToString();
            valores[1] = titulo.Mensaje;
            return valores;
        }



        [WebMethod(Description = "Buscar Titulos")]
        public DataSet Buscar(string texto, string criterio)
        {
            TituloBL titulo = new TituloBL();
            return titulo.Buscar(texto, criterio);
        }
    }
}