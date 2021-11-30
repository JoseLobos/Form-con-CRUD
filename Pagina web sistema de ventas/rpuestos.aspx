<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rpuestos.aspx.cs" Inherits="Pagina_web_sistema_de_ventas.rpuestos" %>
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
    <p class="auto-style1">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Recursos/Captura de pantalla (819).png" />
    </p>
    <p class="text-center">
        REGISTRO DE PUESTO QUE TIENE EL EMPLEADO</p>
    <p class="auto-style1">
        &nbsp;</p>
    <p class="auto-style1">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Id Puesto"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="255px"></asp:TextBox>
    </p>
    <p>
    </p>
    <p class="auto-style1">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Id Empleado"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Width="255px"></asp:TextBox>
    </p>
    <p>
    </p>
    <p class="auto-style1">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Puesto/Departamento"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" style="margin-left: 0" Width="255px">
            <asp:ListItem>Direccion Administrativa</asp:ListItem>
            <asp:ListItem>Departamento Financiero</asp:ListItem>
            <asp:ListItem>Departamento de Venta</asp:ListItem>
            <asp:ListItem>Departamento de Asistencia Tecnica</asp:ListItem>
            <asp:ListItem>Departamento de Bodega</asp:ListItem>
            <asp:ListItem>Departamento de Ensamblaje</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
    </p>
    <p class="auto-style1">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" BackColor="#66FFFF" OnClick="Button1_Click" Text="Actualizar" Width="81px" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" BackColor="#66FFFF" OnClick="Button2_Click" Text="Modificar" Width="81px" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" BackColor="#66FFFF" OnClick="Button3_Click" Text="Nuevo" Width="81px" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" BackColor="#66FFFF" OnClick="Button4_Click" Text="Cancelar" Width="81px" />
&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" BackColor="#66FFFF" OnClick="Button5_Click" Text="Eliminar" Width="81px" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button6" runat="server" BackColor="#66FFFF" OnClick="Button6_Click" Text="Guardar" Width="81px" />
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
