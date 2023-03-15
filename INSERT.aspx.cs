using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace CRUDOPERATION_IN_WEBAPPLICATION
{
    public partial class INSERT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            string name = txtString.Text;



            string email = TextBox1.Text;



            string password = TextBox2.Text;




            using (MySqlConnection connection = new MySqlConnection("Server=127.0.0.1;Database=alphapi;Uid =dev1;Pwd=dev@1234")) {
                connection.Open();

                string sql = "INSERT INTO employe (name, email, password) VALUES (@name, @email, @password);";

                using (MySqlCommand command = new MySqlCommand(sql, connection)) {

                    command.Parameters.AddWithValue("@name", name);
                    command.Parameters.AddWithValue("@email", email);
                    command.Parameters.AddWithValue("@password", password);

                    command.ExecuteNonQuery();
                   
                }
            }
            ResultLabel.Text = "HURRAY YOU HAVE SUCCESSFULLY PERFORMED INSERT OPERATION IN TABLE";

           
           
        }
    }
}