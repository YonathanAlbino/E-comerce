using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Helper;
using System.Threading;

namespace presentacion
{
    public partial class administracion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
			ArticuloNegocio negocio = new ArticuloNegocio();

			try
			{
				Session.Add("listaArticulos", negocio.listar());
				dgvAticulos.DataSource = Session["listaArticulos"];
				dgvAticulos.DataBind();
			}
			catch (Exception ex)
			{
				Session.Add("error", ex.ToString());
				Response.Redirect("error.aspx");
			}
        }

        protected void dgvAticulos_SelectedIndexChanged(object sender, EventArgs e)
        {
			try
			{
				var id = dgvAticulos.SelectedDataKey.Value;
				Response.Redirect("formulario.aspx?id=" + id);
			}
			catch (ThreadAbortException) { }
			catch (Exception ex)
			{

				Session.Add("error", HelpClass.mensajeError(ex));
				Response.Redirect("error.aspx");
			}
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
			Response.Redirect("formulario.aspx");
        }

        protected void dgvAticulos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
			try
			{
				dgvAticulos.PageIndex = e.NewPageIndex;
				dgvAticulos.DataBind();
			}
			catch (ThreadAbortException) { }
			catch (Exception ex)
			{

				Session.Add("error", HelpClass.mensajeError(ex));
			}
        }
    }
}