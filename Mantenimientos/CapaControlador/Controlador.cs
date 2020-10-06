using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using CapaModelo;
using System.Data.Odbc;

namespace CapaControlador
{
   public class Controlador
    {
        Sentencias sn = new Sentencias();
        public void ParametrosIngresar(string carnet, string nombre, string direccion, string telefono, string email, string estado, string tabla)
        {
            sn.ingresar(carnet,nombre,direccion,telefono,email,estado,tabla);
        }

        public int codigoMax(string tabla, string campo)
        {
            int codigo = sn.Codigo(tabla, campo);

            return codigo;
        }

        public void EliminarAlumno(string tabla,string codigo)
        {
            sn.eliminar(tabla, codigo);
        }

        public DataTable enviar(string tabla)
        {
            try
            {
                OdbcDataAdapter dt = sn.obtener(tabla);
                DataTable table = new DataTable();
                dt.Fill(table);
                return table;
            }
            catch (Exception ex)
            {
                Console.WriteLine("Puede que los parametros seas erroneos, verifique los parametro enviados" + ex);
                return null;
            }

        }


    }
}
