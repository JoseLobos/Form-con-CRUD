using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace Pagina_web_sistema_de_ventas
{
    public partial class Registro_de_Compras : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            {
                SqlConnection conexion = new SqlConnection(@"Data Source=LAPTOP-QM112JVD\MSSQLSERVER01;Initial Catalog=Sistema de ventas;Integrated Security=True");
                string Id_Compra;
                Id_Compra = (TextBox1.Text);

                SqlCommand consulta_comprobar = new SqlCommand("  Select count(*) From Compras WHERE  Id_Compra=@Id_Compra  ", conexion);

                conexion.Open();
                consulta_comprobar.Parameters.AddWithValue("@Id_Compra", Id_Compra);
                int i;
                i = Convert.ToInt32(consulta_comprobar.ExecuteScalar());

                if (i > 0)
                {
                    MessageBox.Show("La Compra que quiere registrar, ya se encuentra registrada");
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    TextBox5.Text = "";
                    TextBox6.Text = "";
                    TextBox7.Text = "";
                    TextBox8.Text = "";
                    TextBox9.Text = "";

                }
                else
                {

                    string cadenaconsulta;

                    cadenaconsulta = "Insert into Compras (Id_Compra,Id_Producto,Id_Proveedor,Codigo_de_Barra,Cantidad,Valor_Unitario,Valor_Total,Fecha_de_Entrega,Fecha_de_Pedido)values(@Id_Compra,@Id_Producto,@Id_Proveedor,@Codigo_de_Barra,@Cantidad,@Valor_Unitario,@Valor_Total,@Fecha_de_Entrega,@Fecha_de_Pedido)";

                    SqlCommand consulta_agregar = new SqlCommand(cadenaconsulta, conexion);
                    consulta_agregar.Parameters.AddWithValue("@Id_Compra", TextBox1.Text);
                    consulta_agregar.Parameters.AddWithValue("@Id_Producto", TextBox2.Text);
                    consulta_agregar.Parameters.AddWithValue("@Id_Proveedor", TextBox3.Text);
                    consulta_agregar.Parameters.AddWithValue("@Codigo_de_Barra", TextBox4.Text);
                    consulta_agregar.Parameters.AddWithValue("@Cantidad", TextBox5.Text);
                    consulta_agregar.Parameters.AddWithValue("@Valor_Unitario", TextBox6.Text);
                    consulta_agregar.Parameters.AddWithValue("@Valor_Total", TextBox7.Text);
                    consulta_agregar.Parameters.AddWithValue("@Fecha_de_Entrega", TextBox8.Text);
                    consulta_agregar.Parameters.AddWithValue("@Fecha_de_Pedido", TextBox9.Text);



                    if (i >= 0)
                    {
                        try
                        {



                            consulta_agregar.ExecuteNonQuery();
                            conexion.Close();

                            MessageBox.Show("Se Registro la Compra correctamente");

                            TextBox1.Text = "";
                            TextBox2.Text = "";
                            TextBox3.Text = "";
                            TextBox4.Text = "";
                            TextBox5.Text = "";
                            TextBox6.Text = "";
                            TextBox7.Text = "";
                            TextBox8.Text = "";
                            TextBox9.Text = "";


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

            string actualizar = "UPDATE Compras SET Id_Compra=@Id_Compra,Id_Producto=@Id_Producto,Id_Proveedor=@Id_Proveedor,Codigo_de_Barra=@Codigo_de_Barra,Cantidad=@Cantidad,Valor_Unitario=@Valor_Unitario,Valor_Total=@Valor_Total,Fecha_de_Entrega=@Fecha_de_Entrega,Fecha_de_Pedido=@Fecha_de_Pedido WHERE Id_Compra=@Id_Compra";
            SqlCommand cmd2 = new SqlCommand(actualizar, conexion);

            cmd2.Parameters.AddWithValue("@Id_Compra", TextBox1.Text);
            cmd2.Parameters.AddWithValue("@Id_Producto", TextBox2.Text);
            cmd2.Parameters.AddWithValue("@Id_Proveedor", TextBox3.Text);
            cmd2.Parameters.AddWithValue("@Codigo_de_Barra", TextBox4.Text);
            cmd2.Parameters.AddWithValue("@Cantidad", TextBox5.Text);
            cmd2.Parameters.AddWithValue("@Valor_Unitario", TextBox6.Text);
            cmd2.Parameters.AddWithValue("@Valor_Total", TextBox7.Text);
            cmd2.Parameters.AddWithValue("@Fecha_de_Entrega", TextBox8.Text);
            cmd2.Parameters.AddWithValue("@Fecha_de_Pedido", TextBox9.Text);


            cmd2.ExecuteNonQuery();
            MessageBox.Show("Los datos fueron actualizados con exito");

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlConnection conexion = new SqlConnection(@"Data Source=LAPTOP-QM112JVD\MSSQLSERVER01;Initial Catalog=Sistema de ventas;Integrated Security=True");

            conexion.Open();
            string eliminar;

            eliminar = "DELETE FROM Compras WHERE ID_Compra=@ID_Compra";

            SqlCommand cmd = new SqlCommand(eliminar, conexion);

            cmd.Parameters.AddWithValue("@Id_Compra", TextBox1.Text);
            cmd.ExecuteNonQuery();
            conexion.Close();
            MessageBox.Show(" La Compra fue eliminada");
            TextBox1.Text = "";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Button3.Visible = false;
            Button6.Visible = false;
            Button5.Visible = false;
            Button2.Visible = false;
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
    }
}