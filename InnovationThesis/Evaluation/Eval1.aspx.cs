using InnovationThesis.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InnovationThesis.Evaluation
{
    public partial class Eval1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["ssUsername"] != null)
            {

            }
            else
            {
                //Response.Redirect("~/");
            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            //string details = ans2.Value;
            //Response.Redirect("../Evaluation/ResultEval1");
            EvalResults evalResults = new EvalResults();
            evalResults.username = HttpContext.Current.Session["ssUsername"].ToString();
            evalResults.evalDate = DateTime.Now;
            evalResults.ans_1b = ANS_1B_00.Value.ToString();
            evalResults.ans_1b_oth = TXT_1B_05.Text;


            evalResults.ans_04u1_01 = TXT_4_01_01.Value.ToString();
            evalResults.ans_04u1_02 = TXT_4_01_02.Value.ToString();
            evalResults.ans_04u1_03 = TXT_4_01_03.Value.ToString();
            evalResults.ans_04u1_04 = TXT_4_1_04.Value.ToString();
            evalResults.ans_04u1_05 = TXT_4_1_05.Value.ToString();
            evalResults.ans_04u1_06 = TXT_4_1_06.Value.ToString();
            evalResults.ans_04u1_07 = TXT_4_1_07.Value.ToString();
            evalResults.ans_04u1_08 = TXT_4_1_08.Value.ToString();
            evalResults.ans_04u1_09 = TXT_4_1_09.Value.ToString();
            evalResults.ans_04u1_10 = TXT_4_1_10.Value.ToString();
            evalResults.ans_04u1_11 = TXT_4_1_11.Value.ToString();
            evalResults.ans_04u1_12 = TXT_4_1_12.Value.ToString();
            evalResults.ans_04u1_13 = TXT_4_1_13.Value.ToString();
            evalResults.ans_04u1_14 = TXT_4_4_16.Value.ToString();
            evalResults.ans_04u1_15 = TXT_4_4_17.Value.ToString();
            evalResults.ans_04u1_16 = TXT_4_4_18.Value.ToString();
            evalResults.ans_04u1_17 = TXT_4_4_19.Value.ToString();
            evalResults.ans_04u1_18 = TXT_4_4_20.Value.ToString();
            evalResults.ans_04u1_19 = TXT_4_4_21.Value.ToString();
            evalResults.ans_04u1_20 = TXT_4_4_22.Value.ToString();

            evalResults.ans_04u2_01 = TXT_4_2_1.Value.ToString();
            evalResults.ans_04u2_02 = TXT_4_2_2.Value.ToString();
            evalResults.ans_04u2_03 = TXT_4_2_3.Value.ToString();
            evalResults.ans_04u2_04 = TXT_4_2_4.Value.ToString();
            evalResults.ans_04u2_05 = TXT_4_4_23.Value.ToString();
            evalResults.ans_04u2_06 = TXT_4_4_24.Value.ToString();

            evalResults.ans_04u3_01 = TXT_4_3_1.Value.ToString();
            evalResults.ans_04u3_02 = TXT_4_3_2.Value.ToString();
            evalResults.ans_04u3_03 = TXT_4_3_3.Value.ToString();
            evalResults.ans_04u3_04 = TXT_4_3_4.Value.ToString();
            evalResults.ans_04u3_05 = TXT_4_3_5.Value.ToString();
            evalResults.ans_04u3_06 = TXT_4_3_6.Value.ToString();
            evalResults.ans_04u3_07 = TXT_4_3_7.Value.ToString();

            evalResults.ans_04u4_01 = TXT_4_4_1.Value.ToString();
            evalResults.ans_04u4_02 = TXT_4_4_2.Value.ToString();
            evalResults.ans_04u4_03 = TXT_4_4_3.Value.ToString();
            evalResults.ans_04u4_04 = TXT_4_4_4.Value.ToString();
            evalResults.ans_04u4_05 = TXT_4_4_5.Value.ToString();
            evalResults.ans_04u4_06 = TXT_4_4_6.Value.ToString();
            evalResults.ans_04u4_07 = TXT_4_4_7.Value.ToString();
            evalResults.ans_04u4_08 = TXT_4_4_8.Value.ToString();
            evalResults.ans_04u4_09 = TXT_4_4_9.Value.ToString();
            evalResults.ans_04u4_10 = TXT_4_4_10.Value.ToString();
            evalResults.ans_04u4_11 = TXT_4_4_11.Value.ToString();
            evalResults.ans_04u4_12 = TXT_4_4_12.Value.ToString();
            evalResults.ans_04u4_13 = TXT_4_4_13.Value.ToString();
            evalResults.ans_04u4_14 = TXT_4_4_14.Value.ToString();
            evalResults.ans_04u4_15 = TXT_4_4_15.Value.ToString();

            evalResults.ans_11 = TXT_5_3.Value.ToString();
            evalResults.ans_12_01 = TXT_6_1.Value.ToString(); 
            evalResults.ans_12_02 = TXT_6_2.Value.ToString();
            evalResults.ans_12_03 = TXT_6_3.Value.ToString();
            evalResults.ans_12_04 = TXT_6_4.Value.ToString();
            evalResults.ans_12_05 = TXT_6_5.Value.ToString();
            evalResults.ans_12_06 = TXT_6_6.Value.ToString();


            MessageResult messageResult = new MessageResult();

            if (evalResults.ans_04u1.Length < 20 || evalResults.ans_04u2.Length < 6 ||
                evalResults.ans_04u3.Length < 7 || evalResults.ans_04u4.Length < 15 )
            {
                messageResult.ErrorCode = ErrorCode.E;
                messageResult.Message = "กรุณากรอกข้อมูลให้ครบถ้วน";
            }
            else
            {
                messageResult = DBControl.createEvalResult(evalResults);
            }

            switch (messageResult.ErrorCode)
            {
                case ErrorCode.E:
                    SuccessMessage_ins.Visible = false;
                    ErrorMessage_ins.Visible = true;
                    FailureText_ins.Text = messageResult.Message;
                    FailBtn.Visible = true;
                    SuccessBtn.Visible = false;
                    break;
                case ErrorCode.S:
                    ErrorMessage_ins.Visible = false;
                    SuccessMessage_ins.Visible = true;
                    SuccessText_ins.Text = messageResult.Message;
                    FailBtn.Visible = false;
                    SuccessBtn.Visible = true;
                    break;
            }

            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModalInsert();", true);
        }
    }
}