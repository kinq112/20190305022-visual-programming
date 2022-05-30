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
   
    public partial class Buy : Form
    {
        SqlConnection barbaros = new SqlConnection(@"Data Source=DESKTOP-N8LJH0U\SQLEXPRESS;Initial Catalog=20190305022;Integrated Security=True");
        public Buy()
        {
            InitializeComponent();
        }
        Form3 formForm3;

        private void Form2_Load(object sender, EventArgs e)
       
        {
            barbaros.Open();
            SqlCommand sqlcommand = new SqlCommand("SELECT*FROM Locations ", barbaros);
            SqlDataReader reader = sqlcommand.ExecuteReader();
            while (reader.Read())
            {
                comboBox1.Items.Add(reader["Start"]);
                comboBox2.Items.Add(reader["Destination"]);
                comboBox3.Items.Add(reader["gender"]);
                

            }

            barbaros.Close();


        }
        

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                barbaros.Open();
            
            SqlCommand barbarossa = new SqlCommand("INSERT INTO Passangers (Fullname,Price,Date) VALUES (@p1,@p2,@p3)", barbaros);
            barbarossa.Parameters.AddWithValue("@p1",textBox1.Text);
            barbarossa.Parameters.AddWithValue("@p2", textBox2.Text);
                barbarossa.Parameters.Add("@p3", SqlDbType.Date).Value = dateTimePicker1.Value.Date;
                barbarossa.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {
                formForm3 = new Form3();
                formForm3.Show();
                barbaros.Close();
            }

        }
        private void showdata() { 
        string q = "SELECT*FROM Passengers";
        SqlDataAdapter adapter = new SqlDataAdapter();
        DataTable dt = new DataTable();
        adapter.Fill(dt);
        }
        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
          
         
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            System.Windows.Forms.Application.Exit();
        }
    }
}
