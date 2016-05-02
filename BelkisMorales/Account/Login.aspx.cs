using System;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using ActiveDirectory.Models;
using System.Web.Security;
using System.Web.UI.WebControls;
using System.DirectoryServices;


namespace ActiveDirectory.Account
{
    public partial class Login : Page
    {
        public SearchResult resultado;

        public SearchResult getUsuario()
        {
            return this.resultado;
        }

        /*protected void Page_Load(object sender, EventArgs e)
        {
            RegisterHyperLink.NavigateUrl = "Register";
            // Habilite esta opción una vez tenga la confirmación de la cuenta habilitada para la funcionalidad de restablecimiento de contraseña
            //ForgotPasswordHyperLink.NavigateUrl = "Forgot";
            OpenAuthLogin.ReturnUrl = Request.QueryString["ReturnUrl"];
            var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
            if (!String.IsNullOrEmpty(returnUrl))
            {
                RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
            }
        }*/

        protected void LogIn(object sender, EventArgs e)
        {
            if (IsValid)
            {
                // Validar la contraseña del usuario
                var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                var signinManager = Context.GetOwinContext().GetUserManager<ApplicationSignInManager>();

                // Esto no cuenta los errores de inicio de sesión hacia el bloqueo de cuenta
                // Para habilitar los errores de contraseña para desencadenar el bloqueo, cambie a shouldLockout: true
                var result = signinManager.PasswordSignIn(Domain.Text + Username.Text, Password.Text, RememberMe.Checked, shouldLockout: false);

                switch (result)
                {
                    case SignInStatus.Success:
                        IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
                        break;
                    case SignInStatus.LockedOut:
                        Response.Redirect("/Account/Lockout");
                        break;
                    case SignInStatus.RequiresVerification:
                        Response.Redirect(String.Format("/Account/TwoFactorAuthenticationSignIn?ReturnUrl={0}&RememberMe={1}", 
                                                        Request.QueryString["ReturnUrl"],
                                                        RememberMe.Checked),
                                          true);
                        break;
                    case SignInStatus.Failure:
                    default:
                        FailureText.Text = "Intento de inicio de sesión no válido";
                        ErrorMessage.Visible = true;
                        break;
                }
            }
        }



        protected void ingresar(object sender, EventArgs e)
        {
            DirectoryEntry acceso = new DirectoryEntry("LDAP://" + Domain.Text.Trim(),
                                                                    Username.Text.Trim(),
                                                                    Password.Text.Trim(),
                                                                    AuthenticationTypes.Secure); //AuthenticationTypes.Secure como 4to parámetro

            try
            {
                DirectorySearcher existe = new DirectorySearcher(acceso);
                this.resultado = existe.FindOne(); //Devuelve el primero que encuentra

                if (resultado != null)
                {
                    //errorLabel.Text = "Usted ha sido autenticado";
                    Server.Transfer("Register.aspx", true);
                    //Response.Redirect("Manage.aspx");
                }


            }
            catch
            {
                errorLabel.Text = "Error: Disculpe, usted no ha sido autenticado. \n Por favor, verifique sus datos.";
            }
                       
        }

        //fin de btnEntrarClick






        void Login_Click(object sender, EventArgs e)
        {
            string adPath = "LDAP://" + Domain.Text;
            //Label errorLabel = this.FindControl("errorLabel") as Label; //Esto lo agregó Axel

            LdapAuthentication adAuth = new LdapAuthentication(adPath);
            try
            {
                if (true == adAuth.IsAuthenticated(
                                                    Domain.Text, //Dominio 
                                                    Username.Text, //Nombre de usuario 
                                                    Password.Text) //Contraseña
                    )
                {
                    string groups = adAuth.GetGroups();


                    //Create the ticket, and add the groups.
                    bool isCookiePersistent = RememberMe.Checked;
                    FormsAuthenticationTicket authTicket = new FormsAuthenticationTicket(1,
                              Username.Text, DateTime.Now, DateTime.Now.AddMinutes(60), isCookiePersistent, groups);

                    //Encrypt the ticket.
                    string encryptedTicket = FormsAuthentication.Encrypt(authTicket);

                    //Create a cookie, and then add the encrypted ticket to the cookie as data.
                    HttpCookie authCookie = new HttpCookie(FormsAuthentication.FormsCookieName, encryptedTicket);

                    if (true == isCookiePersistent)
                        authCookie.Expires = authTicket.Expiration;

                    //Add the cookie to the outgoing cookies collection.
                    Response.Cookies.Add(authCookie);

                    //You can redirect now.
                    Response.Redirect(FormsAuthentication.GetRedirectUrl(Username.Text, false));
                }
                else
                {
                    errorLabel.Text = "No se pudo autenticar el usuario, revise el usuario o contraseña";
                }
            }
            catch (Exception ex)
            {
                errorLabel.Text = "Error de autenticación. " + ex.Message;
            }
        }

        //FIN DE Login_Click

       

    }
}