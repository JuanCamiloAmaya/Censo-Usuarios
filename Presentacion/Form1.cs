using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Negocio;
namespace Presentacion
{
    public partial class Form1 : Form
    {
        NUsuarios NUsu = new NUsuarios();
        private String idUsuario = null;
        private bool Editar = false;
        private bool campos = false;
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            MostarUsuarios();
            datetime.CustomFormat = "dd/MM/yyyy hh:mm tt";
            btnVolver.Hide();
        }

        private void MostarUsuarios()
        {
            NUsuarios Usu = new NUsuarios();
            dataGridView.DataSource = Usu.MostarUsuarios();
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            //INSERTAR
            if (Editar == false)
            {
                try
                {
                    ValidarDatos();
                    if (campos == true)
                    {
                        NUsu.InsertarUsuarios(txtCedula.Text, txtNombres.Text, txtApellidos.Text, txtDireccion.Text, txtBarrio.Text, txtEstrato.Text, txtCiudad.Text, txtDepartamento.Text, txtTelefono.Text, txtCelular.Text, txtCorreo.Text, txtObservacion.Text, comboBox1.Text, datetime.Value);
                        MessageBox.Show("SE INSERTO CORRECTAMENTE");
                        MostarUsuarios();
                        LimpiarForm();
                    }
                    else
                    {
                        MessageBox.Show("FALTAN CAMPOS POR LLENAR");
                    }
                    
                }
                catch (Exception ex)
                {
                    MessageBox.Show("NO SE INSERTARON LOS DATOS POR " + ex);
                }
            }
            //MODIFICAR
            if (Editar == true)
            {
                try
                {
                    ValidarDatos();
                    if (campos == true)
                    {
                        NUsu.EditarUsuarios(txtCedula.Text, txtNombres.Text, txtApellidos.Text, txtDireccion.Text, txtBarrio.Text, txtEstrato.Text, txtCiudad.Text, txtDepartamento.Text, txtTelefono.Text, txtCelular.Text, txtCorreo.Text, txtObservacion.Text, comboBox1.Text, datetime.Value, idUsuario);
                        MessageBox.Show("SE MODIFICARON CORRECTAMENTE");
                        MostarUsuarios();
                        LimpiarForm();
                        Editar = false;
                    }
                    else
                    {
                        MessageBox.Show("FALTAN CAMPOS POR LLENAR");
                    }
                    
                }
                catch (Exception ex)
                {
                    MessageBox.Show("NO SE MODIFICARON LOS DATOS POR " + ex);
                }
            }
            
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            if (dataGridView.SelectedRows.Count > 0)
            {
                Editar = true;
                txtCedula.Text = dataGridView.CurrentRow.Cells["Cedula"].Value.ToString();
                txtNombres.Text = dataGridView.CurrentRow.Cells["Nombres"].Value.ToString();
                txtApellidos.Text = dataGridView.CurrentRow.Cells["Apellidos"].Value.ToString();
                txtDireccion.Text = dataGridView.CurrentRow.Cells["Direccion"].Value.ToString();
                txtBarrio.Text = dataGridView.CurrentRow.Cells["Barrio"].Value.ToString();
                txtEstrato.Text = dataGridView.CurrentRow.Cells["Estrato"].Value.ToString();
                txtCiudad.Text = dataGridView.CurrentRow.Cells["Ciudad"].Value.ToString();
                txtDepartamento.Text = dataGridView.CurrentRow.Cells["Departamento"].Value.ToString();
                txtTelefono.Text = dataGridView.CurrentRow.Cells["Telefono"].Value.ToString();
                txtCelular.Text = dataGridView.CurrentRow.Cells["Celular"].Value.ToString();
                txtCorreo.Text = dataGridView.CurrentRow.Cells["Correo"].Value.ToString();
                txtObservacion.Text = dataGridView.CurrentRow.Cells["Observacion"].Value.ToString();
                idUsuario = dataGridView.CurrentRow.Cells["Id"].Value.ToString();
            }
            else
            {
                MessageBox.Show("SELECCIONE LA FILA A EDITAR");
            }
        }

        private void LimpiarForm()
        {
            txtCedula.Clear();
            txtNombres.Clear();
            txtApellidos.Clear();
            txtDireccion.Clear();
            txtBarrio.Clear();
            txtEstrato.Clear();
            txtCiudad.Clear();
            txtDepartamento.Clear();
            txtTelefono.Clear();
            txtCelular.Clear();
            txtCorreo.Clear();
            txtObservacion.Clear();
            comboBox1.Text = "";
        }

        private void btnBorrar_Click(object sender, EventArgs e)
        {
            if (dataGridView.SelectedRows.Count > 0)
            {
                idUsuario = dataGridView.CurrentRow.Cells["Id"].Value.ToString();
                NUsu.EliminarUsuarios(idUsuario);
                MessageBox.Show("SE ELIMINO CORRECTAMENTE");
                MostarUsuarios();
            }
            else
            {
                MessageBox.Show("SELECCIONE LA FILA A BORRAR");
            }
        }

        private void ValidarDatos()
        {
            if (string.IsNullOrEmpty(txtCedula.Text)||string.IsNullOrEmpty(txtNombres.Text)||string.IsNullOrEmpty(txtApellidos.Text)||string.IsNullOrEmpty(txtDireccion.Text)||string.IsNullOrEmpty(txtBarrio.Text)||string.IsNullOrEmpty(txtEstrato.Text)
                ||string.IsNullOrEmpty(txtCiudad.Text)||string.IsNullOrEmpty(txtDepartamento.Text)||string.IsNullOrEmpty(txtTelefono.Text)||string.IsNullOrEmpty(txtCelular.Text)||string.IsNullOrEmpty(txtCorreo.Text)||string.IsNullOrEmpty(txtObservacion.Text)|| string.IsNullOrEmpty(comboBox1.Text))
            {
                campos = false;
            }
            else
            {
                campos = true;
            }
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            NUsuarios BUsu = new NUsuarios();
            dataGridView.DataSource = BUsu.BuscarUsuarios(txtCedula.Text);
            btnVolver.Show();
        }

        private void btnVolver_Click(object sender, EventArgs e)
        {
            MostarUsuarios();
            btnVolver.Hide();
            txtBuscar.Clear();
        }
    }
}
