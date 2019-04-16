using InnovationThesis.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

namespace InnovationThesis.Evaluation
{
    public partial class EvalResultList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["ssUsername"] == null)
            {
                Response.Redirect("../Account/Login");
            }

            EvalResults evalRes = DBControl.getEval(HttpContext.Current.Session["ssUsername"].ToString());
            if(evalRes.username == HttpContext.Current.Session["ssUsername"].ToString())
            {
                lbScore.Text = evalRes.totalScore.ToString("0");
                CultureInfo _cultureTHInfo = new CultureInfo("th-TH");
                lbDate.Text = evalRes.evalDate.ToString("dd MMMM yyyy", _cultureTHInfo);
            }
            else
            {

            }
        }
    }
}