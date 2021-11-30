using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace Pagina_web_sistema_de_ventas
{
    public partial class Existencias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conexion = new SqlConnection(@"Data Source=LAPTOP-QM112JVD\MSSQLSERVER01;Initial Catalog=Sistema de ventas;Integrated Security=True");
            conexion.Open();

            string actualizar = "UPDATE Existencias1 SET Id_Producto=@Id_Producto,Cantidad=@Cantidad,Codigo_de_Barra=@Codigo_de_Barra,Nombre_del_Producto=@Nombre_del_Producto WHERE Id_Producto=@Id_Producto";
            SqlCommand cmd2 = new SqlCommand(actualizar, conexion);

            cmd2.Parameters.AddWithValue("@Id_Producto", TextBox1.Text);
            cmd2.Parameters.AddWithValue("@Cantidad", TextBox2.Text);
            cmd2.Parameters.AddWithValue("@Codigo_de_Barra", TextBox3.Text);
            cmd2.Parameters.AddWithValue("@Nombre_del_Producto", TextBox4.Text);

            ;

            cmd2.ExecuteNonQuery();
            MessageBox.Show("Los datos fueron actualizados con exito");

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            {
                SqlConnection conexion = new SqlConnection(@"Data Source=LAPTOP-QM112JVD\MSSQLSERVER01;Initial Catalog=Sistema de ventas;Integrated Security=True");
                string Id_Producto;
                Id_Producto = (TextBox1.Text);

                SqlCommand consulta_comprobar = new SqlCommand("  Select count(*) From Existencias1 WHERE  Id_Producto=@Id_Producto  ", conexion);

                conexion.Open();
                consulta_comprobar.Parameters.AddWithValue("@Id_Producto", Id_Producto);
                int i;
                i = Convert.ToInt32(consulta_comprobar.ExecuteScalar());

                if (i > 0)
                {
                    MessageBox.Show("El producto que quiere registrar, ya se encuentra registrado en existencias");
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";


                }
                else
                {

                    string cadenaconsulta;

                    cadenaconsulta = "Insert into Existencias1 (Id_Producto,Cantidad,Codigo_de_Barra, Nombre_del_Producto)values(@Id_Producto,@Cantidad,@Codigo_de_Barra,@Nombre_del_Producto)";

                    SqlCommand consulta_agregar = new SqlCommand(cadenaconsulta, conexion);
                    consulta_agregar.Parameters.AddWithValue("@Id_Producto", TextBox1.Text);
                    consulta_agregar.Parameters.AddWithValue("@Cantidad", TextBox2.Text);
                    consulta_agregar.Parameters.AddWithValue("@Codigo_de_Barra", TextBox3.Text);
                    consulta_agregar.Parameters.AddWithValue("@Nombre_del_Producto", TextBox4.Text);



                    if (i >= 0)
                    {
                        try
                        {



                            consulta_agregar.ExecuteNonQuery();
                            conexion.Close();

                            MessageBox.Show("Se Registro el producto en existencias correctamente");

                            TextBox1.Text = "";
                            TextBox2.Text = "";
                            TextBox3.Text = "";
                            TextBox4.Text = "";



                        }



                        catch (SqlException j)
                        {
                            MessageBox.Show(j.ToString());
                        }


                    }
                }



            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlConnection conexion = new SqlConnection(@"Data Source=LAPTOP-QM112JVD\MSSQLSERVER01;Initial Catalog=Sistema de ventas;Integrated Security=True");

            conexion.Open();
            string eliminar;

            eliminar = "DELETE FROM Existencias1 WHERE Id_Producto=@Id_Producto";

            SqlCommand cmd = new SqlCommand(eliminar, conexion);

            cmd.Parameters.AddWithValue("@Id_Producto", TextBox1.Text);
            cmd.ExecuteNonQuery();
            conexion.Close();
            MessageBox.Show(" el producto fue eliminado");
            TextBox1.Text = "";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Button3.Visible = false;
            Button5.Visible = false;
            Button1.Visible = false;
            Button7.Visible = false;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Button3.Visible = false;
            Button6.Visible = false;
            Button5.Visible = false;
            Button7.Visible = false;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Button1.Visible = Visible;
            Button7.Visible = Visible;
            Button3.Visible = Visible;
            Button4.Visible = Visible;
            Button5.Visible = Visible;
            Button6.Visible = Visible;
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}