﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InnovationThesis.Evaluation
{
    public partial class EvaluationList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["ssUsername"] != null)
            {

            }
            else
            {
                Response.Redirect("../Account/Login");
            }
        }
    }
}