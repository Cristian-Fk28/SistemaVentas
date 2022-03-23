using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidad
{ 
   public class Titulo
{
        //Atributos de la clase autor


    private string id;
    private string nombre;
    private string tipo;
    private string pub;
    private string precio;
    private string advance;
    private string royalty;
    private string ytd;
    private string notas;
    private string fecha;
        

        //PROPIEDADES
    public string Id { get => id; set => id = value; }
    public string Nombre { get => nombre; set => nombre = value; }
    public string Tipo { get => tipo; set => tipo = value; }
    public string Pub { get => pub; set => pub = value; }
    public string Precio { get => precio; set => precio = value; }
    public string Advance { get => advance; set => advance = value; }
    public string Royalty { get => royalty; set => royalty = value; }
    public string Ytd { get => ytd; set => ytd = value; }
    public string Notas { get => notas; set => notas = value; }
    public string Fecha { get => fecha; set => fecha = value; }
    }
}
