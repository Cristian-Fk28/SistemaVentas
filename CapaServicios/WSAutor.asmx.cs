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
    /// Descripción breve de WSAutor
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    // [System.Web.Script.Services.ScriptService]
    public class WSAutor : System.Web.Services.WebService
    {

        [WebMethod(Description ="Listar Autor")]
        public DataSet Listar()
        {
            AutorBL autor = new AutorBL();
            return autor.Listar();
        }
        [WebMethod(Description = "Agregar AUTOR")]
            public string[] Agregar(string Codigo, string Nombre, string Apellido, string Celular, string Direccion, string Ciudad, string Estado, string CodPostal, string Contrato)
            {
                AutorBL escuelaBL = new AutorBL();
                Autor autor = new Autor();
                autor.Id = Codigo;
                autor.Nombre = Nombre;
                autor.Apellido = Apellido;
                autor.Celular = Celular;
                autor.Direccion = Direccion;
                autor.Ciudad = Ciudad;
                autor.Estado = Estado;
                autor.CodPostal = CodPostal;
                autor.Contrato = Contrato;
                string[] valores = new string[2];
                valores[0] = escuelaBL.Agregar(autor).ToString();
                valores[1] = escuelaBL.Mensaje;
                return valores;
            }
          [WebMethod(Description = "Actualizar Autor")]
        public string[] Actualizar(string Codigo, string Nombre, string Apellido, string Celular, string Direccion, string Ciudad, string Estado, string CodPostal, string Contrato)
        {
            AutorBL escuelaBL = new AutorBL();
            Autor autor = new Autor();
            autor.Id =Codigo;
            autor.Nombre = Nombre;
            autor.Apellido = Apellido;
            autor.Celular = Celular;
            autor.Direccion = Direccion;
            autor.Ciudad = Ciudad;
            autor.Estado = Estado;
            autor.CodPostal = CodPostal;
            autor.Contrato = Contrato;
            string[] valores = new string[2];
            valores[0] = escuelaBL.Actualizar(autor).ToString();
            valores[1] = escuelaBL.Mensaje;
            return valores;
        }
        
        [WebMethod(Description = "Eliminar AUTOR")]
        public string[] Eliminar(string Codigo)
        {
            AutorBL autor = new AutorBL();
            string[] valores = new string[2];
            valores[0] = autor.Eliminar(Codigo).ToString();
            valores[1] = autor.Mensaje;
            return valores;
        }
        [WebMethod(Description = "Buscar AUTOR")]
        public DataSet Buscar(string texto, string criterio)
        {
            AutorBL autor = new AutorBL();
            return autor.Buscar(texto, criterio);
        }
    }
}
