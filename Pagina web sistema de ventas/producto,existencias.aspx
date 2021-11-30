<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="producto,existencias.aspx.cs" Inherits="Pagina_web_sistema_de_ventas.producto_existencias" %>
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
<p>
</p>
<p>
</p>
<p class="text-center">
    &nbsp;</p>
    <p class="text-center">
        &nbsp;</p>
    <p class="text-center">
    <asp:Label ID="Label1" runat="server" Text="LISTADO DE PRODUCTOS"></asp:Label>
</p>
<p class="text-center">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Nombre_del_Producto" DataValueField="Codigo_Producto">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Sistema de ventasConnectionString %>" SelectCommand="SELECT * FROM [Productos]"></asp:SqlDataSource>
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Codigo_Producto" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="Codigo_Producto" HeaderText="Codigo_Producto" ReadOnly="True" SortExpression="Codigo_Producto" />
            <asp:BoundField DataField="Nombre_del_Producto" HeaderText="Nombre_del_Producto" SortExpression="Nombre_del_Producto" />
            <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
            <asp:BoundField DataField="Valor_Unitario" HeaderText="Valor_Unitario" SortExpression="Valor_Unitario" />
            <asp:BoundField DataField="Valor_Total" HeaderText="Valor_Total" SortExpression="Valor_Total" />
            <asp:BoundField DataField="Codigo_de_Barra" HeaderText="Codigo_de_Barra" SortExpression="Codigo_de_Barra" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Sistema de ventasConnectionString %>" SelectCommand="SELECT * FROM [Productos] WHERE ([Codigo_Producto] = @Codigo_Producto)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Codigo_Producto" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
<p>
</p>
<p>
</p>
<p class="text-center">
    <asp:Label ID="Label2" runat="server" Text="LISTADO DE EXISTENCIAS"></asp:Label>
</p>
<p class="text-center">
    &nbsp;</p>
<p class="text-center">
    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Nombre_del_Producto" DataValueField="Id_Producto">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Sistema de ventasConnectionString %>" SelectCommand="SELECT * FROM [Existencias1]"></asp:SqlDataSource>
</p>
<p>
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Cantidad" DataSourceID="SqlDataSource4">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="Id_Producto" HeaderText="Id_Producto" SortExpression="Id_Producto" />
            <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" ReadOnly="True" SortExpression="Cantidad" />
            <asp:BoundField DataField="Codigo_de_Barra" HeaderText="Codigo_de_Barra" SortExpression="Codigo_de_Barra" />
            <asp:BoundField DataField="Nombre_del_Producto" HeaderText="Nombre_del_Producto" SortExpression="Nombre_del_Producto" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Sistema de ventasConnectionString %>" SelectCommand="SELECT * FROM [Existencias1] WHERE ([Id_Producto] = @Id_Producto)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList2" Name="Id_Producto" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
<p>
</p>
<p>
</p>
</asp:Content>
