<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Empleados.aspx.cs" Inherits="Pagina_web_sistema_de_ventas.Empleados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    <br />
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p class="text-center">
    &nbsp;</p>
<p class="text-center">
    LISTADO DE EMPLEADOS</p>
    <p class="text-center">
        &nbsp;</p>
    <p class="text-center">
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Nombres" DataValueField="Id_Empleado">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Sistema de ventasConnectionString %>" SelectCommand="SELECT * FROM [Empleados]"></asp:SqlDataSource>
    </p>
<p class="text-center">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_Empleado" DataSourceID="SqlDataSource2" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="Id_Empleado" HeaderText="Id_Empleado" ReadOnly="True" SortExpression="Id_Empleado" />
            <asp:BoundField DataField="Nombres" HeaderText="Nombres" SortExpression="Nombres" />
            <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos" />
            <asp:BoundField DataField="Fecha_de_Nacimiento" HeaderText="Fecha_de_Nacimiento" SortExpression="Fecha_de_Nacimiento" />
            <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
            <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
            <asp:BoundField DataField="Genero" HeaderText="Genero" SortExpression="Genero" />
            <asp:BoundField DataField="Departamento" HeaderText="Departamento" SortExpression="Departamento" />
            <asp:BoundField DataField="Nivel_laboral" HeaderText="Nivel_laboral" SortExpression="Nivel_laboral" />
            <asp:BoundField DataField="Sueldo" HeaderText="Sueldo" SortExpression="Sueldo" />
            <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" SortExpression="Observaciones" />
            <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
            <asp:BoundField DataField="Numero_de_Dui" HeaderText="Numero_de_Dui" SortExpression="Numero_de_Dui" />
            <asp:BoundField DataField="Numero_de_Nit" HeaderText="Numero_de_Nit" SortExpression="Numero_de_Nit" />
            <asp:BoundField DataField="Numero_de_AFP" HeaderText="Numero_de_AFP" SortExpression="Numero_de_AFP" />
            <asp:BoundField DataField="Fecha_de_Ingreso" HeaderText="Fecha_de_Ingreso" SortExpression="Fecha_de_Ingreso" />
            <asp:BoundField DataField="Jefatura" HeaderText="Jefatura" SortExpression="Jefatura" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Sistema de ventasConnectionString %>" SelectCommand="SELECT * FROM [Empleados] WHERE ([Id_Empleado] = @Id_Empleado)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Id_Empleado" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
    <p class="text-center">
        &nbsp;</p>
    <p class="text-center">
        &nbsp;</p>
<p class="text-center">
    &nbsp;</p>
<p class="text-center">
    LISTADO DE EMPLEADOS</p>
    <p class="text-center">
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Puesto" DataValueField="Id_de_Empleado">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Sistema de ventasConnectionString %>" SelectCommand="SELECT * FROM [Puestos]"></asp:SqlDataSource>
    </p>
    <p class="text-center">
        &nbsp;</p>
    <p class="text-center">
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" AllowPaging="True" AllowSorting="True">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Id_de_Puesto" HeaderText="Id_de_Puesto" SortExpression="Id_de_Puesto" />
                <asp:BoundField DataField="Id_de_Empleado" HeaderText="Id_de_Empleado" SortExpression="Id_de_Empleado" />
                <asp:BoundField DataField="Puesto" HeaderText="Puesto" SortExpression="Puesto" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Sistema de ventasConnectionString %>" SelectCommand="SELECT * FROM [Puestos] WHERE ([Id_de_Empleado] = @Id_de_Empleado)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="Id_de_Empleado" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
</p>
    <p class="text-center">
        &nbsp;</p>
    <p class="text-center">
        &nbsp;</p>
    <p class="text-center">
        &nbsp;</p>
</asp:Content>
