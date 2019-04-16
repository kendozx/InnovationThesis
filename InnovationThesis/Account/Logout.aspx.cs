using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InnovationThesis.Account
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["ssUsername"] != null)
            {
                HttpContext.Current.Session.Abandon();
                Response.Redirect("~/Account/Logout");
            }
            
        }

        protected void homeClick(object sender, EventArgs e)
        {
            Response.Redirect("~/");

        }
    }
}