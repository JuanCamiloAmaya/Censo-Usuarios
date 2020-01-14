using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Datos;

namespace Negocio
{
    public class NUsuarios
    {
        private Usuarios DUsu = new Usuarios();

        public DataTable MostarUsuarios()
        {
            DataTable tabla = new DataTable();
            tabla = DUsu.MostrarUsuarios();
            return tabla;
        }

        public void InsertarUsuarios(string cedula, string nombres, string apellidos, string direccion, string barrio, string estrato, string ciudad, string departamento, string telefono, string celular, string correo, string observacion, string predio, DateTime fecha)
        {
            DUsu.InsertarUsuarios(cedula, nombres, apellidos, direccion, barrio, estrato, ciudad, departamento, telefono, celular, correo, observacion, predio, fecha);
        }

        public void EditarUsuarios(string cedula, string nombres, string apellidos, string direccion, string barrio, string estrato, string ciudad, string departamento, string telefono, string celular, string correo, string observacion, string predio, DateTime fecha, string id)
        {
            DUsu.EditarUsuarios(cedula, nombres, apellidos, direccion, barrio, estrato, ciudad, departamento, telefono, celular, correo, observacion, Convert.ToInt32(id), predio, fecha);
        }

        public void EliminarUsuarios(string id)
        {
            DUsu.EliminarUsuarios(Convert.ToInt32(id));
        }
    }
}
