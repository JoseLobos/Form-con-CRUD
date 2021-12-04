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
    public partial class r_ventas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            {
                SqlConnection conexion = new SqlConnection(@"Data Source=LAPTOP-QM112JVD\MSSQLSERVER01;Initial Catalog=Sistema de ventas;Integrated Security=True");
                string Id_Venta;
                Id_Venta = (TextBox3.Text);

                SqlCommand consulta_comprobar = new SqlCommand("  Select count(*) From Ventas1 WHERE  Id_Venta=@Id_Venta  ", conexion);

                conexion.Open();
                consulta_comprobar.Parameters.AddWithValue("@Id_Venta", Id_Venta);
                int i;
                i = Convert.ToInt32(consulta_comprobar.ExecuteScalar());

                if (i > 0)
                {
                    MessageBox.Show("La venta que quiere registrar, ya se encuentra registrada");
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    TextBox5.Text = "";
                    TextBox6.Text = "";
                    TextBox7.Text = "";
                    TextBox8.Text = "";
                    TextBox9.Text = "";
                    TextBox10.Text = "";

                }
                else
                {

                    string cadenaconsulta;

                    cadenaconsulta = "Insert into Ventas1 (Id_Cliente,Id_Usuario,Id_Venta,Id_Producto,Fecha_de_Venta,Hora_Venta,Total_Venta,Efectivo,Vuelto,Cantidad)values(@Id_Cliente,@Id_Usuario,@Id_Venta,@Id_Producto,@Fecha_de_Venta,@Hora_Venta,@Total_Venta,@Efectivo,@Vuelto,@Cantidad)";

                    SqlCommand consulta_agregar = new SqlCommand(cadenaconsulta, conexion);
                    consulta_agregar.Parameters.AddWithValue("@Id_Cliente", TextBox1.Text);
                    consulta_agregar.Parameters.AddWithValue("@Id_Usuario", TextBox2.Text);
                    consulta_agregar.Parameters.AddWithValue("@Id_Venta", TextBox3.Text);
                    consulta_agregar.Parameters.AddWithValue("Id_Producto", TextBox4.Text);
                    consulta_agregar.Parameters.AddWithValue("@Fecha_de_Venta", TextBox5.Text);
                    consulta_agregar.Parameters.AddWithValue("@Hora_Venta", TextBox6.Text);
                    consulta_agregar.Parameters.AddWithValue("@Total_Venta", TextBox7.Text);
                    consulta_agregar.Parameters.AddWithValue("@Efectivo", TextBox8.Text);
                    consulta_agregar.Parameters.AddWithValue("@Vuelto", TextBox9.Text);
                    consulta_agregar.Parameters.AddWithValue("@Cantidad", TextBox10.Text);







                    if (i >= 0)
                    {
                        try
                        {



                            consulta_agregar.ExecuteNonQuery();
                            conexion.Close();

                            MessageBox.Show("Se Registro la venta correctamente");

                            TextBox1.Text = "";
                            TextBox2.Text = "";
                            TextBox3.Text = "";
                            TextBox4.Text = "";
                            TextBox5.Text = "";
                            TextBox6.Text = "";
                            TextBox7.Text = "";
                            TextBox8.Text = "";
                            TextBox9.Text = "";
                            TextBox10.Text = "";



                        }



                        catch (SqlException j)
                        {
                            MessageBox.Show(j.ToString());
                        }


                    }
                }



            }
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conexion = new SqlConnection(@"Data Source=LAPTOP-QM112JVD\MSSQLSERVER01;Initial Catalog=Sistema de ventas;Integrated Security=True");
            conexion.Open();

            string actualizar = "UPDATE Ventas1 SET Id_Cliente=@Id_Cliente,Id_Usuario=@Id_Usuario,Id_Producto=@Id_Producto, Fecha_de_Venta=@Fecha_de_Venta, Hora_Venta=@Hora_Venta, Total_Venta=@Total_Venta, Efectivo=@Efectivo,Vuelto=@Vuelto,Cantidad=@Cantidad,Id_Venta=@Id_Venta WHERE Id_Venta=@Id_Venta";
            SqlCommand cmd2 = new SqlCommand(actualizar, conexion);

            cmd2.Parameters.AddWithValue("@Id_Cliente", TextBox1.Text);
            cmd2.Parameters.AddWithValue("@Id_Usuario", TextBox2.Text);
            cmd2.Parameters.AddWithValue("@Id_Venta", TextBox3.Text);
            cmd2.Parameters.AddWithValue("Id_Producto", TextBox4.Text);
            cmd2.Parameters.AddWithValue("@Fecha_de_Venta", TextBox5.Text);
            cmd2.Parameters.AddWithValue("@Hora_Venta", TextBox6.Text);
            cmd2.Parameters.AddWithValue("@Total_Venta", TextBox7.Text);
            cmd2.Parameters.AddWithValue("@Efectivo", TextBox8.Text);
            cmd2.Parameters.AddWithValue("@Vuelto", TextBox9.Text);
            cmd2.Parameters.AddWithValue("@Cantidad", TextBox10.Text);


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
            TextBox10.Text = "";

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

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlConnection conexion = new SqlConnection(@"Data Source=LAPTOP-QM112JVD\MSSQLSERVER01;Initial Catalog=Sistema de ventas;Integrated Security=True");

            conexion.Open();
            string eliminar;

            eliminar = "DELETE FROM Ventas1 WHERE ID_Venta=@ID_Venta";

            SqlCommand cmd = new SqlCommand(eliminar, conexion);

            cmd.Parameters.AddWithValue("@Id_Venta", TextBox3.Text);
            cmd.ExecuteNonQuery();
            conexion.Close();
            MessageBox.Show(" La venta fue eliminada");
            TextBox3.Text = "";
        }
    }
}