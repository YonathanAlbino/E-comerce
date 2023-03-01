using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Articulo
    {
        public Articulo(string MarcaArticulo, string CategoriaArticulo)
        {
            this.MarcaArticulo = new Marca();
            this.MarcaArticulo.Descripcion = MarcaArticulo;

            this.CategoriaArticulo = new Categoria();
            this.CategoriaArticulo.Descripcion = CategoriaArticulo;
        }
        public Articulo()
        {

        }
        public Articulo(Marca Marca, Categoria Categoria)
        {
            MarcaArticulo = Marca;
            CategoriaArticulo = Categoria;
        }


        public int Id { get; set; }
        [DisplayName("Código")]
        public string Codigo { get; set; }
        public string Nombre { get; set; }
        [DisplayName("Descripción")]
        public string Descripcion { get; set; }

        [DisplayName("Marca artículo")]
        public Marca MarcaArticulo { get; set; }

        [DisplayName("Categoría artículo")]
        public Categoria CategoriaArticulo { get; set; }
        
        public string ImagenUrl { get; set; }
        public decimal Precio { get; set; }

        public PropertyInfo[] GetProperties()
        {
            throw new NotImplementedException();
        }
    }
}
