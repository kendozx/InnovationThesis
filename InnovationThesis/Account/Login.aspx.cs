using InnovationThesis.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InnovationThesis.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginClick(object sender, EventArgs e)
        {
            MessageResult messageResult = DBControl.Login(Username.Text, Password.Text);

            switch (messageResult.ErrorCode)
            {
                case ErrorCode.E:
                    ErrorMessage.Visible = true;
                    FailureText.Text = messageResult.Message;
                    break;
                case ErrorCode.S:
                    ErrorMessage.Visible = false;
                    FailureText.Text = messageResult.Message;
                    HttpContext.Current.Session["ssUsername"] = Username.Text;
                    HttpContext.Current.Session["ssNmae"] = messageResult.Message;
                    Response.Redirect("~/");
                    break;
            }

            
        }
    }
}