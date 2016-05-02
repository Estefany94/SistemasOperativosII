using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using ActiveDirectory.Models;
using System.DirectoryServices;




namespace ActiveDirectory.Account
{
    public partial class Register : Page
    {
        /*
        DirectoryEntry nodo = new DirectoryEntry(); //Encapsula un nodo
        DirectoryEntryConfiguration confNodo = new DirectoryEntryConfiguration(); //Configuraciones de un nodo
        DirectorySearcher buscador = new DirectorySearcher(); //Realiza consultas
        PropertyCollection propiedades = new PropertyCollectio(); //Propiedades de un objeto DirectoryEntry

        ResultPropertyCollection propiedades = new ResultPropertyCollection(); //Propiedades del resultado
        ResultPropertyValueCollection valoresPropiedades = new ResultPropertyValueCollection(); //Valores de las propiedades del resultado
        */

        Login login = new Login();

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            /*
            ResultPropertyCollection propiedades = new ResultPropertyCollection(login.getUsuario());
            User user = new User();
            */
             
        }














        /*
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser() { UserName = Email.Text, Email = Email.Text };
            IdentityResult result = manager.Create(user, Password.Text);
            if (result.Succeeded)
            {
                // Para obtener más información sobre cómo habilitar la confirmación de cuentas y el restablecimiento de contraseña, visite http://go.microsoft.com/fwlink/?LinkID=320771
                //string code = manager.GenerateEmailConfirmationToken(user.Id);
                //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
                //manager.SendEmail(user.Id, "Confirmar cuenta", "Para confirmar la cuenta, haga clic <a href=\"" + callbackUrl + "\">aquí</a>.");

                signInManager.SignIn( user, isPersistent: false, rememberBrowser: false);
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            }
            else 
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }
            */
    }
    }
}