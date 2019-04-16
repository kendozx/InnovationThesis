using InnovationThesis.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InnovationThesis.Evaluation
{
    public partial class ManageEval : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<EvalResults> evalResults = DBControl.getEvalAll();

            lbRow.Text = evalResults.Count.ToString();
        }

        protected void xptXls_Click(object sender, EventArgs e)
        {
            List<EvalResults> evalResults = DBControl.getEvalAll();

            if (evalResults.Count <= 0)
            {
                return;
            }

            EvalResults[] evalArray = evalResults.ToArray();
            string sFIlename = "EvalResult01_" + DateTime.Now.ToString("yyyyMMdd_hhmmss");

            Response.ClearContent();
            Response.AddHeader("content-disposition", "attachment;filename=" + sFIlename + ".csv");
            Response.AddHeader("Content-Type", "application/vnd.ms-excel");
            DBControl.WriteTsv(evalArray, Response.Output);
            Response.End();
        }
    }
}