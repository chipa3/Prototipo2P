using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CapaVista;

namespace ContenedorMDI
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void iNGRESODEALUMNOSToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void iNGRESODEALUMNOToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmIngresoAlumno ingresar = new frmIngresoAlumno();
            ingresar.MdiParent = this;
            ingresar.Show();
            
        }

        private void eLIMINACIONDEALUMNOSToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmEliminarAlumno eliminar = new frmEliminarAlumno();
            eliminar.MdiParent = this;
            eliminar.Show();
        }
    }
}
