using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Grillajueves.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkbttCloseAlert_Click(object sender, EventArgs e)
        {

        }

        protected void lnkbttLogIn_Click(object sender, EventArgs e)
        {
            string usuario = txtUserName.Text;
            string contrasenia = txtPassword.Text;

            // Con un switch evaluar que el usuario pueddda ingresar con el usuario happyprogrammer contraseña happyprogrammer2021
            //guadalupe contraseña guadalupe1234 y eel usuario con su nombre y contraseña

            switch (usuario)
            {
                case "happyprogrammer":
                    //permitimos acceder
                    if(contrasenia == "happyprogrammer2021")
                    {
                        Response.Redirect("~/Restricted/Grilla.aspx");
                    }
                    break;
                case "guadalupe":
                    //permitimos acceder
                    break;
                case "zoe":
                    //permitimos acceder
                    break;
            }

        }
    }
}