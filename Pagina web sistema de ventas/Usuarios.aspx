<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="Pagina_web_sistema_de_ventas.Usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    <br />
</p>
<p>
</p>
<p class="text-center">
    &nbsp;</p>
    <p class="text-center">
        &nbsp;</p>
    <p class="text-center">
        &nbsp;</p>
    <p class="text-center">
    <asp:Label ID="Label1" runat="server" Text="LISTADO DE USUARIOS"></asp:Label>
</p>
<p>
</p>
<p>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Usuario" DataValueField="Id_usuario">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LoginConnectionString %>" SelectCommand="SELECT * FROM [Usuarios]"></asp:SqlDataSource>
</p>
<p>
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="Id_usuario" HeaderText="Id_usuario" SortExpression="Id_usuario" />
            <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
            <asp:BoundField DataField="Clave" HeaderText="Clave" SortExpression="Clave" />
            <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
            <asp:BoundField DataField="Nivel" HeaderText="Nivel" SortExpression="Nivel" />
            <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LoginConnectionString %>" SelectCommand="SELECT * FROM [Usuarios] WHERE ([Id_usuario] = @Id_usuario)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Id_usuario" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>
