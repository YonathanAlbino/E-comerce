<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="favoritos.aspx.cs" Inherits="presentacion.favoritos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Estilos-favoritos.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contenedor-general">
        <div class="head">
            <asp:CheckBox Text="" CssClass="mb-3" runat="server" />
            <p>Eliminar favoritos seleccionados</p>
        </div>
        <div class="contenido">
            <div class="imagen">
                <asp:CheckBox Text="" CssClass="check" runat="server" />
                <img src="imagenes/Chanchito.jpg" class="img-fluid" alt="Alternate Text" />
            </div>
            <div class="especificaciones">
                <h1 class="titulo-producto">Placa de video Nvidia Asus Phoenix GeForce 10 Series GTX 1050 Ti PH-GTX1050TI-4G 4GB</h1>
                <span class="precio">$1000.00</span>
                <p>Envio gratis</p>
                <a href="#">Eliminar</a>
            </div>
        </div>
    </div>
       <footer>
        <div class="contenedor-footer">
            <div class="caja">
                <p class="titulo">Acerca de</p>
                <p>
                    Somos una empresa familiar que busca brindar servicio a la comunidad.
                </p>
            </div>
            <div class="caja">
                <p class="titulo">Ayuda</p>
                <p><a href="#">Comrar</a></p>
                <p><a href="#">Vender</a></p>
            </div>
            <div class="caja">
                <p class="titulo">Redes sociales</p>
                <p><a href="#">Github</a></p>
                <p><a href="#">Facebook</a></p>
                <p><a href="#">Instagram</a></p>
            </div>
        </div>
    </footer>
</asp:Content>
