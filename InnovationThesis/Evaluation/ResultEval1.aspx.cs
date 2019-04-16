using InnovationThesis.Model;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InnovationThesis.Evaluation
{
    public partial class ResultEval1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["ssUsername"] == null)
            {
                Response.Redirect("../Account/Login");
            }

            EvalResults evalRes = DBControl.getEval(HttpContext.Current.Session["ssUsername"].ToString());
            if (evalRes.username == HttpContext.Current.Session["ssUsername"].ToString())
            {
                CultureInfo _cultureTHInfo = new CultureInfo("th-TH");
                lbDate.Text = evalRes.evalDate.ToString("dd MMMM yyyy", _cultureTHInfo);
                s_PointU1.Value = evalRes.average_u1.ToString();
                s_PointU2.Value = evalRes.average_u2.ToString();
                s_PointU3.Value = evalRes.average_u3.ToString();
                s_PointU4.Value = evalRes.average_u4.ToString();

                List<EvalClass> evalSOrt = new List<EvalClass>();
                evalSOrt.Add(new EvalClass { Factor = "กลุ่มปัจจัยด้านองค์กรและการบริหารจัดการองค์กร (Organizational Factor)", Score = evalRes.average_u1 });
                evalSOrt.Add(new EvalClass { Factor = "กลุ่มปัจจัยด้านกระบวนการทำงานขององค์กร (Process Factor)", Score = evalRes.average_u2 });
                evalSOrt.Add(new EvalClass { Factor = "กลุ่มปัจจัยภายในองค์กร (Internal Factor)", Score = evalRes.average_u3 });
                evalSOrt.Add(new EvalClass { Factor = "กลุ่มปัจจัยด้านทรัพยากรบุคคล (Human Resources Factor)", Score = evalRes.average_u4 });

                List<EvalClass> evalBad = new List<EvalClass>();
                List<EvalClass> evalGood = new List<EvalClass>();

                foreach (EvalClass x in evalSOrt)
                {
                    if(x.Score >= 2.5)
                    {
                        evalGood.Add(x);
                    }
                    else
                    {
                        evalBad.Add(x);
                    }
                }

                evalBad = evalBad.OrderByDescending(x => x.Score).ToList();
                evalGood = evalGood.OrderByDescending(x => x.Score).ToList();

                string sDesc;

                sDesc = string.Format("คะแนนรวม {0} ", evalRes.totalScore.ToString("0"));
                if (evalRes.totalScore < 33.4)
                {
                    evalBad = evalSOrt.OrderBy(x => x.Score).ToList();
                    sDesc = sDesc + "หมายถึง มหาวิทยาลัยของท่าน<b>มีความพร้อมสำหรับการเข้าร่วมโครงการ Talent Mobility ในระดับเริ่มต้น</b> ";
                    sDesc = sDesc + "ทั้งนี้ควรพิจารณาโอกาสในการเพิ่มศักยภาพและส่งเสริมความพร้อมของปัจจัยทั้ง 4 กลุ่ม ได้แก่ ";
                    sDesc = sDesc + String.Format("อันดับแรกคือ {0} คะแนน {1}, ", evalBad[0].Factor, evalBad[0].Score.ToString("0.0"));
                    sDesc = sDesc + String.Format("อันดับที่สองคือ {0} คะแนน {1}, ", evalBad[1].Factor, evalBad[1].Score.ToString("0.0"));
                    sDesc = sDesc + String.Format("อันดับที่สามคือ {0} คะแนน {1}, ", evalBad[2].Factor, evalBad[2].Score.ToString("0.0"));
                    sDesc = sDesc + String.Format("และอันดับที่สี่คือ {0} คะแนน {1} ", evalBad[3].Factor, evalBad[3].Score.ToString("0.0"));
                    sDesc = sDesc + "ตามลำดับ โดยมหาวิทยาลัยของท่านควรส่งเสริมความพร้อมของปัจจัยทั้ง 4 กลุ่มดังกล่าวและดำเนินการอย่างเร่งด่วน ";
                    sDesc = sDesc + "เพื่อเพิ่มประสิทธิภาพทางด้านการแบ่งปันบุคลากรสู่อุตสาหกรรม ";
                    sDesc = sDesc + "ผ่านกระบวนการถ่ายทอดเทคโนโลยีและการถ่ายทอดองค์ความรู้ของบุคลากรนักวิจัย ";
                    sDesc = sDesc + "เพื่อการรับรู้โอกาสในการนำงานวิจัยออกสู่ตลาดและการรับรู้ถึงการสนับสนุนจากรัฐบาลและหน่วยงานภายนอกมหาวิทยาลัย ";
                    sDesc = sDesc + "ตลอดจนเพิ่มศักยภาพในการแข่งขันของมหาวิทยาลัย ทั้งในด้านการศึกษาและการวิจัยที่มีผลกระทบต่อสังคม ";
                    sDesc = sDesc + "รวมไปถึงการเพิ่มอันดับของมหาวิทยาลัยให้สูงขึ้น";
                }
                else if(evalRes.totalScore < 66.7)
                {
                    sDesc = sDesc + "หมายถึง มหาวิทยาลัยของท่าน<b>มีความพร้อมสำหรับการเข้าร่วมโครงการ Talent Mobility ในระดับปานกลาง</b> ";

                    if(evalGood.Count > 0 && evalBad.Count > 0)
                    {
                        sDesc = sDesc + String.Format("โดยมีจุดแข็ง {0} กลุ่มปัจจัย และมีโอกาสในการเพิ่มศักยภาพและส่งเสริมความพร้อม {1} กลุ่มปัจจัย "
                            , evalGood.Count.ToString("0"), evalBad.Count.ToString("0"));
                        sDesc = sDesc + "ทั้งนี้มหาวิทยาลัยของท่านควรรักษาจุดแข็งใน";
                        foreach(EvalClass eval in evalGood)
                        {
                            sDesc = sDesc + String.Format("{0} คะแนน {1} "
                            , eval.Factor, eval.Score.ToString("0.0"));
                        }
                        sDesc = sDesc + "ให้มีระดับคงที่หรือดียิ่งขึ้น พร้อมทั้งพิจารณาโอกาสในการเพิ่มศักยภาพและส่งเสริมความพร้อมในปัจจัยกลุ่มที่ได้คะแนนรองลงมา ได้แก่ ";
                        foreach (EvalClass eval in evalBad)
                        {
                            sDesc = sDesc + String.Format("{0} คะแนน {1} "
                            , eval.Factor, eval.Score.ToString("0.0"));
                        }
                        sDesc = sDesc + "โดยควรดำเนินการควบคู่กันไป ";
                    }
                    else if(evalGood.Count > 0)
                    {
                        sDesc = sDesc + String.Format("โดยมีจุดแข็ง {0} กลุ่มปัจจัย ", evalGood.Count.ToString("0"));
                        sDesc = sDesc + "ทั้งนี้มหาวิทยาลัยของท่านควรรักษาจุดแข็งใน";
                        foreach (EvalClass eval in evalGood)
                        {
                            sDesc = sDesc + String.Format("{0} คะแนน {1} "
                            , eval.Factor, eval.Score.ToString("0.0"));
                        }
                        sDesc = sDesc + "ให้มีระดับคงที่หรือดียิ่งขึ้น ";

                    }
                    else
                    {
                        sDesc = sDesc + String.Format("โดยมีโอกาสในการเพิ่มศักยภาพและส่งเสริมความพร้อม {0} กลุ่มปัจจัย "
                            , evalBad.Count.ToString("0"));
                        sDesc = sDesc + "พิจารณาโอกาสในการเพิ่มศักยภาพและส่งเสริมความพร้อมในปัจจัยกลุ่ม ได้แก่ ";
                        foreach (EvalClass eval in evalBad)
                        {
                            sDesc = sDesc + String.Format("{0} คะแนน {1} "
                            , eval.Factor, eval.Score.ToString("0.0"));
                        }
                    }

                    sDesc = sDesc + "เพื่อเพิ่มขีดความสามารถทางด้านการแบ่งปันบุคลากรสู่อุตสาหกรรมให้สูงกว่ามาตรฐานยิ่งขึ้นไป ";
                    sDesc = sDesc + "ตลอดจนเพิ่มศักยภาพในการแข่งขันของมหาวิทยาลัย ทั้งในด้านการนำงานวิจัยออกสู่ตลาดและสร้างการรับรู้แก่สังคมในวงกว้าง ";
                    sDesc = sDesc + "รวมไปถึงเพิ่มการจัดอันดับของมหาวิทยาลัยที่สูงขึ้น";
                }
                else
                {
                    evalGood = evalSOrt.OrderByDescending(x => x.Score).ToList();
                    sDesc = sDesc + "หมายถึง มหาวิทยาลัยของท่าน<b>มีความพร้อมสำหรับการเข้าร่วมโครงการ Talent Mobility ในระดับสูง</b> ";
                    sDesc = sDesc + "โดยควรรักษาจุดแข็งของมหาวิทยาลัยของท่านในปัจจัยทั้ง 4 กลุ่ม ได้แก่ ";
                    sDesc = sDesc + String.Format("อันดับแรกคือ {0} คะแนน {1}, ", evalGood[0].Factor, evalGood[0].Score.ToString("0.0"));
                    sDesc = sDesc + String.Format("อันดับที่สองคือ {0} คะแนน {1}, ", evalGood[1].Factor, evalGood[1].Score.ToString("0.0"));
                    sDesc = sDesc + String.Format("อันดับที่สามคือ {0} คะแนน {1}, ", evalGood[2].Factor, evalGood[2].Score.ToString("0.0"));
                    sDesc = sDesc + String.Format("และอันดับที่สี่คือ {0} คะแนน {1} ", evalGood[3].Factor, evalGood[3].Score.ToString("0.0"));
                    sDesc = sDesc + "ตามลำดับ ทั้งนี้มหาวิทยาลัยของท่านควรรักษาจุดแข็งทั้ง 4 กลุ่มปัจจัยดังกล่าวให้มีระดับคงที่หรือดียิ่งขึ้น ";
                    sDesc = sDesc + "เพื่อรักษาศักยภาพในการแบ่งปันบุคลากรสู่อุตสาหกรรมของมหาวิทยาลัยของท่าน ตลอดจนเป็นต้นแบบให้กับมหาวิทยาลัยอื่น ";
                    sDesc = sDesc + "ทั้งในด้านขีดความสามารถในการแข่งขันของมหาวิทยาลัยและด้านการนำงานวิจัยออกสู่ตลาดซึ่งมีคุณประโยชน์ต่อสังคมและประเทศชาติ ";
                    sDesc = sDesc + "รวมไปถึงการเป็นผู้นำอันดับมหาวิทยาลัยชั้นนำของประเทศไทย";
                }

                lbTotalDesc.Text = sDesc;
            }
            else
            {

            }

            /*
            Random rand = new Random((int)DateTime.Now.Ticks);
            s_PointU1.Value = (rand.Next(20, 35)*1.0 / 10).ToString();
            s_PointU2.Value = (rand.Next(20, 35)*1.0 / 10).ToString();
            s_PointU3.Value = (rand.Next(20, 35)*1.0 / 10).ToString();
            s_PointU4.Value = (rand.Next(20, 35)*1.0 / 10).ToString();
            s_PointI1.Value = (rand.Next(20, 35)*1.0 / 10).ToString();
            s_PointI2.Value = (rand.Next(10, 35)*1.0 / 10).ToString();
            s_PointI3.Value = (rand.Next(10, 35)*1.0 / 10).ToString();
            s_PointI4.Value = (rand.Next(10, 35)*1.0 / 10).ToString();
            s_PointR1.Value = (rand.Next(10, 35)*1.0 / 10).ToString();
            s_PointR2.Value = (rand.Next(10, 35)*1.0 / 10).ToString();
            s_PointR3.Value = (rand.Next(10, 35)*1.0 / 10).ToString();
            s_PointR4.Value = (rand.Next(10, 35)*1.0 / 10).ToString();
            */

            a_PointU1.Value = (2.5).ToString();
            a_PointU2.Value = (2.5).ToString();
            a_PointU3.Value = (2.5).ToString();
            a_PointU4.Value = (2.5).ToString();

            /*
            a_PointI1.Value = (rand.Next(25, 25)*1.0 / 10).ToString();
            a_PointI2.Value = (rand.Next(25, 25)*1.0 / 10).ToString();
            a_PointI3.Value = (rand.Next(25, 25)*1.0 / 10).ToString();
            a_PointI4.Value = (rand.Next(25, 25)*1.0 / 10).ToString();
            a_PointR1.Value = (rand.Next(25, 25)*1.0 / 10).ToString();
            a_PointR2.Value = (rand.Next(25, 25)*1.0 / 10).ToString();
            a_PointR3.Value = (rand.Next(25, 25)*1.0 / 10).ToString();
            a_PointR4.Value = (rand.Next(25, 25)*1.0 / 10).ToString();
            */

            System.Drawing.Color failColor = System.Drawing.Color.Red;
            System.Drawing.Color passColor = System.Drawing.Color.Green;

            lblU1.Text = Convert.ToDouble(s_PointU1.Value).ToString("0.0");
            lblU2.Text = Convert.ToDouble(s_PointU2.Value).ToString("0.0");
            lblU3.Text = Convert.ToDouble(s_PointU3.Value).ToString("0.0");
            lblU4.Text = Convert.ToDouble(s_PointU4.Value).ToString("0.0");

            lblU1.ForeColor = (Convert.ToDouble(s_PointU1.Value) < Convert.ToDouble(a_PointU1.Value)) ? failColor : passColor;
            lblU2.ForeColor = (Convert.ToDouble(s_PointU2.Value) < Convert.ToDouble(a_PointU2.Value)) ? failColor : passColor;
            lblU3.ForeColor = (Convert.ToDouble(s_PointU3.Value) < Convert.ToDouble(a_PointU3.Value)) ? failColor : passColor;
            lblU4.ForeColor = (Convert.ToDouble(s_PointU4.Value) < Convert.ToDouble(a_PointU4.Value)) ? failColor : passColor;
        }

        protected void btnSendMail_Click(object sender, EventArgs e)
        {
            SmtpClient SmtpServer = new SmtpClient("smtp.office365.com");
            var mail = new MailMessage();
            mail.From = new MailAddress("thanat.hongpanarak@emthsf.onmicrosoft.com");
            mail.To.Add("thanat759@hotmail.com");
            mail.Subject = "ผลการประเมินแบบสอบถามนวัตกรรมระบบประเมินองค์กร";
            mail.IsBodyHtml = true;
            string htmlBody;
            htmlBody = "<!DOCTYPE html><html lang=\"en\"><head>    <meta charset=\"utf-8\" />    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />    <title>        นวัตกรรมระบบประเมินมหาวิทยาลัย    </title>    <script src=\"https://innovationthesis.azurewebsites.net/Scripts/modernizr-2.8.3.js\"></script>    <link href=\"https://innovationthesis.azurewebsites.net/Content/bootstrap.css\" rel=\"stylesheet\" />    <link href=\"https://innovationthesis.azurewebsites.net/Content/Site.css\" rel=\"stylesheet\" />    <link href=\"https://fonts.googleapis.com/css?family=Kanit\" rel=\"stylesheet\" />    <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.8.1/css/all.css\"        integrity=\"sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf\" crossorigin=\"anonymous\" /></head><body    style=\"background: url(https://innovationthesis.azurewebsites.net/images/bg1.jpg) no-repeat center center fixed; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover;\">    <form method=\"post\" action=\"./ResultEval1\" id=\"ctl01\">                <script src=\"https://innovationthesis.azurewebsites.net/Scripts/jquery-3.3.1.js\" type=\"text/javascript\"></script>        <script src=\"https://innovationthesis.azurewebsites.net/Scripts/bootstrap.js\" type=\"text/javascript\"></script>        <script src=\"/bundles/WebFormsJs?v=N8tymL9KraMLGAMFuPycfH3pXe6uUlRXdhtYv8A_jUU1\"            type=\"text/javascript\"></script>              <div class=\"container body-content\">            <script src=\"https://innovationthesis.azurewebsites.net/Scripts/Chart.js\"></script>            <script src=\"https://innovationthesis.azurewebsites.net/Scripts/Chart.RadialGauge.umd.min.js\"></script>            <div style=\"margin-top: 30px\">                <h2>ผลการประเมินแบบสอบถามนวัตกรรมระบบประเมินองค์กร</h2>                <h3>เรื่อง                    การประเมินความต้องการและปัจจัยที่มีอิทธิพลต่อการตัดสินใจเข้าร่วมโครงการเคลื่อนย้ายบุคลากรด้านวิจัย                    จากมหาวิทยาลัยไปปฎิบัติงานในภาคอุตสาหกรรมของประเทศไทย (Talent Mobility)                </h3>                <p></p>                <div class=\"row\">                    <div class=\"col-md-8 col-lg-5\">                        <input type=\"hidden\" name=\"ctl00$MainContent$s_PointU1\" id=\"MainContent_s_PointU1\" value=\"4\" />                        <input type=\"hidden\" name=\"ctl00$MainContent$s_PointU2\" id=\"MainContent_s_PointU2\"                            value=\"1.6\" />                        <input type=\"hidden\" name=\"ctl00$MainContent$s_PointU3\" id=\"MainContent_s_PointU3\"                            value=\"1.1\" />                        <input type=\"hidden\" name=\"ctl00$MainContent$s_PointU4\" id=\"MainContent_s_PointU4\"                            value=\"1.3\" />                        <input type=\"hidden\" name=\"ctl00$MainContent$s_PointI1\" id=\"MainContent_s_PointI1\"                            value=\"4.6\" />                        <input type=\"hidden\" name=\"ctl00$MainContent$s_PointI2\" id=\"MainContent_s_PointI2\"                            value=\"2.6\" />                        <input type=\"hidden\" name=\"ctl00$MainContent$s_PointI3\" id=\"MainContent_s_PointI3\"                            value=\"2.1\" />                        <input type=\"hidden\" name=\"ctl00$MainContent$s_PointI4\" id=\"MainContent_s_PointI4\"                            value=\"4.2\" />                        <input type=\"hidden\" name=\"ctl00$MainContent$s_PointR1\" id=\"MainContent_s_PointR1\"                            value=\"2.6\" />                        <input type=\"hidden\" name=\"ctl00$MainContent$s_PointR2\" id=\"MainContent_s_PointR2\"                            value=\"1.7\" />                        <input type=\"hidden\" name=\"ctl00$MainContent$s_PointR3\" id=\"MainContent_s_PointR3\"                            value=\"1.8\" />                        <input type=\"hidden\" name=\"ctl00$MainContent$s_PointR4\" id=\"MainContent_s_PointR4\"                            value=\"2.3\" />                        <input type=\"hidden\" name=\"ctl00$MainContent$a_PointU1\" id=\"MainContent_a_PointU1\"                            value=\"3.4\" />                        <input type=\"hidden\" name=\"ctl00$MainContent$a_PointU2\" id=\"MainContent_a_PointU2\"                            value=\"3.3\" />                        <input type=\"hidden\" name=\"ctl00$MainContent$a_PointU3\" id=\"MainContent_a_PointU3\"                            value=\"1.2\" />                        <input type=\"hidden\" name=\"ctl00$MainContent$a_PointU4\" id=\"MainContent_a_PointU4\"                            value=\"1.6\" />                        <input type=\"hidden\" name=\"ctl00$MainContent$a_PointI1\" id=\"MainContent_a_PointI1\"                            value=\"4.3\" />                        <input type=\"hidden\" name=\"ctl00$MainContent$a_PointI2\" id=\"MainContent_a_PointI2\"                            value=\"2.8\" />                        <input type=\"hidden\" name=\"ctl00$MainContent$a_PointI3\" id=\"MainContent_a_PointI3\" value=\"1\" />                        <input type=\"hidden\" name=\"ctl00$MainContent$a_PointI4\" id=\"MainContent_a_PointI4\" value=\"4\" />                        <input type=\"hidden\" name=\"ctl00$MainContent$a_PointR1\" id=\"MainContent_a_PointR1\"                            value=\"4.9\" />                        <input type=\"hidden\" name=\"ctl00$MainContent$a_PointR2\" id=\"MainContent_a_PointR2\"                            value=\"2.4\" />                        <input type=\"hidden\" name=\"ctl00$MainContent$a_PointR3\" id=\"MainContent_a_PointR3\"                            value=\"3.2\" />                        <input type=\"hidden\" name=\"ctl00$MainContent$a_PointR4\" id=\"MainContent_a_PointR4\" value=\"3\" />                        <canvas id=\"myChart\" height=\"250\"></canvas>                        <p></p>                    </div>                    <div class=\"col-md-4 col-lg-6\">                        <h4>รายละเอียดผลการประเมิน</h4>                        <table class=\"table\" style=\"font-size: 15px;\">                            <thead>                                <tr>                                    <th scope=\"col\">หัวข้อ</th>                                    <th scope=\"col\">คำอธิบาย</th>                                    <th scope=\"col\">คะแนนของท่าน</th>                                </tr>                            </thead>                            <tbody>                                <tr>                                    <th scope=\"row\">U-1</th>                                    <td>กลุ่มปัจจัยด้านองค์กร และการบริหารจัดการองค์กร                                        <br />                                        (Organizational Factor)                                    </td>                                    <td style=\"text-align: center\">                                        <h4>                                            <span id=\"MainContent_lblU1\" style=\"color:Green;\">4.0</span></h4>                                    </td>                                </tr>                                <tr>                                    <th scope=\"row\">U-2</th>                                    <td>กลุ่มปัจจัยด้านกระบวนการทำงานขององค์กร<br />                                        (Process Factor)                                    </td>                                    <td style=\"text-align: center\">                                        <h4>                                            <span id=\"MainContent_lblU2\" style=\"color:Red;\">1.6</span></h4>                                    </td>                                </tr>                                <tr>                                    <th scope=\"row\">U-3</th>                                    <td>กลุ่มปัจจัยภายในองค์กร<br />                                        (Internal Factor)                                    </td>                                    <td style=\"text-align: center\">                                        <h4>                                            <span id=\"MainContent_lblU3\" style=\"color:Red;\">1.1</span></h4>                                    </td>                                </tr>                                <tr>                                    <th scope=\"row\">U-4</th>                                    <td>กลุ่มปัจจัยด้านทรัพยากรบุคคล<br />                                        (Human Resources Factor)                                    </td>                                    <td style=\"text-align: center\">                                        <h4>                                            <span id=\"MainContent_lblU4\" style=\"color:Red;\">1.3</span></h4>                                    </td>                                </tr>                            </tbody>                        </table>                    </div>                </div>                <div class=\"row\">                    <div class=\"col-md-8 col-lg-5\">                        <canvas id=\"chart-areaxx\" height=\"150\"></canvas>                        <p></p>                    </div>                    <div class=\"col-md-4 col-lg-6\">                        <h4>ผลการประเมินรวม</h4>                        <p>                            <div>                                แนวคิดข้อมูลเปิดภาครัฐ การประเมินข้อมูลเปิดภาครัฐในประเทศชั้นนำ                                การดำเนินงานรัฐบาลอิเล็กทรอนิกส์และเศรษฐกิจดิจิทัลของประเทศไทย                                ข้อมูลเปิดภาครัฐของประเทศไทย องค์ประกอบและเกณฑ์การประเมินจากองค์กรนานาชาติ                                พระราชบัญญัติข้อมูลข่าวสามารถของราชการ                                และกรอบแนวคิดการวิจัยตลอดจนตัวแปรที่ใช้ในการวิจัยและการวัดค่าตัวแปร                            </div>                        </p>                    </div>                </div>                <div style=\"margin-top: 20px;\">                    <h2>แบบสำรวจการยอมรับนวัตกรรม</h2>                    <p>                        ขอความกรุณาตอบแบบสอบถามเพื่อให้ทราบถึงคุณลักษณะของโปรแกรม                        เพื่อผู้วิจัยนำมาปรับปรุงให้มีประสิทธิภาพที่เหมาะสมกับกลุ่มเป้าหมายที่ต้องใช้งานโปรแกรม                    </p>                    <p>                        <a class=\"btn btn-secondary\" target=\"_blank\"                            href=\"https://forms.gle/r5UrrCJMwt8CZVyJ8\">ทำแบบสำรวจ &raquo;</a>                    </p>                </div>                <script>                    var self_pointU1 = parseFloat(document.getElementById('MainContent_s_PointU1').value);                    var self_pointU2 = parseFloat(document.getElementById('MainContent_s_PointU2').value);                    var self_pointU3 = parseFloat(document.getElementById('MainContent_s_PointU3').value);                    var self_pointU4 = parseFloat(document.getElementById('MainContent_s_PointU4').value);                    var self_pointI1 = parseFloat(document.getElementById('MainContent_s_PointI1').value);                    var self_pointI2 = parseFloat(document.getElementById('MainContent_s_PointI2').value);                    var self_pointI3 = parseFloat(document.getElementById('MainContent_s_PointI3').value);                    var self_pointI4 = parseFloat(document.getElementById('MainContent_s_PointI4').value);                    var self_pointR1 = parseFloat(document.getElementById('MainContent_s_PointR1').value);                    var self_pointR2 = parseFloat(document.getElementById('MainContent_s_PointR2').value);                    var self_pointR3 = parseFloat(document.getElementById('MainContent_s_PointR3').value);                    var self_pointR4 = parseFloat(document.getElementById('MainContent_s_PointR4').value);                    var avg_pointU1 = parseFloat(document.getElementById('MainContent_a_PointU1').value);                    var avg_pointU2 = parseFloat(document.getElementById('MainContent_a_PointU2').value);                    var avg_pointU3 = parseFloat(document.getElementById('MainContent_a_PointU3').value);                    var avg_pointU4 = parseFloat(document.getElementById('MainContent_a_PointU4').value);                    var avg_pointI1 = parseFloat(document.getElementById('MainContent_a_PointI1').value);                    var avg_pointI2 = parseFloat(document.getElementById('MainContent_a_PointI2').value);                    var avg_pointI3 = parseFloat(document.getElementById('MainContent_a_PointI3').value);                    var avg_pointI4 = parseFloat(document.getElementById('MainContent_a_PointI4').value);                    var avg_pointR1 = parseFloat(document.getElementById('MainContent_a_PointR1').value);                    var avg_pointR2 = parseFloat(document.getElementById('MainContent_a_PointR2').value);                    var avg_pointR3 = parseFloat(document.getElementById('MainContent_a_PointR3').value);                    var avg_pointR4 = parseFloat(document.getElementById('MainContent_a_PointR4').value);                    //alert(x);                    Chart.defaults.global.defaultFontFamily = \"'Kanit', sans-serif\";                    Chart.defaults.global.defaultFontSize = 15;                    var ctx = document.getElementById('myChart').getContext('2d');                    var myRadarChart = new Chart(ctx, {                        type: 'radar',                        data: {                            labels: [\"U-1\", \"U-2\", \"U-3\", \"U-4\"],                            datasets: [{                                label: \"ผลประเมินของท่าน\",                                data: [self_pointU1, self_pointU2, self_pointU3, self_pointU4],                                backgroundColor: [                                    'rgba(0, 173, 255, .2)',                                ],                                borderColor: [                                    'rgba(0, 173, 255, .7)',                                ],                                borderWidth: 2                            },                            {                                label: \"ผลประเมินเฉลี่ย\",                                data: [avg_pointU1, avg_pointU2, avg_pointU3, avg_pointU4],                                backgroundColor: [                                    'rgba(255, 193, 7, .2)',                                ],                                borderColor: [                                    'rgba(255, 193, 7, .7)',                                ],                                borderWidth: 2                            }                            ]                        },                        options: {                            responsive: true,                            scale: {                                ticks: {                                    beginAtZero: true,                                    max: 5                                },                                pointLabels: {                                    fontSize: 15                                }                            }                        },                        pointLabelFontSize: '50px'                    });                    var total = (self_pointU1 * 4) + (self_pointU2 * 3) + (self_pointU3 * 2) + (self_pointU4 * 1);                    total = total * 2;                    total = parseFloat(Math.round(total * 100) / 100).toFixed(2);                    var ctx2 = document.getElementById(\"chart-areaxx\").getContext(\"2d\");                    var gradientStroke = ctx2.createLinearGradient(500, 0, 100, 0);                    gradientStroke.addColorStop(1, \"#92f480\");                    gradientStroke.addColorStop(0, \"#f49080\");                    var config2 = {                        type: \"radialGauge\",                        data: {                            labels: [\"คะแนน\"],                            datasets: [                                {                                    data: [total],                                    backgroundColor: [gradientStroke],                                    borderWidth: 0,                                    label: \"คะแนนรวม\"                                }                            ]                        },                        options: {                            responsive: true,                            legend: {},                            title: {                                display: true,                                text: \"คะแนนรวมของท่าน\"                            },                            centerPercentage: 80                        }                    };                    var myRadarChart = new Chart(ctx2, config2);                </script>            </div>            <hr />            <footer>                <p>&copy; 2562 - นวัตกรรมระบบประเมินมหาวิทยาลัยเพื่อการแบ่งปันบุคลากรสู่อุตสาหกรรม</p>            </footer>        </div>    </form></body></html>";
            mail.Body = htmlBody;
            SmtpServer.Port = 587;
            SmtpServer.UseDefaultCredentials = false;
            SmtpServer.Credentials = new System.Net.NetworkCredential("thanat.hongpanarak@emthsf.onmicrosoft.com", "5023K1n2");
            SmtpServer.EnableSsl = true;
            SmtpServer.Send(mail);

        }
    }
}