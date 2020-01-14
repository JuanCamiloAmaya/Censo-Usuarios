using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
namespace Datos
{
    public class Usuarios
    {
        private Conexion conexion = new Conexion();

        SqlDataReader leer;
        DataTable tabla = new DataTable();
        SqlCommand comando = new SqlCommand();

        public DataTable MostrarUsuarios(){
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "MostrarUsuarios";
            comando.CommandType = CommandType.StoredProcedure;
            leer = comando.ExecuteReader();
            tabla.Load(leer);
            conexion.CerrarConexion();
            return tabla;
        }

        public void InsertarUsuarios(string cedula, string nombres, string apellidos, string direccion, string barrio, string estrato, string ciudad, string departamento, string telefono, string celular, string correo, string observacion , string predio, DateTime fecha)
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "InsertarUsuarios";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@cedula", cedula);
            comando.Parameters.AddWithValue("@nombres", nombres);
            comando.Parameters.AddWithValue("@apellidos",apellidos);
            comando.Parameters.AddWithValue("@direccion", direccion);
            comando.Parameters.AddWithValue("@barrio", barrio);
            comando.Parameters.AddWithValue("@estrato", estrato);
            comando.Parameters.AddWithValue("@ciudad", ciudad);
            comando.Parameters.AddWithValue("@departamento", departamento);
            comando.Parameters.AddWithValue("@telefono", telefono);
            comando.Parameters.AddWithValue("@celular", celular);
            comando.Parameters.AddWithValue("@correo", correo);
            comando.Parameters.AddWithValue("@observacion", observacion);
            comando.Parameters.AddWithValue("@predio", predio);
            comando.Parameters.AddWithValue("@fecha", fecha);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
        }

        public void EditarUsuarios(string cedula, string nombres, string apellidos, string direccion, string barrio, string estrato, string ciudad, string departamento, string telefono, string celular, string correo, string observacion, int id, string predio, DateTime fecha)
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "EditarUsuarios";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@cedula", cedula);
            comando.Parameters.AddWithValue("@nombres", nombres);
            comando.Parameters.AddWithValue("@apellidos", apellidos);
            comando.Parameters.AddWithValue("@direccion", direccion);
            comando.Parameters.AddWithValue("@barrio", barrio);
            comando.Parameters.AddWithValue("@estrato", estrato);
            comando.Parameters.AddWithValue("@ciudad", ciudad);
            comando.Parameters.AddWithValue("@departamento", departamento);
            comando.Parameters.AddWithValue("@telefono", telefono);
            comando.Parameters.AddWithValue("@celular", celular);
            comando.Parameters.AddWithValue("@correo", correo);
            comando.Parameters.AddWithValue("@observacion", observacion);
            comando.Parameters.AddWithValue("@predio", predio);
            comando.Parameters.AddWithValue("@fecha", fecha);
            comando.Parameters.AddWithValue("@id", id);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
        }

        public void EliminarUsuarios(int id)
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "EliminarUsuarios";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@id", id);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
        }

        public DataTable BuscarUsuarios(string cedula)
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "BuscarUsuarios";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@cedula", cedula);
            leer = comando.ExecuteReader();
            tabla.Load(leer);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();
            return tabla;
        }
    }
}
