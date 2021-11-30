<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="compra,ventas.aspx.cs" Inherits="Pagina_web_sistema_de_ventas.compra_ventas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    <br />
</p>
<p>
    &nbsp;</p>
<p>
</p>
<p>
    &nbsp;</p>
<p style="text-align: center">
    <asp:Label ID="Label1" runat="server" Text="LISTADO DE VENTAS"></asp:Label>
</p>
<p>
    &nbsp;</p>
<p>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Fecha_de_Venta" DataValueField="Id_Venta">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Sistema de ventasConnectionString %>" SelectCommand="SELECT * FROM [Ventas1]"></asp:SqlDataSource>
</p>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="Id_Cliente" HeaderText="Id_Cliente" SortExpression="Id_Cliente" />
        <asp:BoundField DataField="Id_Usuario" HeaderText="Id_Usuario" SortExpression="Id_Usuario" />
        <asp:BoundField DataField="Id_Venta" HeaderText="Id_Venta" SortExpression="Id_Venta" />
        <asp:BoundField DataField="Id_Producto" HeaderText="Id_Producto" SortExpression="Id_Producto" />
        <asp:BoundField DataField="Fecha_de_Venta" HeaderText="Fecha_de_Venta" SortExpression="Fecha_de_Venta" />
        <asp:BoundField DataField="Hora_Venta" HeaderText="Hora_Venta" SortExpression="Hora_Venta" />
        <asp:BoundField DataField="Total_Venta" HeaderText="Total_Venta" SortExpression="Total_Venta" />
        <asp:BoundField DataField="Efectivo" HeaderText="Efectivo" SortExpression="Efectivo" />
        <asp:BoundField DataField="Vuelto" HeaderText="Vuelto" SortExpression="Vuelto" />
        <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Sistema de ventasConnectionString %>" SelectCommand="SELECT * FROM [Ventas1] WHERE ([Id_Venta] = @Id_Venta)">
    <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList1" Name="Id_Venta" PropertyName="SelectedValue" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
<p>
</p>
<p>
</p>
<p>
</p>
<p style="text-align: center">
    <asp:Label ID="Label2" runat="server" Text="LISTADO DE COMPRAS"></asp:Label>
</p>
<p>
    &nbsp;</p>
<p>
    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Fecha_de_Entrega" DataValueField="Id_Compra">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Sistema de ventasConnectionString %>" SelectCommand="SELECT * FROM [Compras]"></asp:SqlDataSource>
</p>
<asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id_Producto" DataSourceID="SqlDataSource4">
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="Id_Compra" HeaderText="Id_Compra" SortExpression="Id_Compra" />
        <asp:BoundField DataField="Id_Producto" HeaderText="Id_Producto" ReadOnly="True" SortExpression="Id_Producto" />
        <asp:BoundField DataField="Id_Proveedor" HeaderText="Id_Proveedor" SortExpression="Id_Proveedor" />
        <asp:BoundField DataField="Codigo_de_Barra" HeaderText="Codigo_de_Barra" SortExpression="Codigo_de_Barra" />
        <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
        <asp:BoundField DataField="Valor_Unitario" HeaderText="Valor_Unitario" SortExpression="Valor_Unitario" />
        <asp:BoundField DataField="Valor_Total" HeaderText="Valor_Total" SortExpression="Valor_Total" />
        <asp:BoundField DataField="Fecha_de_Entrega" HeaderText="Fecha_de_Entrega" SortExpression="Fecha_de_Entrega" />
        <asp:BoundField DataField="Fecha_de_Pedido" HeaderText="Fecha_de_Pedido" SortExpression="Fecha_de_Pedido" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Sistema de ventasConnectionString %>" SelectCommand="SELECT * FROM [Compras] WHERE ([Id_Compra] = @Id_Compra)">
    <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList2" Name="Id_Compra" PropertyName="SelectedValue" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
<p>
</p>
<p>
</p>
</asp:Content>
