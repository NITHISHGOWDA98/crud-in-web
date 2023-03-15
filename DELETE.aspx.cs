using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace CRUDOPERATION_IN_WEBAPPLICATION
{
    public partial class DELETE : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void delete(object sender, EventArgs e)
        {
            
            string table = txt1.Text;
            string id = txt2.Text;

            MySqlConnection connection = new MySqlConnection("Server=127.0.0.1;Database=alphapi;Uid =dev1;Pwd=dev@1234");
            connection.Open();
            MySqlCommand c = new MySqlCommand(" DELETE FROM `" + table + "` WHERE id=@id;", connection);
         
            {
                c.Parameters.AddWithValue("@id", id);
                c.Parameters.AddWithValue("@table", table);
                c.ExecuteNonQuery();
            }


            connection.Close();
            ResultLabel.Text = "HURRAY YOU HAVE SUCCESSFULLY PERFORMED DELETE OPERATION IN TABLE";

        }
    }
}