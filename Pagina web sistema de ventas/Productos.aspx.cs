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
    public partial class Productos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlConnection conexion = new SqlConnection(@"Data Source=LAPTOP-QM112JVD\MSSQLSERVER01;Initial Catalog=Sistema de ventas;Integrated Security=True");

            conexion.Open();
            string eliminar;

            eliminar = "DELETE FROM Productos WHERE Codigo_Producto=@Codigo_Producto";

            SqlCommand cmd = new SqlCommand(eliminar, conexion);

            cmd.Parameters.AddWithValue("@Codigo_Producto", TextBox1.Text);
            cmd.ExecuteNonQuery();
            conexion.Close();
            MessageBox.Show(" El producto fue eliminado");
            TextBox1.Text = "";
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            {
                SqlConnection conexion = new SqlConnection(@"Data Source=LAPTOP-QM112JVD\MSSQLSERVER01;Initial Catalog=Sistema de ventas;Integrated Security=True");
                string Id_Usuario;
                Id_Usuario = (TextBox1.Text);

                SqlCommand consulta_comprobar = new SqlCommand("  Select count(*) From Productos WHERE  Codigo_Producto=@Codigo_Producto  ", conexion);

                conexion.Open();
                consulta_comprobar.Parameters.AddWithValue("@Codigo_Producto", Id_Usuario);
                int i;
                i = Convert.ToInt32(consulta_comprobar.ExecuteScalar());

                if (i > 0)
                {
                    MessageBox.Show("El producto que quiere registrar, ya se encuentra registrado");
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    TextBox5.Text = "";
                    TextBox6.Text = "";

                }
                else
                {

                    string cadenaconsulta;

                    cadenaconsulta = "Insert into Productos (Codigo_Producto,Nombre_del_Producto,Cantidad, Valor_Unitario,Valor_Total,Codigo_de_Barra)values(@Codigo_Producto,@Nombre_del_Producto,@Cantidad,@Valor_Unitario,@Valor_Total,@Codigo_de_Barra)";

                    SqlCommand consulta_agregar = new SqlCommand(cadenaconsulta, conexion);
                    consulta_agregar.Parameters.AddWithValue("@Codigo_Producto", TextBox1.Text);
                    consulta_agregar.Parameters.AddWithValue("@Nombre_del_Producto", TextBox2.Text);
                    consulta_agregar.Parameters.AddWithValue("@Cantidad", TextBox3.Text);
                    consulta_agregar.Parameters.AddWithValue("@Valor_Unitario", TextBox4.Text);
                    consulta_agregar.Parameters.AddWithValue("@Valor_Total", TextBox5.Text);
                    consulta_agregar.Parameters.AddWithValue("@Codigo_de_Barra", TextBox6.Text);



                    if (i >= 0)
                    {
                        try
                        {



                            consulta_agregar.ExecuteNonQuery();
                            conexion.Close();

                            MessageBox.Show("Se Registro el producto correctamente");

                            TextBox1.Text = "";
                            TextBox2.Text = "";
                            TextBox3.Text = "";
                            TextBox4.Text = "";
                            TextBox5.Text = "";
                            TextBox6.Text = "";


                        }



                        catch (SqlException j)
                        {
                            MessageBox.Show(j.ToString());
                        }


                    }
                }



            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conexion = new SqlConnection(@"Data Source=LAPTOP-QM112JVD\MSSQLSERVER01;Initial Catalog=Sistema de ventas;Integrated Security=True");
            conexion.Open();

            string actualizar = "UPDATE Productos SET Codigo_Producto=@Codigo_Producto,Nombre_del_Producto=@Nombre_del_Producto,Cantidad=@Cantidad,Valor_Unitario=@Valor_Unitario, Valor_Total=@Valor_Total, Codigo_de_Barra=@Codigo_de_Barra WHERE Codigo_Producto=@Codigo_Producto";
            SqlCommand cmd2 = new SqlCommand(actualizar, conexion);

            cmd2.Parameters.AddWithValue("@Codigo_Producto", TextBox1.Text);
            cmd2.Parameters.AddWithValue("@Nombre_del_Producto", TextBox2.Text);
            cmd2.Parameters.AddWithValue("@Cantidad", TextBox3.Text);
            cmd2.Parameters.AddWithValue("@Valor_Unitario", TextBox4.Text);
            cmd2.Parameters.AddWithValue("@Valor_Total", TextBox5.Text);
            cmd2.Parameters.AddWithValue("@Codigo_de_Barra", TextBox6.Text);
            ;

            cmd2.ExecuteNonQuery();
            MessageBox.Show("Los datos fueron actualizados con exito");

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Button3.Visible = false;
            Button5.Visible = false;
            Button1.Visible = false;
            Button2.Visible = false;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Button1.Visible = Visible;
            Button2.Visible = Visible;
            Button3.Visible = Visible;
            Button4.Visible = Visible;
            Button5.Visible = Visible;
            Button6.Visible = Visible;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Button3.Visible = false;
            Button6.Visible = false;
            Button5.Visible = false;
            Button2.Visible = false;
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}