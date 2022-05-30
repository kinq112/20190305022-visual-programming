using System.Data.SqlClient;

namespace _20190305022
{
    public partial class Form1 : Form
    {
        Buy formBuy;

        public Form1()
        {
            InitializeComponent();
        }

        SqlConnection barbaros =new SqlConnection(@"Data Source=DESKTOP-N8LJH0U\SQLEXPRESS;Initial Catalog=20190305022;Integrated Security=True");

        private void button1_Click(object sender, EventArgs e)
        {
            String Password="";
            try
            {
                barbaros.Open();
                SqlCommand Sqlbarbaros = new SqlCommand("Select Password From Admin WHERE Username=@p1",barbaros);
                Sqlbarbaros.Parameters.AddWithValue("@p1",Username.Text);
                SqlDataReader SqlbarbarosDataReader = Sqlbarbaros.ExecuteReader();

                while (SqlbarbarosDataReader.Read() )
                    { 

                    Password = SqlbarbarosDataReader[0].ToString();

                }
                if (Password == TxtPassword.Text)

                {
                    formBuy = new Buy();
                    formBuy.Show();
                }
                
            }
            catch (Exception ex)
            {
                MessageBox.Show("Connection Eror"+ ex.Message);
            }
            finally
            {
                barbaros.Close();
            }



            
    }

        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }

}