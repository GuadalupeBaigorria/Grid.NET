using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Grillajueves.Restricted
{
    public partial class ListaStatic : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarGrilla();
            }


 
        }

        public void CargarGrilla()
        {
            //Entidades.Personas persona1 = new Entidades.Personas("Adriana", "Gomez",45);
            //Entidades.Listas.ListPersonas.Add(persona1);
            gvPersona.DataSource = Entidades.Listas.ListPersonas;
            gvPersona.DataBind();
        }

        protected void gvPersona_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //String valorDeFila = gvBanks.DataKeys[e.RowIndex]["Precio"].ToString();
            String valorDeFila = e.NewValues["Nombre"].ToString();
            Entidades.Personas persona = Entidades.Listas.ListPersonas.FirstOrDefault(p => p.Nombre == valorDeFila);

            if (persona != null)
            {
                if ((e.NewValues["Apellido"] != null && e.NewValues["Edad"] != null))
                {

                    Entidades.Listas.ListPersonas.FirstOrDefault(p => p.Nombre == valorDeFila).Apellido = e.NewValues["Apellido"].ToString().Trim();
                    Entidades.Listas.ListPersonas.FirstOrDefault(p => p.Nombre == valorDeFila).Edad = Convert.ToInt32(e.NewValues["Edad"]);



                    gvPersona.EditIndex = -1;
                    CargarGrilla();

                }
            }

            
          


        }

        protected void gvPersona_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void lnkbtttAcceptNew_Click(object sender, EventArgs e)
        {
            Entidades.Personas mipersona = new Entidades.Personas();
            mipersona.Nombre = txtNombre.Text;
            mipersona.Apellido = txtApellido.Text;
            mipersona.Edad = Convert.ToInt32(txtEdad.Text);

            Entidades.Listas.ListPersonas.Add(mipersona);
            CargarGrilla();
            phNew.Visible = false;
            LimpiarCamposNew();
        }

        public void LimpiarCamposNew()
        {
            txtNombre.Text = "";
            txtApellido.Text = "";
            txtEdad.Text = "";
        }
        protected void lnkbttCancel_Click(object sender, EventArgs e)
        {
            phNew.Visible = false;
        }

        protected void btnNew_Click(object sender, EventArgs e)
        {
            phNew.Visible = true;
        }

        protected void lnkbttCloseModalNew_Click(object sender, EventArgs e)
        {
            phNew.Visible = false;
        }
    }
}