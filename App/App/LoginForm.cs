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

namespace App
{
    public partial class LoginForm : Form
    {
        public LoginForm()
        {
            InitializeComponent();
        }

        private void LoginButton_Click(object sender, EventArgs e)
        {
            try
            {
                //checking if the username field is empty or not
                if (!(UserNameBox.Text == string.Empty))
                {
                    //checking if the password field is empty or not
                    if (!(PasswordBox.Text == string.Empty))
                    {
                        //my connection string
                        String ConStr = "Data Source=FEROZE;Initial Catalog=InventoryApp;Integrated Security=True";

                        //opening sql connection
                        SqlConnection Conn = new SqlConnection(ConStr);
                        Conn.Open();

                        //writing query for it login
                        String query = "select * from Users where Username='" + UserNameBox.Text + "' and Password='" + PasswordBox.Text + "' ";

                        //giving sql command 
                        SqlCommand Cmd = new SqlCommand(query, Conn);

                        //sql data reader 
                        SqlDataReader dbr;
                        dbr = Cmd.ExecuteReader();

                        //getting data from the db
                        int count = 0;
                        while (dbr.Read())
                        {
                            count = count + 1;
                        }
                        if (count == 1)
                        {
                            MainForm obj = new MainForm();
                            obj.Show();
                            this.Hide();
                        }
                        else if (count < 1)
                        {
                            MessageBox.Show("incorrect username or password");
                        }
                        
                    }
                    else
                    {
                        MessageBox.Show("Please enter the password");
                    }
                }
                else
                {
                    MessageBox.Show("Please enter the username");
                }
            }
            catch (Exception es)
            {
                MessageBox.Show(es.Message);
            }           
        }
    }
}
