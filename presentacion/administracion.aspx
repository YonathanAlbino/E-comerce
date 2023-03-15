<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="administracion.aspx.cs" Inherits="presentacion.administracion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Administración</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <link href="estilos-administracion.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="head">
            <div class="foto-head">
                <a href="default.aspx">
                    <img src="imagenes/Chanchito.jpg" style="width: 60px; border-radius: 50%;" /></a>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="contenedor-general">
                        <div class="grilla">
                            <asp:GridView ID="dgvAticulos" DataKeyNames="Id" OnSelectedIndexChanged="dgvAticulos_SelectedIndexChanged" CssClass="table table-striped" runat="server" AutoGenerateColumns="false" 
                                 AllowPaging="true" PageSize="2" OnPageIndexChanging="dgvAticulos_PageIndexChanging" >
                                <Columns>
                                    <%--<asp:BoundField HeaderText="id" DataField="Id" />--%>
                                    <asp:BoundField HeaderText="Código" DataField="Codigo" />
                                    <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                                    <asp:BoundField HeaderText="Descripción" DataField="Descripcion" />
                                    <asp:BoundField HeaderText="Precio" DataField="Precio" />
                                    <asp:BoundField HeaderText="Marca" DataField="MarcaArticulo.Descripcion" />
                                    <asp:BoundField HeaderText="Categoría" DataField="CategoriaArticulo.Descripcion" />
                                    <asp:CommandField ShowSelectButton="true" SelectText="Seleccionar" HeaderText="Acción" />
                                </Columns>
                            </asp:GridView>
                        </div>
                        <div class="botones">
                            <asp:Button Text="Agregar" runat="server" CssClass="btn btn-primary" ID="btnAgregar" OnClick="btnAgregar_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>
