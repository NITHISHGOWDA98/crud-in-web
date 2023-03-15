using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace CRUDOPERATION_IN_WEBAPPLICATION
{
    public partial class UPDATE : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void update(object sender, EventArgs e)
        {


            string table = TextBox4.Text;



            string email = TextBox3.Text;

            string name = TextBox1.Text;
            string password = TextBox2.Text;
            string id = TextBox5.Text;

            string con = "Server=127.0.0.1;Database=alphapi;Uid =dev1;Pwd=dev@1234";
            MySqlConnection connection = new MySqlConnection(con);
            connection.Open();
            MySqlCommand cmd = new MySqlCommand(" UPDATE `"+ table +"`  SET email = @email  Where id = @id", connection);
            MySqlCommand cmd1 = new MySqlCommand(" UPDATE `" + table + "`   SET name = @name  Where id = @id", connection);
            MySqlCommand cmd2 = new MySqlCommand(" UPDATE `" + table + "`   SET password = @password  Where id = @id", connection);
            {
                cmd.Parameters.AddWithValue("@email", email);
                cmd.Parameters.AddWithValue("@id", id);
                cmd.Parameters.AddWithValue("@table", table);

                cmd1.Parameters.AddWithValue("@name", name);
                cmd1.Parameters.AddWithValue("@id", id);
                cmd1.Parameters.AddWithValue("@table", table);

                
                cmd2.Parameters.AddWithValue("@password", password);
                cmd2.Parameters.AddWithValue("@id", id);
                cmd2.Parameters.AddWithValue("@table", table);


                cmd.ExecuteNonQuery();
                cmd1.ExecuteNonQuery();
                cmd2.ExecuteNonQuery();
            }
            connection.Close();

            ResultLabel.Text = "HURRAY YOU HAVE SUCCESSFULLY PERFORMED UPDATE OPERATION IN TABLE";
        }
    } }
            
                 
               