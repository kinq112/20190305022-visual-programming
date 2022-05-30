using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace _20190305022
{
    
    public partial class Form3 : Form
    {
        SqlConnection barbaros = new SqlConnection(@"Data Source=DESKTOP-N8LJH0U\SQLEXPRESS;Initial Catalog=20190305022;Integrated Security=True");

        public Form3()
        {
            InitializeComponent();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            
        }

        private void Form3_Load(object sender, EventArgs e)
        {
            try
            {
                string q = "SELECT * FROM Passangers";
                SqlDataAdapter da = new SqlDataAdapter(q, barbaros);
                DataTable dt = new DataTable();
                da.Fill(dt);


               
                    dataGridView1.DataSource = dt;
                

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            System.Windows.Forms.Application.Exit();
        }
    }
    }

