using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InnovationThesis
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(HttpContext.Current.Session["ssUsername"] != null)
            {
                phNotLogin.Visible = false;
                phLoggedin.Visible = true;
                if(HttpContext.Current.Session["ssUserType"].ToString() == "1")
                {
                    phLoggedinAdmin.Visible = true;
                    phLoggedinUser.Visible = false;
                } else
                {
                    phLoggedinAdmin.Visible = false;
                    phLoggedinUser.Visible = true;
                }
            }
            else
            {
                phNotLogin.Visible = true;
                phLoggedin.Visible = false;
                phLoggedinAdmin.Visible = false;
                phLoggedinUser.Visible = false;
            }
        }
    }
}