<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Pagina_web_sistema_de_ventas._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>&nbsp;</h1>
        <p class="lead" style="text-align: center">
            <asp:Label ID="Label1" runat="server" Text="BIENVENIDO AL SISTEMA"></asp:Label>
        </p>
        <p class="lead">
            <asp:Image ID="Image1" runat="server" Height="485px" ImageUrl="~/Recursos/Captura de pantalla (894).png" style="margin-top: 13px" Width="990px" />
        </p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>&nbsp;</h2>
        </div>
        <div class="col-md-4">
            <p>
                &nbsp;</p>
        </div>
        <div class="col-md-4">
            <h2>&nbsp;</h2>
        </div>
    </div>

</asp:Content>
