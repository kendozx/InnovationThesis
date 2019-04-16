<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Eval1.aspx.cs" Inherits="InnovationThesis.Evaluation.Eval1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .btn-light:not(:disabled):not(.disabled).active, .btn-light:not(:disabled):not(.disabled):active, .show > .btn-light.dropdown-toggle {
            color: #fff;
            background-color: #007bff;
            border-color: #007bff;
        }

        .btn-circle {
            width: 35px;
            height: 35px;
            margin-right: 1px;
            margin-left: 1px;
            padding: 6px 0px;
            border-radius: 18px;
            text-align: center;
            font-size: 16px;
            line-height: 1.42857;
        }

        @media only screen and (max-width: 576px), (min-device-width: 576px) and (max-device-width: 576px) {

            /* Force table to not be like tables anymore */
            table, thead, tbody, th, td, tr {
                display: block;
            }

                /* Hide table headers (but not display: none;, for accessibility) */
                thead tr {
                    position: absolute;
                    top: -9999px;
                    left: -9999px;
                }

            tr {
                margin: 0 0 1rem 0;
            }

            .borderless td, .borderless th {
                border-top: none;
            }

            td {
                /* Behave  like a "row" */
                border: none;
                border-bottom: 1px solid #eee;
                position: relative;
                padding-left: 50%;
            }

                td:before {
                    /* Now like a table header */
                    position: absolute;
                    /* Top/left values mimic padding */
                    top: 0;
                    left: 6px;
                    width: 45%;
                    padding-right: 10px;
                    white-space: nowrap;
                }
        }
    </style>
    <script>
        window.addEventListener('load', function () {
            new FastClick(document.body);
            this.console.log("heello");
        }, false);
    </script>
    <div style="margin-top: 30px">
        <h3>เแบบประเมินความพร้อมของมหาวิทยาลัยในการเข้าร่วมโครงการเคลื่อนย้ายบุคลากรด้านวิจัย
จากมหาวิทยาลัยไปปฎิบัติงานในภาคอุตสาหกรรมของประเทศไทย (Talent Mobility)
        </h3>
        <p>แบบประเมินฉบับนี้มีวัตถุประสงค์เพื่อใช้ประกอบการศึกษาวิจัยระดับดุษฎีบัณฑิต ของหลักสูตรธุรกิจเทคโนโลยีและการจัดการนวัตกรรม (สหสาขาวิชา) บัณฑิตวิทยาลัย จุฬาลงกรณ์มหาวิทยาลัย โดยมีวัตถุประสงค์เพื่อประเมินความพร้อมของมหาวิทยาลัยในการเข้าร่วมโครงการเคลื่อนย้ายบุคลากรด้านวิจัยจากมหาวิทยาลัยไปปฎิบัติงานในภาคอุตสาหกรรมของประเทศไทย (Talent Mobility) และเพื่อสร้างนวัตกรรมระบบประเมินองค์กรเพื่อการแบ่งปันบุคลากรผู้เชี่ยวชาญทางด้านวิทยาศาสตร์ เทคโนโลยี และนวัตกรรม ระหว่างมหาวิทยาลัยและอุตสาหกรรม</p>
        <p>ดังนั้น จึงขอความอนุเคราะห์ผู้ตอบแบบประเมินงานวิจัยฉบับนี้ โปรดใส่เครื่องหมาย <span class="fas fa-check"></span> ลงในช่องที่ตรงกับความเป็นจริงโดยครบถ้วนสมบูรณ์  ทั้งนี้ข้อมูลของมหาวิทยาลัยจะได้รับการรักษาเป็นความลับ  อีกทั้งการรายงานผลการวิจัยจะดำเนินการในภาพรวม และใช้เพื่อวัตถุประสงค์ในการศึกษาวิจัยเท่านั้น</p>

        <div id="accordion">
            <!-- 1A -->
            <div class="card" style="margin-bottom: 15px">
                <div class="card-header" id="HEAD_1A">
                    <h5 class="mb-0"><strong>ส่วนที่ 1A</strong> ข้อมูลทั่วไปของผู้ตอบแบบสอบถาม</h5>
                </div>

                <div id="COLL_1A" class="collapse show" aria-labelledby="HEAD_1A" data-parent="#accordion">
                    <div class="card-body">
                        <form>

                            <div class="form-group row">
                                <div class="col-sm-3">
                                    1. เพศ
                                </div>
                                <div class="col-sm-9">
                                    <div class="custom-control custom-radio">
                                        <input type="radio" id="SEL_1_01_01" name="OPTION_1_01" class="custom-control-input">
                                        <label class="custom-control-label" for="SEL_1_01_01">ชาย</label>
                                    </div>
                                    <div class="custom-control custom-radio">
                                        <input type="radio" id="SEL_1_01_02" name="OPTION_1_01" class="custom-control-input">
                                        <label class="custom-control-label" for="SEL_1_01_02">หญิง</label>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-sm-3">
                                    2. อายุ
                                </div>
                                <div class="col-sm-9">
                                    <div class="custom-control custom-radio">
                                        <input type="radio" id="SEL_1_02_01" name="OPTION_1_02" class="custom-control-input">
                                        <label class="custom-control-label" for="SEL_1_02_01">ไม่เกิน 29 ปี</label>
                                    </div>
                                    <div class="custom-control custom-radio">
                                        <input type="radio" id="SEL_1_02_02" name="OPTION_1_02" class="custom-control-input">
                                        <label class="custom-control-label" for="SEL_1_02_02">30 – 39 ปี</label>
                                    </div>
                                    <div class="custom-control custom-radio">
                                        <input type="radio" id="SEL_1_02_03" name="OPTION_1_02" class="custom-control-input">
                                        <label class="custom-control-label" for="SEL_1_02_03">40 – 49 ปี</label>
                                    </div>
                                    <div class="custom-control custom-radio">
                                        <input type="radio" id="SEL_1_02_04" name="OPTION_1_02" class="custom-control-input">
                                        <label class="custom-control-label" for="SEL_1_02_04">50 – 59 ปี</label>
                                    </div>
                                    <div class="custom-control custom-radio">
                                        <input type="radio" id="SEL_1_02_05" name="OPTION_1_02" class="custom-control-input">
                                        <label class="custom-control-label" for="SEL_1_02_05">60 ปีขึ้นไป</label>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-sm-3">
                                    3. ระดับการศึกษา
                                </div>
                                <div class="col-sm-9">
                                    <div class="custom-control custom-radio">
                                        <input type="radio" id="SEL_1_03_01" name="OPTION_1_03" class="custom-control-input">
                                        <label class="custom-control-label" for="SEL_1_03_01">ปริญญาตรี</label>
                                    </div>
                                    <div class="custom-control custom-radio">
                                        <input type="radio" id="SEL_1_03_02" name="OPTION_1_03" class="custom-control-input">
                                        <label class="custom-control-label" for="SEL_1_03_02">ปริญญาโท</label>
                                    </div>
                                    <div class="custom-control custom-radio">
                                        <input type="radio" id="SEL_1_03_03" name="OPTION_1_03" class="custom-control-input">
                                        <label class="custom-control-label" for="SEL_1_03_03">ปริญญาเอก</label>
                                    </div>
                                    <div class="custom-control custom-radio">
                                        <input type="radio" id="SEL_1_03_04" name="OPTION_1_03" class="custom-control-input">
                                        <label class="custom-control-label" for="SEL_1_03_04">สูงกว่าปริญญาเอก</label>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group row">
                                <asp:Label runat="server" AssociatedControlID="ANS_1A_01" CssClass="col-sm-3 col-xl-3 col-lg-3 col-form-label">4. หน่วยงานต้นสังกัด</asp:Label>
                                <div class="col-sm-9">
                                    <asp:TextBox runat="server" ID="ANS_1A_01" CssClass="form-control" />
                                </div>
                            </div>
                            <div class="row">
                                <asp:Label runat="server" AssociatedControlID="ANS_1A_02" CssClass="col-sm-3 col-xl-3 col-lg-3 col-form-label">5. ตำแหน่งทางการบริหาร</asp:Label>
                                <div class="col-sm-9">
                                    <div class="custom-control custom-radio">
                                        <input type="radio" id="SEL_1_05_01" name="OPTION_1_05" class="custom-control-input">
                                        <label class="custom-control-label" for="SEL_1_05_01">ผู้จัดการส่วน/หัวหน้าส่วนหรือเทียบเท่า</label>
                                    </div>
                                    <div class="custom-control custom-radio">
                                        <input type="radio" id="SEL_1_05_02" name="OPTION_1_05" class="custom-control-input">
                                        <label class="custom-control-label" for="SEL_1_05_02">ผู้อำนวยการฝ่ายหรือเทียบเท่า</label>
                                    </div>
                                    <div class="custom-control custom-radio">
                                        <input type="radio" id="SEL_1_05_03" name="OPTION_1_05" class="custom-control-input">
                                        <label class="custom-control-label" for="SEL_1_05_03">อื่น ๆ</label>
                                        <asp:TextBox runat="server" ID="ANS_1A_02" CssClass="form-control" placeholder="โปรดระบุ" />
                                    </div>
                                    
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <!-- 1B -->
            <div class="card" style="margin-bottom: 15px">
                <div class="card-header" id="HEAD_1B">
                    <h5 class="mb-0"><strong>ส่วนที่ 1B</strong> ข้อมูลของหาวิทยาลัย</h5>
                </div>

                <div id="COLL_1B" class="collapse show" aria-labelledby="HEAD_1B" data-parent="#accordion">
                    <div class="card-body">
                        6. ประเภทของมหาวิทยาลัย
                        <asp:HiddenField ID="ANS_1B_00" runat="server" Visible="true" />
                        <table class='table borderless'>
                            <tbody>
                                <tr>
                                    <td style="border-top: none;">มหาวิทยาลัย<b><u>ใน</u></b>โครงการมหาวิทยาลัยวิจัยแห่งชาติ 9 แห่ง ได้แก่ (โปรดระบุมหาวิทยาลัยต้นสังกัด)
                                        <div class="custom-control custom-radio">
                                            <input type="radio" id="SEL_1B_0101" value="UNIVA01" name="OPTION_1B_01" class="custom-control-input" onchange="$('#<%= ANS_1B_00.ClientID %>').val($(this).val())" />
                                            <label class="custom-control-label" for="SEL_1B_0101">จุฬาลงกรณ์มหาวิทยาลัย</label>
                                        </div>
                                        <div class="custom-control custom-radio">
                                            <input type="radio" id="SEL_1B_0102" value="UNIVA02" name="OPTION_1B_01" class="custom-control-input" onchange="$('#<%= ANS_1B_00.ClientID %>').val($(this).val())" />
                                            <label class="custom-control-label" for="SEL_1B_0102">มหาวิทยาลัยเกษตรศาสตร์</label>
                                        </div>
                                        <div class="custom-control custom-radio">
                                            <input type="radio" id="SEL_1B_0103" value="UNIVA03" name="OPTION_1B_01" class="custom-control-input" onchange="$('#<%= ANS_1B_00.ClientID %>').val($(this).val())" />
                                            <label class="custom-control-label" for="SEL_1B_0103">มหาวิทยาลัยขอนแก่น</label>
                                        </div>
                                        <div class="custom-control custom-radio">
                                            <input type="radio" id="SEL_1B_0104" value="UNIVA04" name="OPTION_1B_01" class="custom-control-input" onchange="$('#<%= ANS_1B_00.ClientID %>').val($(this).val())" />
                                            <label class="custom-control-label" for="SEL_1B_0104">มหาวิทยาลัยเชียงใหม่</label>
                                        </div>
                                        <div class="custom-control custom-radio">
                                            <input type="radio" id="SEL_1B_0105" value="UNIVA05" name="OPTION_1B_01" class="custom-control-input" onchange="$('#<%= ANS_1B_00.ClientID %>').val($(this).val())" />
                                            <label class="custom-control-label" for="SEL_1B_0105">มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าธนบุรี</label>
                                        </div>
                                        <div class="custom-control custom-radio">
                                            <input type="radio" id="SEL_1B_0106" value="UNIVA06" name="OPTION_1B_01" class="custom-control-input" onchange="$('#<%= ANS_1B_00.ClientID %>').val($(this).val())" />
                                            <label class="custom-control-label" for="SEL_1B_0106">มหาวิทยาลัยเทคโนโลยีสุรนารี</label>
                                        </div>
                                        <div class="custom-control custom-radio">
                                            <input type="radio" id="SEL_1B_0107" value="UNIVA07" name="OPTION_1B_01" class="custom-control-input" onchange="$('#<%= ANS_1B_00.ClientID %>').val($(this).val())" />
                                            <label class="custom-control-label" for="SEL_1B_0107">มหาวิทยาลัยธรรมศาสตร์</label>
                                        </div>
                                        <div class="custom-control custom-radio">
                                            <input type="radio" id="SEL_1B_0108" value="UNIVA08" name="OPTION_1B_01" class="custom-control-input" onchange="$('#<%= ANS_1B_00.ClientID %>').val($(this).val())" />
                                            <label class="custom-control-label" for="SEL_1B_0108">มหาวิทยาลัยมหิดล</label>
                                        </div>
                                        <div class="custom-control custom-radio">
                                            <input type="radio" id="SEL_1B_0109" value="UNIVA09" name="OPTION_1B_01" class="custom-control-input" onchange="$('#<%= ANS_1B_00.ClientID %>').val($(this).val())" />
                                            <label class="custom-control-label" for="SEL_1B_0109">มหาวิทยาลัยสงขลานครินทร์</label>
                                        </div>
                                    </td>
                                    <td style="border-top: none;">มหาวิทยาลัย<b><u>นอก</u></b>โครงการมหาวิทยาลัยวิจัยแห่งชาติ ได้แก่ (โปรดระบุมหาวิทยาลัยต้นสังกัด)
                                        <div class="custom-control custom-radio">
                                            <input type="radio" id="SEL_1B_0201" value="UNIVB01" name="OPTION_1B_01" class="custom-control-input" onchange="$('#<%= ANS_1B_00.ClientID %>').val($(this).val())" />
                                            <label class="custom-control-label" for="SEL_1B_0201">มหาวิทยาลัยเทคโนโลยีราชมงคล</label>
                                        </div>
                                        <div class="custom-control custom-radio">
                                            <input type="radio" id="SEL_1B_0202" value="UNIVB02" name="OPTION_1B_01" class="custom-control-input" onchange="$('#<%= ANS_1B_00.ClientID %>').val($(this).val())" />
                                            <label class="custom-control-label" for="SEL_1B_0202">มหาวิทยาลัยพระจอมเกล้า</label>
                                        </div>
                                        <div class="custom-control custom-radio">
                                            <input type="radio" id="SEL_1B_0203" value="UNIVB03" name="OPTION_1B_01" class="custom-control-input" onchange="$('#<%= ANS_1B_00.ClientID %>').val($(this).val())" />
                                            <label class="custom-control-label" for="SEL_1B_0203">มหาวิทยาลัยราชภัฏ</label>
                                        </div>
                                        <div class="custom-control custom-radio">
                                            <input type="radio" id="SEL_1B_0204" value="UNIVB04" name="OPTION_1B_01" class="custom-control-input" onchange="$('#<%= ANS_1B_00.ClientID %>').val($(this).val())" />
                                            <label class="custom-control-label" for="SEL_1B_0204">สถาบันอุดมศึกษาเอกชน</label>
                                        </div>
                                        <div class="custom-control custom-radio">
                                            <input type="radio" id="SEL_1B_0205" value="UNIVB05" name="OPTION_1B_01" class="custom-control-input" onchange="$('#<%= ANS_1B_00.ClientID %>').val($(this).val())" />
                                            <label class="custom-control-label" for="SEL_1B_0205">อื่นๆ</label>
                                            <asp:TextBox runat="server" ID="TXT_1B_05" CssClass="form-control" placeholder="โปรดระบุ"></asp:TextBox>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <!-- 2 -->
            <div class="card" style="margin-bottom: 15px">
                <div class="card-header" id="HEAD_2">
                    <h5 class="mb-0"><strong>ส่วนที่ 2</strong> คำจำกัดความ “โครงการ Talent Mobility”</h5>
                </div>
                <div id="COLL_2" class="collapse show" aria-labelledby="HEAD_2" data-parent="#accordion">
                    <div class="card-body">
                        <strong>โครงการ Talent Mobility</strong> หมายถึง โครงการส่งเสริมบุคลากรด้านวิทยาศาสตร์ เทคโนโลยี และนวัตกรรม จากมหาวิทยาลัยและสถาบันวิจัยของภาครัฐ ไปปฏิบัติงานเพื่อเพิ่มขีดความสามารถการแข่งขันในภาคเอกชน เพื่อการวิจัยและพัฒนา, การแก้ปัญหาเชิงเทคนิคและวิศวกรรม, การวิเคราะห์ทดสอบและระบบมาตรฐาน, และการจัดการเทคโนโลยีและนวัตกรรม ทั้งนี้ระยะเวลาการไปปฏิบัติงานในสถานประกอบการของบุคลากร วทน. จะเป็นไปตามข้อตกลงระหว่างบุคลากร วทน. หน่วยงานต้นสังกัด และสถานประกอบการ โดยต้องไปปฏิบัติงานอย่างน้อย 1 วัน/สัปดาห์ และต้องปฏิบัติงานในสถานประกอบการ หรือสถานที่ที่สถานประกอบการใช้เป็นพื้นที่ปฏิบัติงาน เป็นเวลาไม่น้อยกว่า 3 เดือนแต่ไม่เกิน 2 ปี หรือตามเงื่อนไขของหน่วยงานต้นสังกัด <i>(ที่มาของข้อมูล: สวทน., วันที่ 20 กพ. 2560)</i>
                    </div>
                </div>
            </div>

            <!-- 3 -->
            <div class="card" style="margin-bottom: 15px">
                <div class="card-header" id="HEAD_3">
                    <h5 class="mb-0"><strong>ส่วนที่ 3</strong> โครงการเคลื่อนย้ายบุคลากรด้านวิจัยจากมหาวิทยาลัยไปปฎิบัติงานในภาคอุตสาหกรรมของประเทศไทย (Talent Mobility)</h5>
                </div>

                <div id="COLL_3" class="collapse show" aria-labelledby="HEAD_3" data-parent="#accordion">
                    <div class="card-body">
                        <div class="row" style="margin-bottom: 15px">
                            <div class="col-md-6">
                                7. มหาวิทยาลัยมี<b>ความสนใจ</b>ที่จะร่วมโครงการเคลื่อนย้ายบุคลากรด้านวิจัยจากมหาวิทยาลัยไปปฎิบัติงานในภาคอุตสาหกรรม (Talent Mobility) หรือไม่ และเพราะเหตุใด (โปรดระบุเหตุผล)
                            </div>
                            <div class="col-md-3">
                                <div class="custom-control custom-radio">
                                    <input type="radio" id="SEL_3_01_01" name="OPTION_3_01" class="custom-control-input">
                                    <label class="custom-control-label" for="SEL_3_01_01">สนใจ</label>
                                    <asp:TextBox runat="server" ID="TXT_3_01_01" CssClass="form-control" placeholder="เหตุผล"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="custom-control custom-radio">
                                    <input type="radio" id="SEL_3_01_02" name="OPTION_3_01" class="custom-control-input">
                                    <label class="custom-control-label" for="SEL_3_01_02">ไม่สนใจ</label>
                                    <asp:TextBox runat="server" ID="TXT_3_01_02" CssClass="form-control" placeholder="เหตุผล"></asp:TextBox>
                                </div>

                            </div>
                        </div>

                        <div class="row" style="margin-bottom: 15px">
                            <div class="col-md-6">
                                8. มหาวิทยาลัยมี<b>ความต้องการ</b>ที่จะเข้าร่วมโครงการเคลื่อนย้ายบุคลากรด้านวิจัยจากมหาวิทยาลัยไปปฎิบัติงานในภาคอุตสาหกรรม (Talent Mobility) หรือไม่  และเพราะเหตุใด (โปรดระบุเหตุผล)
                            </div>
                            <div class="col-md-3">
                                <div class="custom-control custom-radio">
                                    <input type="radio" id="SEL_3_02_01" name="OPTION_3_02" class="custom-control-input">
                                    <label class="custom-control-label" for="SEL_3_02_01">ต้องการ</label>
                                    <asp:TextBox runat="server" ID="TXT_3_02_01" CssClass="form-control" placeholder="เหตุผล"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="custom-control custom-radio">
                                    <input type="radio" id="SEL_3_02_02" name="OPTION_3_02" class="custom-control-input">
                                    <label class="custom-control-label" for="SEL_3_02_02">ไม่ต้องการ</label>
                                    <asp:TextBox runat="server" ID="TXT_3_02_02" CssClass="form-control" placeholder="เหตุผล"></asp:TextBox>
                                </div>

                            </div>
                        </div>

                        <div class="row" style="margin-bottom: 15px">
                            <div class="col-md-6">
                                9. มหาวิทยาลัย<b>ตัดสินใจ</b>ที่จะเข้าร่วมโครงการเคลื่อนย้ายบุคลากรด้านวิจัยจากมหาวิทยาลัยไปปฎิบัติงานในภาคอุตสาหกรรม 
    (Talent Mobility) หรือไม่  และเพราะเหตุใด (โปรดระบุเหตุผล)
                            </div>
                            <div class="col-md-3">
                                <div class="custom-control custom-radio">
                                    <input type="radio" id="SEL_3_03_01" name="OPTION_3_03" class="custom-control-input">
                                    <label class="custom-control-label" for="SEL_3_03_01">เข้าร่วม</label>
                                    <asp:TextBox runat="server" ID="TXT_3_03_01" CssClass="form-control" placeholder="เหตุผล"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="custom-control custom-radio">
                                    <input type="radio" id="SEL_3_03_02" name="OPTION_3_03" class="custom-control-input">
                                    <label class="custom-control-label" for="SEL_3_03_02">ไม่เข้าร่วม</label>
                                    <asp:TextBox runat="server" ID="TXT_3_03_02" CssClass="form-control" placeholder="เหตุผล"></asp:TextBox>
                                </div>

                            </div>
                        </div>

                        <div class="row" style="margin-bottom: 15px">
                            <div class="col-md-6">
                                10. มหาวิทยาลัยมี<b>ประสบการณ์</b>ในโครงการความร่วมมือระหว่างหน่วยงานในภาคอุตสาหกรรมมาก่อนหรือไม่    
                            </div>
                            <div class="col-md-3">
                                <div class="custom-control custom-radio">
                                    <input type="radio" id="SEL_3_04_01" name="OPTION_3_04" class="custom-control-input">
                                    <label class="custom-control-label" for="SEL_3_04_01">มี</label>
                                    <asp:TextBox runat="server" type="number" min="0" ID="TXT_3_04_01" CssClass="form-control" placeholder="เดือน" MaxLength="2"></asp:TextBox>
                                    <asp:TextBox runat="server" type="number" min="0" ID="TXT_3_04_02" CssClass="form-control" placeholder="ปี" MaxLength="2"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="custom-control custom-radio">
                                    <input type="radio" id="SEL_3_04_02" name="OPTION_3_04" class="custom-control-input">
                                    <label class="custom-control-label" for="SEL_3_04_02">ไม่มี</label>
                                </div>

                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                11. ในกรณีที่มหาวิทยาลัยเคยมีประสบการณ์ความร่วมมือกับภาคธุรกิจแล้ว ในอนาคตมหาวิทยาลัยประสงค์จะเข้าร่วมโครงการอีกหรือไม่
                            </div>
                            <div class="col-md-3">
                                <div class="custom-control custom-radio">
                                    <input type="radio" id="SEL_3_05_01" name="OPTION_3_05" class="custom-control-input">
                                    <label class="custom-control-label" for="SEL_3_05_01">มีความประสงค์</label>
                                    <asp:TextBox runat="server" ID="TextBox7" CssClass="form-control" placeholder="เหตุผล"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="custom-control custom-radio">
                                    <input type="radio" id="SEL_3_05_02" name="OPTION_3_01" class="custom-control-input">
                                    <label class="custom-control-label" for="SEL_3_05_02">ไม่มีความประสงค์</label>
                                    <asp:TextBox runat="server" ID="TextBox8" CssClass="form-control" placeholder="เหตุผล"></asp:TextBox>
                                </div>

                            </div>
                        </div>



                    </div>
                </div>
            </div>

            <!-- 4 -->
            <div class="card" style="margin-bottom: 15px">
                <div class="card-header" id="HEAD_4">
                    <h5 class="mb-0"><strong>ส่วนที่ 4</strong> มหาวิทยาลัยของท่านมีความพร้อมต่อปัจจัยต่าง ๆ สำหรับการเข้าร่วมโครงการ Talent Mobility เพียงใด
                    </h5>
                </div>

                <div id="COL_4" class="collapse show" aria-labelledby="HEAD_4" data-parent="#accordion">
                    <div class="card-body">
                        <ul style="list-style: none">
                            <li>1	หมายถึง มีความพร้อมน้อยที่สุด</li>
                            <li>2	หมายถึง มีความพร้อมน้อย</li>
                            <li>3 	หมายถึง มีความพร้อมปานกลาง</li>
                            <li>4	หมายถึง มีความพร้อมมาก</li>
                            <li>5	หมายถึง มีความพร้อมมากที่สุด</li>
                        </ul>

                        <div class="card" style="margin-bottom: 15px">
                            <div class="card-header" id="HEAD_41">
                                <h5 class="mb-0"><strong>หมวด 1</strong> กลุ่มปัจจัยด้านองค์กร และการบริหารจัดการองค์กร (Organizational Factor)
                                </h5>
                            </div>

                            <div id="COL_41" class="collapse show" aria-labelledby="HEAD_41" data-parent="#accordion">
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th scope="col">หัวข้อ</th>
                                                    <th scope="col" width="40%" style="text-align: center;">ระดับความพร้อม (1 = น้อยที่สุด, 5 = มากที่สุด)</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>1.1 มหาวิทยาลัยของท่าน มีนโยบายส่งเสริมให้บุคลากรนักวิจัยไปปฏิบัติงานในภาคอุตสาหกรรม</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_01_01" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_01" value="1" id="SEL_4_1_0101" onchange="changeTheText(this.value,'<%= TXT_4_01_01.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_01" value="2" id="SEL_4_1_0102" onchange="changeTheText(this.value,'<%= TXT_4_01_01.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_01" value="3" id="SEL_4_1_0103" onchange="changeTheText(this.value,'<%= TXT_4_01_01.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_01" value="4" id="SEL_4_1_0104" onchange="changeTheText(this.value,'<%= TXT_4_01_01.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_01" value="5" id="SEL_4_1_0105" onchange="changeTheText(this.value,'<%= TXT_4_01_01.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>1.2 ผู้บริหารมหาวิทยาลัยของท่าน มีทัศนคติที่ดีต่อโครงการ Talent Mobility</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_01_02" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_02" value="1" id="SEL_4_1_0201" onchange="changeTheText(this.value,'<%= TXT_4_01_02.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_02" value="2" id="SEL_4_1_0202" onchange="changeTheText(this.value,'<%= TXT_4_01_02.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_02" value="3" id="SEL_4_1_0203" onchange="changeTheText(this.value,'<%= TXT_4_01_02.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_02" value="4" id="SEL_4_1_0204" onchange="changeTheText(this.value,'<%= TXT_4_01_02.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_02" value="5" id="SEL_4_1_0205" onchange="changeTheText(this.value,'<%= TXT_4_01_02.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>1.3 มหาวิทยาลัยของท่าน มีการจัดตั้งหน่วยงานที่รับผิดชอบโดยตรงต่อโครงการเคลื่อนย้ายบุคลากรด้านวิจัยจากมหาวิทยาลัยไปปฎิบัติงานในภาคอุตสาหกรรมของประเทศไทย (Talent Mobility) เช่น ศูนย์บริการวิชาการ, สำนักงานทรัพย์สินทางปัญญา, ศูนย์แลกเปลี่ยนบุคลากรนักวิจัย เป็นต้น</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_01_03" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_03" value="1" id="SEL_4_1_0301" onchange="changeTheText(this.value,'<%= TXT_4_01_03.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_03" value="2" id="SEL_4_1_0302" onchange="changeTheText(this.value,'<%= TXT_4_01_03.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_03" value="3" id="SEL_4_1_0303" onchange="changeTheText(this.value,'<%= TXT_4_01_03.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_03" value="4" id="SEL_4_1_0304" onchange="changeTheText(this.value,'<%= TXT_4_01_03.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_03" value="5" id="SEL_4_1_0305" onchange="changeTheText(this.value,'<%= TXT_4_01_03.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>1.4 มหาวิทยาลัยของท่าน มีกฎระเบียบที่เอื้ออำนวยให้นักวิจัยออกไปปฏิบัติงานกับอุตสาหกรรม เช่น กำหนดเป็นเวลาการปฏิบัติงาน และนับเป็นภาระงานได้ เป็นต้น</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_1_04" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_04" value="1" id="SEL_4_1_0401" onchange="changeTheText(this.value,'<%= TXT_4_1_04.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_04" value="2" id="SEL_4_1_0402" onchange="changeTheText(this.value,'<%= TXT_4_1_04.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_04" value="3" id="SEL_4_1_0403" onchange="changeTheText(this.value,'<%= TXT_4_1_04.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_04" value="4" id="SEL_4_1_0404" onchange="changeTheText(this.value,'<%= TXT_4_1_04.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_04" value="5" id="SEL_4_1_0405" onchange="changeTheText(this.value,'<%= TXT_4_1_04.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>1.5 มหาวิทยาลัยของท่าน มีนโยบายในการบริหารจัดการภาระการสอน (Teaching Workload) แก่นักวิจัยที่เข้าร่วมโครงการฯ</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_1_05" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_05" value="1" id="SEL_4_1_0501" onchange="changeTheText(this.value,'<%= TXT_4_1_05.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_05" value="2" id="SEL_4_1_0502" onchange="changeTheText(this.value,'<%= TXT_4_1_05.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_05" value="3" id="SEL_4_1_0503" onchange="changeTheText(this.value,'<%= TXT_4_1_05.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_05" value="4" id="SEL_4_1_0504" onchange="changeTheText(this.value,'<%= TXT_4_1_05.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_05" value="5" id="SEL_4_1_0505" onchange="changeTheText(this.value,'<%= TXT_4_1_05.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>1.6 บริษัท/อุตสาหกรรมที่มหาวิทยาลัยของท่านมีโครงการความร่วมมือทางด้านวิจัยด้วย มีนโยบายส่งเสริมให้รับบุคลากรนักวิจัยจากมหาวิทยาลัยเข้าร่วมปฏิบัติงาน</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_1_06" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_06" value="1" id="SEL_4_1_0601" onchange="changeTheText(this.value,'<%= TXT_4_1_06.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_06" value="2" id="SEL_4_1_0602" onchange="changeTheText(this.value,'<%= TXT_4_1_06.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_06" value="3" id="SEL_4_1_0603" onchange="changeTheText(this.value,'<%= TXT_4_1_06.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_06" value="4" id="SEL_4_1_0604" onchange="changeTheText(this.value,'<%= TXT_4_1_06.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_06" value="5" id="SEL_4_1_0605" onchange="changeTheText(this.value,'<%= TXT_4_1_06.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>1.7 ผู้บริหารบริษัท/อุตสาหกรรมที่มหาวิทยาลัยของท่านมีโครงการความร่วมมือทางด้านวิจัยด้วย มีทัศนคติที่ดีต่อโครงการ Talent Mobility</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_1_07" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_07" value="1" id="SEL_4_1_0701" onchange="changeTheText(this.value,'<%= TXT_4_1_07.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_07" value="2" id="SEL_4_1_0702" onchange="changeTheText(this.value,'<%= TXT_4_1_07.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_07" value="3" id="SEL_4_1_0703" onchange="changeTheText(this.value,'<%= TXT_4_1_07.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_07" value="4" id="SEL_4_1_0704" onchange="changeTheText(this.value,'<%= TXT_4_1_07.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_07" value="5" id="SEL_4_1_0705" onchange="changeTheText(this.value,'<%= TXT_4_1_07.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>1.8 โครงสร้างองค์กรของบริษัท/อุตสาหกรรมที่มหาวิทยาลัยของท่านมีโครงการความร่วมมือทางด้านวิจัยด้วย มีหน่วยงานรับผิดชอบด้านวิจัยโดยเฉพาะ เช่น หน่วยวิจัย (Research Unit) หรือศูนย์วิจัย (Research Center) หรือกลุ่มวิจัยสหสาขาวิชาชีพ (Multidisciplinary Research Cluster)</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_1_08" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_08" value="1" id="SEL_4_1_0801" onchange="changeTheText(this.value,'<%= TXT_4_1_08.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_08" value="2" id="SEL_4_1_0802" onchange="changeTheText(this.value,'<%= TXT_4_1_08.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_08" value="3" id="SEL_4_1_0803" onchange="changeTheText(this.value,'<%= TXT_4_1_08.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_08" value="4" id="SEL_4_1_0804" onchange="changeTheText(this.value,'<%= TXT_4_1_08.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_08" value="5" id="SEL_4_1_0805" onchange="changeTheText(this.value,'<%= TXT_4_1_08.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>1.9 บริษัท/อุตสาหกรรมที่มหาวิทยาลัยของท่านมีโครงการความร่วมมือทางด้านวิจัยด้วย มีการตั้งหน่วยงานสนับสนุนกลยุทธ์ด้านวิจัยและนวัตกรรมร่วมกับสถาบันการศึกษา เช่น หน่วยงานพัฒนาองค์กรด้านการวิจัยและนวัตกรรม (Research Development Unit), หน่วยงานเสริมสร้างความร่วมมือในการวิจัยร่วมกับมหาวิทยาลัย (UIC : University Industry Collaboration Unit) เป็นต้น</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_1_09" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_09" value="1" id="SEL_4_1_0901" onchange="changeTheText(this.value,'<%= TXT_4_1_09.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_09" value="2" id="SEL_4_1_0902" onchange="changeTheText(this.value,'<%= TXT_4_1_09.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_09" value="3" id="SEL_4_1_0903" onchange="changeTheText(this.value,'<%= TXT_4_1_09.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_09" value="4" id="SEL_4_1_0904" onchange="changeTheText(this.value,'<%= TXT_4_1_09.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_09" value="5" id="SEL_4_1_0905" onchange="changeTheText(this.value,'<%= TXT_4_1_09.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>1.10 บริษัท/อุตสาหกรรมที่มหาวิทยาลัยของท่านมีโครงการความร่วมมือทางด้านวิจัยด้วย มีการจัดตั้งหน่วยงานที่รับผิดชอบโดยตรงต่อโครงการเคลื่อนย้ายบุคลากรด้านวิจัยจากมหาวิทยาลัยไปปฎิบัติงานในภาคอุตสาหกรรมของประเทศไทย (Talent Mobility) เช่น หน่วยงานทรัพยากรบุคคล, ศูนย์แลกเปลี่ยนบุคลากรนักวิจัย เป็นต้น</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_1_10" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_10" value="1" id="SEL_4_1_1001" onchange="changeTheText(this.value,'<%= TXT_4_1_10.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_10" value="2" id="SEL_4_1_1002" onchange="changeTheText(this.value,'<%= TXT_4_1_10.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_10" value="3" id="SEL_4_1_1003" onchange="changeTheText(this.value,'<%= TXT_4_1_10.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_10" value="4" id="SEL_4_1_1004" onchange="changeTheText(this.value,'<%= TXT_4_1_10.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_10" value="5" id="SEL_4_1_1005" onchange="changeTheText(this.value,'<%= TXT_4_1_10.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>1.11 บริษัท/อุตสาหกรรมที่มหาวิทยาลัยของท่านมีโครงการความร่วมมือทางด้านวิจัยด้วย มีกฎระเบียบที่เอื้ออำนวยให้นักวิจัยจากมหาวิทยาลัยเข้าร่วมปฏิบัติงาน</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_1_11" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_11" value="1" id="SEL_4_1_1101" onchange="changeTheText(this.value,'<%= TXT_4_1_11.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_11" value="2" id="SEL_4_1_1102" onchange="changeTheText(this.value,'<%= TXT_4_1_11.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_11" value="3" id="SEL_4_1_1103" onchange="changeTheText(this.value,'<%= TXT_4_1_11.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_11" value="4" id="SEL_4_1_1104" onchange="changeTheText(this.value,'<%= TXT_4_1_11.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_11" value="5" id="SEL_4_1_1105" onchange="changeTheText(this.value,'<%= TXT_4_1_11.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>1.12 บริษัท/อุตสาหกรรมที่มหาวิทยาลัยของท่านมีโครงการความร่วมมือทางด้านวิจัยด้วย มีความพร้อมเรื่องสถานที่ตั้งและสิ่งอำนวยความสะดวกต่าง ๆ เช่น ห้องแล็บ เครื่องมือ อุปกรณ์ ขององค์กร/บริษัท/หน่วยงานที่รับผิดชอบโครงการ Talent Mobility</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_1_12" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_12" value="1" id="SEL_4_1_1201" onchange="changeTheText(this.value,'<%= TXT_4_1_12.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_12" value="2" id="SEL_4_1_1202" onchange="changeTheText(this.value,'<%= TXT_4_1_12.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_12" value="3" id="SEL_4_1_1203" onchange="changeTheText(this.value,'<%= TXT_4_1_12.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_12" value="4" id="SEL_4_1_1204" onchange="changeTheText(this.value,'<%= TXT_4_1_12.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_12" value="5" id="SEL_4_1_1205" onchange="changeTheText(this.value,'<%= TXT_4_1_12.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>1.13 นโยบายทางด้านทรัพย์สินทางปัญญาของบริษัท/อุตสาหกรรมที่มหาวิทยาลัยของท่านมีโครงการความร่วมมือทางด้านวิจัยด้วย มีความพร้อมต่อการเข้าร่วมโครงการ Talent Mobility ของมหาวิทยาลัย</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_1_13" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_13" value="1" id="SEL_4_1_1301" onchange="changeTheText(this.value,'<%= TXT_4_1_13.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_13" value="2" id="SEL_4_1_1302" onchange="changeTheText(this.value,'<%= TXT_4_1_13.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_13" value="3" id="SEL_4_1_1303" onchange="changeTheText(this.value,'<%= TXT_4_1_13.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_13" value="4" id="SEL_4_1_1304" onchange="changeTheText(this.value,'<%= TXT_4_1_13.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_1_13" value="5" id="SEL_4_1_1305" onchange="changeTheText(this.value,'<%= TXT_4_1_13.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>1.14 การเข้าร่วมโครงการ Talent Mobility ส่งผลต่อโอกาสของนักวิจัยที่เข้าร่วมโครงการแลกเปลี่ยนบุคลากรกับมหาวิทยาลัยของท่าน ในการนำงานวิจัยออกสู่ตลาด</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_4_16" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_16" value="1" id="SEL_4_4_1601" onchange="changeTheText(this.value,'<%= TXT_4_4_16.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_16" value="2" id="SEL_4_4_1602" onchange="changeTheText(this.value,'<%= TXT_4_4_16.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_16" value="3" id="SEL_4_4_1603" onchange="changeTheText(this.value,'<%= TXT_4_4_16.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_16" value="4" id="SEL_4_4_1604" onchange="changeTheText(this.value,'<%= TXT_4_4_16.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_16" value="5" id="SEL_4_4_1605" onchange="changeTheText(this.value,'<%= TXT_4_4_16.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>1.15 การเข้าร่วมโครงการ Talent Mobility ทำให้นักวิจัยที่เข้าร่วมโครงการแลกเปลี่ยนบุคลากรกับมหาวิทยาลัยของท่าน ได้ความรู้ทางด้านการตลาดที่เกี่ยวกับงานวิจัยเพิ่มขึ้น</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_4_17" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_17" value="1" id="SEL_4_4_1701" onchange="changeTheText(this.value,'<%= TXT_4_4_17.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_17" value="2" id="SEL_4_4_1702" onchange="changeTheText(this.value,'<%= TXT_4_4_17.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_17" value="3" id="SEL_4_4_1703" onchange="changeTheText(this.value,'<%= TXT_4_4_17.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_17" value="4" id="SEL_4_4_1704" onchange="changeTheText(this.value,'<%= TXT_4_4_17.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_17" value="5" id="SEL_4_4_1705" onchange="changeTheText(this.value,'<%= TXT_4_4_17.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>1.16 การเข้าร่วมโครงการ Talent Mobility ทำให้นักวิจัยที่เข้าร่วมโครงการแลกเปลี่ยนบุคลากรกับมหาวิทยาลัยของท่าน รับรู้โอกาสในการเปลี่ยนงานวิจัยจาก Lab Scale ให้เป็น Industrial Scale ได้มากขึ้น</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_4_18" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_18" value="1" id="SEL_4_4_1801" onchange="changeTheText(this.value,'<%= TXT_4_4_18.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_18" value="2" id="SEL_4_4_1802" onchange="changeTheText(this.value,'<%= TXT_4_4_18.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_18" value="3" id="SEL_4_4_1803" onchange="changeTheText(this.value,'<%= TXT_4_4_18.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_18" value="4" id="SEL_4_4_1804" onchange="changeTheText(this.value,'<%= TXT_4_4_18.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_18" value="5" id="SEL_4_4_1805" onchange="changeTheText(this.value,'<%= TXT_4_4_18.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>1.17 นักวิจัยที่เข้าร่วมโครงการแลกเปลี่ยนบุคลากรกับมหาวิทยาลัยของท่าน ตระหนักว่างานวิจัยเชิงพาณิชย์มีผลกระทบต่อสังคม (Social Impact) ในวงกว้าง</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_4_19" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_19" value="1" id="SEL_4_4_1901" onchange="changeTheText(this.value,'<%= TXT_4_4_19.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_19" value="2" id="SEL_4_4_1902" onchange="changeTheText(this.value,'<%= TXT_4_4_19.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_19" value="3" id="SEL_4_4_1903" onchange="changeTheText(this.value,'<%= TXT_4_4_19.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_19" value="4" id="SEL_4_4_1904" onchange="changeTheText(this.value,'<%= TXT_4_4_19.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_19" value="5" id="SEL_4_4_1905" onchange="changeTheText(this.value,'<%= TXT_4_4_19.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>1.18 นักวิจัยที่เข้าร่วมโครงการแลกเปลี่ยนบุคลากรกับมหาวิทยาลัยของท่าน ตระหนักว่ากระบวนการถ่ายทอดเทคโนโลยี  การถ่ายทอดองค์ความรู้ของมหาวิทยาลัยสู่ภาคอุตสาหกรรม (Knowledge Transfer) และการแลกเปลี่ยนความรู้ (Knowledge Exchange) ผ่านรูปแบบโครงการ Talent Mobility มีประสิทธิภาพสูงกว่าการถ่ายทอดองค์ความรู้ในรูปแบบอื่น</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_4_20" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_20" value="1" id="SEL_4_4_2001" onchange="changeTheText(this.value,'<%= TXT_4_4_20.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_20" value="2" id="SEL_4_4_2002" onchange="changeTheText(this.value,'<%= TXT_4_4_20.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_20" value="3" id="SEL_4_4_2003" onchange="changeTheText(this.value,'<%= TXT_4_4_20.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_20" value="4" id="SEL_4_4_2004" onchange="changeTheText(this.value,'<%= TXT_4_4_20.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_20" value="5" id="SEL_4_4_2005" onchange="changeTheText(this.value,'<%= TXT_4_4_20.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>1.19 นักวิจัยที่เข้าร่วมโครงการแลกเปลี่ยนบุคลากรกับมหาวิทยาลัยของท่าน ตระหนักว่ากระบวนการถ่ายทอดเทคโนโลยีผ่านรูปแบบโครงการ Talent Mobility มีผลกระทบต่อสังคม (Social Impact) ในวงกว้าง</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_4_21" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_21" value="1" id="SEL_4_4_2101" onchange="changeTheText(this.value,'<%= TXT_4_4_21.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_21" value="2" id="SEL_4_4_2102" onchange="changeTheText(this.value,'<%= TXT_4_4_21.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_21" value="3" id="SEL_4_4_2103" onchange="changeTheText(this.value,'<%= TXT_4_4_21.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_21" value="4" id="SEL_4_4_2104" onchange="changeTheText(this.value,'<%= TXT_4_4_21.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_21" value="5" id="SEL_4_4_2105" onchange="changeTheText(this.value,'<%= TXT_4_4_21.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>1.20 นักวิจัยที่เข้าร่วมโครงการแลกเปลี่ยนบุคลากรกับมหาวิทยาลัยของท่าน ตระหนักว่ากระบวนการถ่ายทอดเทคโนโลยีผ่านรูปแบบโครงการ Talent Mobility จะทำให้การพัฒนานวัตกรรม อุตสาหกรรม และเศรษฐกิจของประเทศมีประสิทธิภาพมากขึ้น</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_4_22" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_22" value="1" id="SEL_4_4_2201" onchange="changeTheText(this.value,'<%= TXT_4_4_22.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_22" value="2" id="SEL_4_4_2202" onchange="changeTheText(this.value,'<%= TXT_4_4_22.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_22" value="3" id="SEL_4_4_2203" onchange="changeTheText(this.value,'<%= TXT_4_4_22.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_22" value="4" id="SEL_4_4_2204" onchange="changeTheText(this.value,'<%= TXT_4_4_22.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_22" value="5" id="SEL_4_4_2205" onchange="changeTheText(this.value,'<%= TXT_4_4_22.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="card" style="margin-bottom: 15px">
                            <div class="card-header" id="HEAD_42">
                                <h5 class="mb-0"><strong>หมวด 2</strong> กลุ่มปัจจัยด้านกระบวนการทำงาน (Process Factor)
                                </h5>
                            </div>

                            <div id="COL_42" class="collapse show" aria-labelledby="HEAD_42" data-parent="#accordion">
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th scope="col">หัวข้อ</th>
                                                    <th scope="col" width="40%" style="text-align: center;">ระดับความพร้อม (1 = น้อยที่สุด, 5 = มากที่สุด)</th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                                <tr>
                                                    <td>2.1 มหาวิทยาลัยของท่าน มีการกำหนดกระบวนการทำงานที่สั้น กระชับ สะดวกรวดเร็วและมีความง่าย (Simplicity) ต่อระบบการบริหารจัดการโครงการ Talent Mobility</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_2_1" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_2_1" value="1" id="SEL_4_2_101" onchange="changeTheText(this.value,'<%= TXT_4_2_1.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_2_1" value="2" id="SEL_4_2_102" onchange="changeTheText(this.value,'<%= TXT_4_2_1.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_2_1" value="3" id="SEL_4_2_103" onchange="changeTheText(this.value,'<%= TXT_4_2_1.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_2_1" value="4" id="SEL_4_2_104" onchange="changeTheText(this.value,'<%= TXT_4_2_1.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_2_1" value="5" id="SEL_4_2_105" onchange="changeTheText(this.value,'<%= TXT_4_2_1.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>2.2 มหาวิทยาลัยของท่าน มีการกำหนดกระบวนการทำงานที่มีความยืดหยุ่น (Flexibility) ในระบบการบริหารจัดการ และผู้วิจัยควรสามารถเลือกปรับเปลี่ยนกระบวนการการทำวิจัย ได้ตามความเหมาะสม</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_2_2" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_2_2" value="1" id="SEL_4_2_201" onchange="changeTheText(this.value,'<%= TXT_4_2_2.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_2_2" value="2" id="SEL_4_2_202" onchange="changeTheText(this.value,'<%= TXT_4_2_2.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_2_2" value="3" id="SEL_4_2_203" onchange="changeTheText(this.value,'<%= TXT_4_2_2.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_2_2" value="4" id="SEL_4_2_204" onchange="changeTheText(this.value,'<%= TXT_4_2_2.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_2_2" value="5" id="SEL_4_2_205" onchange="changeTheText(this.value,'<%= TXT_4_2_2.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>2.3 บริษัท/อุตสาหกรรมที่มหาวิทยาลัยของท่านมีโครงการความร่วมมือทางด้านวิจัยด้วย มีการกำหนดกระบวนการทำงานที่มีความยืดหยุ่น (Flexibility) ในระบบการบริหารจัดการ เช่น อาจจะมีผู้มีอำนาจลงนามได้หลายมหาวิทยาลัย หรือมีหน่วยงานที่สามารถปฏิบัติงานได้ในหลายระดับ เป็นต้น</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_2_3" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_2_3" value="1" id="SEL_4_2_301" onchange="changeTheText(this.value,'<%= TXT_4_2_3.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_2_3" value="2" id="SEL_4_2_302" onchange="changeTheText(this.value,'<%= TXT_4_2_3.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_2_3" value="3" id="SEL_4_2_303" onchange="changeTheText(this.value,'<%= TXT_4_2_3.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_2_3" value="4" id="SEL_4_2_304" onchange="changeTheText(this.value,'<%= TXT_4_2_3.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_2_3" value="5" id="SEL_4_2_305" onchange="changeTheText(this.value,'<%= TXT_4_2_3.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>


                                                <tr>
                                                    <td>2.4 นักวิจัยจากมหาวิทยาลัยของท่าน สามารถเลือกปรับเปลี่ยนกระบวนการการทำวิจัยได้ตามความเหมาะสมเมื่อเข้าร่วมโครงการวิจัยกับบริษัท/อุตสาหกรรมที่มหาวิทยาลัยของท่านมีโครงการความร่วมมือทางด้านวิจัยด้วย</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_2_4" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_2_4" value="1" id="SEL_4_2_401" onchange="changeTheText(this.value,'<%= TXT_4_2_4.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_2_4" value="2" id="SEL_4_2_402" onchange="changeTheText(this.value,'<%= TXT_4_2_4.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_2_4" value="3" id="SEL_4_2_403" onchange="changeTheText(this.value,'<%= TXT_4_2_4.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_2_4" value="4" id="SEL_4_2_404" onchange="changeTheText(this.value,'<%= TXT_4_2_4.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_2_4" value="5" id="SEL_4_2_405" onchange="changeTheText(this.value,'<%= TXT_4_2_4.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>


                                                <tr>
                                                    <td>2.5 นักวิจัยที่เข้าร่วมโครงการแลกเปลี่ยนบุคลากรกับมหาวิทยาลัยของท่าน รับรู้ถึงการสนับสนุนจากรัฐบาลและหน่วยงานภายนอกมหาวิทยาลัย ที่มีต่อโครงการ Talent Mobility เช่น งบประมาณ ขั้นตอนการดำเนินการขออนุมัติจากต้นสังกัด และแหล่งเงินทุนสนับสนุนการทำงานวิจัย เป็นต้น</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_4_23" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_23" value="1" id="SEL_4_4_2301" onchange="changeTheText(this.value,'<%= TXT_4_4_23.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_23" value="2" id="SEL_4_4_2302" onchange="changeTheText(this.value,'<%= TXT_4_4_23.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_23" value="3" id="SEL_4_4_2303" onchange="changeTheText(this.value,'<%= TXT_4_4_23.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_23" value="4" id="SEL_4_4_2304" onchange="changeTheText(this.value,'<%= TXT_4_4_23.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_23" value="5" id="SEL_4_4_2305" onchange="changeTheText(this.value,'<%= TXT_4_4_23.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>2.6 นักวิจัยที่เข้าร่วมโครงการแลกเปลี่ยนบุคลากรกับมหาวิทยาลัยของท่าน ตระหนักว่ารัฐบาลให้ความสำคัญแก่งานวิจัยเชิงพาณิชย์ โดยการให้งบประมาณสนับสนุนและประชาสัมพันธ์ผ่านสื่อต่าง ๆ ให้เป็นที่ทราบโดยทั่วกัน </td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_4_24" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_24" value="1" id="SEL_4_4_2401" onchange="changeTheText(this.value,'<%= TXT_4_4_24.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_24" value="2" id="SEL_4_4_2402" onchange="changeTheText(this.value,'<%= TXT_4_4_24.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_24" value="3" id="SEL_4_4_2403" onchange="changeTheText(this.value,'<%= TXT_4_4_24.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_24" value="4" id="SEL_4_4_2404" onchange="changeTheText(this.value,'<%= TXT_4_4_24.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_24" value="5" id="SEL_4_4_2405" onchange="changeTheText(this.value,'<%= TXT_4_4_24.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>


                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="card" style="margin-bottom: 15px">
                            <div class="card-header" id="HEAD_43">
                                <h5 class="mb-0"><strong>หมวด 3</strong> กลุ่มปัจจัยภายในองค์กร (Internal Factor)
                                </h5>
                            </div>

                            <div id="COL_43" class="collapse show" aria-labelledby="HEAD_43" data-parent="#accordion">
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th scope="col">หัวข้อ</th>
                                                    <th scope="col" width="40%" style="text-align: center;">ระดับความพร้อม (1 = น้อยที่สุด, 5 = มากที่สุด)</th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                                <tr>
                                                    <td>3.1 มหาวิทยาลัยของท่าน มีโครงสร้างและวัฒนธรรมองค์กร (Organization’s Structure and Culture) ที่สนับสนุนและส่งเสริมการทำวิจัย</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_3_1" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_3_1" value="1" id="SEL_4_3_101" onchange="changeTheText(this.value,'<%= TXT_4_3_1.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_3_1" value="2" id="SEL_4_3_102" onchange="changeTheText(this.value,'<%= TXT_4_3_1.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_3_1" value="3" id="SEL_4_3_103" onchange="changeTheText(this.value,'<%= TXT_4_3_1.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_3_1" value="4" id="SEL_4_3_104" onchange="changeTheText(this.value,'<%= TXT_4_3_1.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_3_1" value="5" id="SEL_4_3_105" onchange="changeTheText(this.value,'<%= TXT_4_3_1.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>3.2 มหาวิทยาลัยของท่าน มีทรัพยากร (Resources) ที่ครอบคลุมถึงงบประมาณ โครงสร้างพื้นฐาน เช่น ห้องแล็บ มีความพร้อม</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_3_2" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_3_2" value="1" id="SEL_4_3_201" onchange="changeTheText(this.value,'<%= TXT_4_3_2.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_3_2" value="2" id="SEL_4_3_202" onchange="changeTheText(this.value,'<%= TXT_4_3_2.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_3_2" value="3" id="SEL_4_3_203" onchange="changeTheText(this.value,'<%= TXT_4_3_2.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_3_2" value="4" id="SEL_4_3_204" onchange="changeTheText(this.value,'<%= TXT_4_3_2.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_3_2" value="5" id="SEL_4_3_205" onchange="changeTheText(this.value,'<%= TXT_4_3_2.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>3.3 มหาวิทยาลัยของท่าน มีระบบนักวิจัยพี่เลี้ยง (Mentoring) ที่มีประสบการณ์ในการทำงานร่วมกับภาคเอกชน ซึ่งมีความสำคัญต่อการทำวิจัยร่วมกับอุตสาหกรรม</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_3_3" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_3_3" value="1" id="SEL_4_3_301" onchange="changeTheText(this.value,'<%= TXT_4_3_3.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_3_3" value="2" id="SEL_4_3_302" onchange="changeTheText(this.value,'<%= TXT_4_3_3.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_3_3" value="3" id="SEL_4_3_303" onchange="changeTheText(this.value,'<%= TXT_4_3_3.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_3_3" value="4" id="SEL_4_3_304" onchange="changeTheText(this.value,'<%= TXT_4_3_3.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_3_3" value="5" id="SEL_4_3_305" onchange="changeTheText(this.value,'<%= TXT_4_3_3.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>3.4 มหาวิทยาลัยของท่าน มีสภาพแวดล้อมที่เอื้ออำนวยต่อการทำงาน (Work Environment) ในการทำวิจัยร่วมกับอุตสาหกรรม/ภาคเอกชน</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_3_4" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_3_4" value="1" id="SEL_4_3_401" onchange="changeTheText(this.value,'<%= TXT_4_3_4.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_3_4" value="2" id="SEL_4_3_402" onchange="changeTheText(this.value,'<%= TXT_4_3_4.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_3_4" value="3" id="SEL_4_3_403" onchange="changeTheText(this.value,'<%= TXT_4_3_4.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_3_4" value="4" id="SEL_4_3_404" onchange="changeTheText(this.value,'<%= TXT_4_3_4.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_3_4" value="5" id="SEL_4_3_405" onchange="changeTheText(this.value,'<%= TXT_4_3_4.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>3.5 บริษัท/อุตสาหกรรมที่มหาวิทยาลัยของท่านมีโครงการความร่วมมือทางด้านวิจัยด้วย มีโครงสร้างและวัฒนธรรมองค์กร (Organization’s Structure and Culture) ที่สนับสนุนและส่งเสริมการทำวิจัย</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_3_5" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_3_5" value="1" id="SEL_4_3_501" onchange="changeTheText(this.value,'<%= TXT_4_3_5.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_3_5" value="2" id="SEL_4_3_502" onchange="changeTheText(this.value,'<%= TXT_4_3_5.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_3_5" value="3" id="SEL_4_3_503" onchange="changeTheText(this.value,'<%= TXT_4_3_5.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_3_5" value="4" id="SEL_4_3_504" onchange="changeTheText(this.value,'<%= TXT_4_3_5.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_3_5" value="5" id="SEL_4_3_505" onchange="changeTheText(this.value,'<%= TXT_4_3_5.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>3.6 บริษัท/อุตสาหกรรมที่มหาวิทยาลัยของท่านมีโครงการความร่วมมือทางด้านวิจัยด้วย มีทรัพยากร (Resources) ของบริษัท ครอบคลุมถึงงบประมาณ โครงสร้างพื้นฐาน เช่น ห้องแล็บ มีความพร้อม</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_3_6" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_3_6" value="1" id="SEL_4_3_601" onchange="changeTheText(this.value,'<%= TXT_4_3_6.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_3_6" value="2" id="SEL_4_3_602" onchange="changeTheText(this.value,'<%= TXT_4_3_6.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_3_6" value="3" id="SEL_4_3_603" onchange="changeTheText(this.value,'<%= TXT_4_3_6.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_3_6" value="4" id="SEL_4_3_604" onchange="changeTheText(this.value,'<%= TXT_4_3_6.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_3_6" value="5" id="SEL_4_3_605" onchange="changeTheText(this.value,'<%= TXT_4_3_6.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>3.7 บริษัท/อุตสาหกรรมที่มหาวิทยาลัยของท่านมีโครงการความร่วมมือทางด้านวิจัยด้วย มีสภาพแวดล้อมที่เอื้ออำนวยต่อการทำงาน (Work Environment) ของบริษัท/อุตสาหกรรมในการทำวิจัยร่วมกับมหาวิทยาลัย/ภาครัฐ</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_3_7" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_3_7" value="1" id="SEL_4_3_701" onchange="changeTheText(this.value,'<%= TXT_4_3_7.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_3_7" value="2" id="SEL_4_3_702" onchange="changeTheText(this.value,'<%= TXT_4_3_7.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_3_7" value="3" id="SEL_4_3_703" onchange="changeTheText(this.value,'<%= TXT_4_3_7.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_3_7" value="4" id="SEL_4_3_704" onchange="changeTheText(this.value,'<%= TXT_4_3_7.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_3_7" value="5" id="SEL_4_3_705" onchange="changeTheText(this.value,'<%= TXT_4_3_7.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>



                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="card" style="margin-bottom: 15px">
                            <div class="card-header" id="HEAD_44">
                                <h5 class="mb-0"><strong>หมวด 4</strong> กลุ่มปัจจัยด้านทรัพยากรบุคคล (Human Resources Factor)
                                </h5>
                            </div>

                            <div id="COL_44" class="collapse show" aria-labelledby="HEAD_44" data-parent="#accordion">
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th scope="col">หัวข้อ</th>
                                                    <th scope="col" width="40%" style="text-align: center;">ระดับความพร้อม (1 = น้อยที่สุด, 5 = มากที่สุด)</th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                                <tr>
                                                    <td>4.1 มหาวิทยาลัยของท่าน อนุญาตให้หัวหน้าโครงการสามารถปรับเปลี่ยนทีมงานวิจัยได้ (Flexibility in Team Setting) ตามความเหมาะสม</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_4_1" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_1" value="1" id="SEL_4_4_101" onchange="changeTheText(this.value,'<%= TXT_4_4_1.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_1" value="2" id="SEL_4_4_102" onchange="changeTheText(this.value,'<%= TXT_4_4_1.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_1" value="3" id="SEL_4_4_103" onchange="changeTheText(this.value,'<%= TXT_4_4_1.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_1" value="4" id="SEL_4_4_104" onchange="changeTheText(this.value,'<%= TXT_4_4_1.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_1" value="5" id="SEL_4_4_105" onchange="changeTheText(this.value,'<%= TXT_4_4_1.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>4.2 มหาวิทยาลัยของท่าน มีความร่วมมือกับภาคอุตสาหกรรมในด้านการจัดอบรมเทคนิคการทำวิจัยร่วมกับอุตสาหกรรมหรือหน่วยงานภายนอก (Research Technique Training) แก่บุคลากรนักวิจัย</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_4_2" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_2" value="1" id="SEL_4_4_201" onchange="changeTheText(this.value,'<%= TXT_4_4_2.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_2" value="2" id="SEL_4_4_202" onchange="changeTheText(this.value,'<%= TXT_4_4_2.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_2" value="3" id="SEL_4_4_203" onchange="changeTheText(this.value,'<%= TXT_4_4_2.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_2" value="4" id="SEL_4_4_204" onchange="changeTheText(this.value,'<%= TXT_4_4_2.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_2" value="5" id="SEL_4_4_205" onchange="changeTheText(this.value,'<%= TXT_4_4_2.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>4.3 มหาวิทยาลัยของท่าน มีบุคลากรที่รับผิดชอบโครงการ Talent Mobility โดยเฉพาะ ในระดับของคณะหรือระดับมหาวิทยาลัย ที่มีอำนาจการจัดการและตัดสินใจได้อย่างรวดเร็ว เช่น สายการบังคับบัญชาขึ้นตรงกับอธิการบดี เป็นต้น</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_4_3" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_3" value="1" id="SEL_4_4_301" onchange="changeTheText(this.value,'<%= TXT_4_4_3.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_3" value="2" id="SEL_4_4_302" onchange="changeTheText(this.value,'<%= TXT_4_4_3.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_3" value="3" id="SEL_4_4_303" onchange="changeTheText(this.value,'<%= TXT_4_4_3.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_3" value="4" id="SEL_4_4_304" onchange="changeTheText(this.value,'<%= TXT_4_4_3.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_3" value="5" id="SEL_4_4_305" onchange="changeTheText(this.value,'<%= TXT_4_4_3.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>4.4 มหาวิทยาลัยของท่าน มีการบริหารจัดการทรัพยากรบุคคล (Human Resources Management) รวมถึงมีการบริหารจัดการภาระงานต่าง ๆ เช่น ภาระการสอน (Teaching Workload) และภาระงานด้านบริหาร (Administrative Workload) เพื่อสนับสนุนการทำวิจัยร่วมกับอุตสาหกรรมหรือหน่วยงานภายนอกได้อย่างเหมาะสม</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_4_4" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_4" value="1" id="SEL_4_4_401" onchange="changeTheText(this.value,'<%= TXT_4_4_4.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_4" value="2" id="SEL_4_4_402" onchange="changeTheText(this.value,'<%= TXT_4_4_4.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_4" value="3" id="SEL_4_4_403" onchange="changeTheText(this.value,'<%= TXT_4_4_4.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_4" value="4" id="SEL_4_4_404" onchange="changeTheText(this.value,'<%= TXT_4_4_4.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_4" value="5" id="SEL_4_4_405" onchange="changeTheText(this.value,'<%= TXT_4_4_4.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>4.5 บริษัท/อุตสาหกรรมที่มหาวิทยาลัยของท่านมีโครงการความร่วมมือทางด้านวิจัยด้วย อนุญาตให้หัวหน้าโครงการสามารถปรับเปลี่ยนทีมงานวิจัยได้ (Flexibility in Team Setting) ตามความเหมาะสม</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_4_5" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_5" value="1" id="SEL_4_4_501" onchange="changeTheText(this.value,'<%= TXT_4_4_5.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_5" value="2" id="SEL_4_4_502" onchange="changeTheText(this.value,'<%= TXT_4_4_5.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_5" value="3" id="SEL_4_4_503" onchange="changeTheText(this.value,'<%= TXT_4_4_5.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_5" value="4" id="SEL_4_4_504" onchange="changeTheText(this.value,'<%= TXT_4_4_5.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_5" value="5" id="SEL_4_4_505" onchange="changeTheText(this.value,'<%= TXT_4_4_5.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>4.6 บริษัท/อุตสาหกรรมที่มหาวิทยาลัยของท่านมีโครงการความร่วมมือทางด้านวิจัยด้วย มีผู้รับผิดชอบในการดูแลการทำงานของนักวิจัยจากมหาวิทยาลัยหรือหน่วยงานภาครัฐ (นักวิจัยพี่เลี้ยง/Mentor)</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_4_6" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_6" value="1" id="SEL_4_4_601" onchange="changeTheText(this.value,'<%= TXT_4_4_6.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_6" value="2" id="SEL_4_4_602" onchange="changeTheText(this.value,'<%= TXT_4_4_6.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_6" value="3" id="SEL_4_4_603" onchange="changeTheText(this.value,'<%= TXT_4_4_6.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_6" value="4" id="SEL_4_4_604" onchange="changeTheText(this.value,'<%= TXT_4_4_6.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_6" value="5" id="SEL_4_4_605" onchange="changeTheText(this.value,'<%= TXT_4_4_6.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>4.7 บริษัท/อุตสาหกรรมที่มหาวิทยาลัยของท่านมีโครงการความร่วมมือทางด้านวิจัยด้วย มีบุคลากรที่รับผิดชอบโครงการ Talent Mobility โดยเฉพาะ ในระดับที่สามารถตัดสินใจได้อย่างรวดเร็ว เช่น สายการบังคับบัญชาขึ้นตรงกับ CEO เป็นต้น</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_4_7" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_7" value="1" id="SEL_4_4_701" onchange="changeTheText(this.value,'<%= TXT_4_4_7.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_7" value="2" id="SEL_4_4_702" onchange="changeTheText(this.value,'<%= TXT_4_4_7.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_7" value="3" id="SEL_4_4_703" onchange="changeTheText(this.value,'<%= TXT_4_4_7.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_7" value="4" id="SEL_4_4_704" onchange="changeTheText(this.value,'<%= TXT_4_4_7.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_7" value="5" id="SEL_4_4_705" onchange="changeTheText(this.value,'<%= TXT_4_4_7.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>4.8 บริษัท/อุตสาหกรรมที่มหาวิทยาลัยของท่านมีโครงการความร่วมมือทางด้านวิจัยด้วย มีการบริหารจัดการทรัพยากรบุคคล (Human Resources Management) รวมถึงมีการบริหารจัดการภาระงานต่าง ๆ เพื่อสนับสนุนทำการวิจัยร่วมกับมหาวิทยาลัยหรือหน่วยงานภาครัฐได้อย่างเหมาะสม</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_4_8" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_8" value="1" id="SEL_4_4_801" onchange="changeTheText(this.value,'<%= TXT_4_4_8.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_8" value="2" id="SEL_4_4_802" onchange="changeTheText(this.value,'<%= TXT_4_4_8.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_8" value="3" id="SEL_4_4_803" onchange="changeTheText(this.value,'<%= TXT_4_4_8.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_8" value="4" id="SEL_4_4_804" onchange="changeTheText(this.value,'<%= TXT_4_4_8.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_8" value="5" id="SEL_4_4_805" onchange="changeTheText(this.value,'<%= TXT_4_4_8.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>4.9 การเข้าร่วมโครงการ Talent Mobility ส่งผลต่อค่าตอบแทนที่สูงขึ้นของนักวิจัยที่เข้าร่วมโครงการแลกเปลี่ยนบุคลากรกับมหาวิทยาลัยของท่าน</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_4_9" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_9" value="1" id="SEL_4_4_901" onchange="changeTheText(this.value,'<%= TXT_4_4_9.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_9" value="2" id="SEL_4_4_902" onchange="changeTheText(this.value,'<%= TXT_4_4_9.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_9" value="3" id="SEL_4_4_903" onchange="changeTheText(this.value,'<%= TXT_4_4_9.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_9" value="4" id="SEL_4_4_904" onchange="changeTheText(this.value,'<%= TXT_4_4_9.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_9" value="5" id="SEL_4_4_905" onchange="changeTheText(this.value,'<%= TXT_4_4_9.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>4.10 การเข้าร่วมโครงการ Talent Mobility ส่งผลต่อความก้าวหน้าและตำแหน่งทางวิชาการของนักวิจัยที่เข้าร่วมโครงการแลกเปลี่ยนบุคลากรกับมหาวิทยาลัยของท่าน</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_4_10" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_10" value="1" id="SEL_4_4_1001" onchange="changeTheText(this.value,'<%= TXT_4_4_10.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_10" value="2" id="SEL_4_4_1002" onchange="changeTheText(this.value,'<%= TXT_4_4_10.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_10" value="3" id="SEL_4_4_1003" onchange="changeTheText(this.value,'<%= TXT_4_4_10.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_10" value="4" id="SEL_4_4_1004" onchange="changeTheText(this.value,'<%= TXT_4_4_10.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_10" value="5" id="SEL_4_4_1005" onchange="changeTheText(this.value,'<%= TXT_4_4_10.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>4.11 การเข้าร่วมโครงการ Talent Mobility ส่งผลต่อชื่อเสียงของนักวิจัยที่เข้าร่วมโครงการแลกเปลี่ยนบุคลากรกับมหาวิทยาลัยของท่าน</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_4_11" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_11" value="1" id="SEL_4_4_1101" onchange="changeTheText(this.value,'<%= TXT_4_4_11.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_11" value="2" id="SEL_4_4_1102" onchange="changeTheText(this.value,'<%= TXT_4_4_11.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_11" value="3" id="SEL_4_4_1103" onchange="changeTheText(this.value,'<%= TXT_4_4_11.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_11" value="4" id="SEL_4_4_1104" onchange="changeTheText(this.value,'<%= TXT_4_4_11.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_11" value="5" id="SEL_4_4_1105" onchange="changeTheText(this.value,'<%= TXT_4_4_11.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>4.12 การเข้าร่วมโครงการ Talent Mobility ส่งผลต่อการยอมรับของหน่วยงานภายนอก ภาคอุตสาหกรรม และองค์กรเอกชน ในเรื่องความความรู้ความสามารถของนักวิจัยที่เข้าร่วมโครงการแลกเปลี่ยนบุคลากรกับมหาวิทยาลัยของท่าน</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_4_12" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_12" value="1" id="SEL_4_4_1201" onchange="changeTheText(this.value,'<%= TXT_4_4_12.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_12" value="2" id="SEL_4_4_1202" onchange="changeTheText(this.value,'<%= TXT_4_4_12.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_12" value="3" id="SEL_4_4_1203" onchange="changeTheText(this.value,'<%= TXT_4_4_12.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_12" value="4" id="SEL_4_4_1204" onchange="changeTheText(this.value,'<%= TXT_4_4_12.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_12" value="5" id="SEL_4_4_1205" onchange="changeTheText(this.value,'<%= TXT_4_4_12.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>4.13 การเข้าร่วมโครงการ Talent Mobility ส่งผลต่อการยอมรับทางสังคมของนักวิจัยที่เข้าร่วมโครงการแลกเปลี่ยนบุคลากรกับมหาวิทยาลัยของท่าน</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_4_13" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_13" value="1" id="SEL_4_4_1301" onchange="changeTheText(this.value,'<%= TXT_4_4_13.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_13" value="2" id="SEL_4_4_1302" onchange="changeTheText(this.value,'<%= TXT_4_4_13.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_13" value="3" id="SEL_4_4_1303" onchange="changeTheText(this.value,'<%= TXT_4_4_13.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_13" value="4" id="SEL_4_4_1304" onchange="changeTheText(this.value,'<%= TXT_4_4_13.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_13" value="5" id="SEL_4_4_1305" onchange="changeTheText(this.value,'<%= TXT_4_4_13.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>4.14 การเข้าร่วมโครงการ Talent Mobility ส่งผลต่อความมั่นคงทางวิชาชีพและโอกาสอื่น ๆ ในอนาคตของนักวิจัย (Future Security and Opportunity) ที่เข้าร่วมโครงการแลกเปลี่ยนบุคลากรกับมหาวิทยาลัยของท่าน</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_4_14" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_14" value="1" id="SEL_4_4_1401" onchange="changeTheText(this.value,'<%= TXT_4_4_14.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_14" value="2" id="SEL_4_4_1402" onchange="changeTheText(this.value,'<%= TXT_4_4_14.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_14" value="3" id="SEL_4_4_1403" onchange="changeTheText(this.value,'<%= TXT_4_4_14.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_14" value="4" id="SEL_4_4_1404" onchange="changeTheText(this.value,'<%= TXT_4_4_14.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_14" value="5" id="SEL_4_4_1405" onchange="changeTheText(this.value,'<%= TXT_4_4_14.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>4.15 การเข้าร่วมโครงการ Talent Mobility ส่งผลต่อทัศนคติที่ดีของเพื่อนนักวิจัย (Peers’ Attitude) ให้มีความสนใจในการเข้าร่วมโครงการ เช่นเดียวกับนักวิจัยที่เข้าร่วมโครงการแลกเปลี่ยนบุคลากรกับมหาวิทยาลัยของท่าน</td>
                                                    <td style="text-align: center">
                                                        <asp:HiddenField ID="TXT_4_4_15" runat="server" Visible="true" />
                                                        <div class="btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_15" value="1" id="SEL_4_4_1501" onchange="changeTheText(this.value,'<%= TXT_4_4_15.ClientID %>')" autocomplete="off">1
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_15" value="2" id="SEL_4_4_1502" onchange="changeTheText(this.value,'<%= TXT_4_4_15.ClientID %>')" autocomplete="off">2
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_15" value="3" id="SEL_4_4_1503" onchange="changeTheText(this.value,'<%= TXT_4_4_15.ClientID %>')" autocomplete="off">3
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_15" value="4" id="SEL_4_4_1504" onchange="changeTheText(this.value,'<%= TXT_4_4_15.ClientID %>')" autocomplete="off">4
                                                            </label>
                                                            <label class="btn btn-light btn-circle">
                                                                <input type="radio" name="OPTION_4_4_15" value="5" id="SEL_4_4_1505" onchange="changeTheText(this.value,'<%= TXT_4_4_15.ClientID %>')" autocomplete="off">5
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>

            <!-- 5 -->
            <div class="card" style="margin-bottom: 15px">
                <div class="card-header" id="HEAD_5">
                    <h5 class="mb-0"><strong>ส่วนที่ 5</strong> ทัศนคติต่อการสนับสนุนด้านอื่น ๆ สำหรับโครงการเคลื่อนย้ายบุคลากรด้านวิจัยจากมหาวิทยาลัยไปปฎิบัติงานในภาคอุตสาหกรรมของประเทศไทย (Talent Mobility)</h5>
                </div>

                <div id="COLL_5" class="collapse show" aria-labelledby="HEAD_5" data-parent="#accordion">
                    <div class="card-body">
                        <div class="row" style="margin-bottom: 15px">
                            <div class="col-md-6">
                                12. มหาวิทยาลัยคิดว่าการมีเครื่องมือ/โปรแกรม/แอพพลิเคชั่นในการแนะนำรูปแบบและแนวทางการเข้าร่วมโครงการแบบ Best Practice ของการแลกเปลี่ยนบุคลากรนักวิจัยระหว่างมหาวิทยาลัยและอุตสาหกรรม ในรูปแบบต่าง ๆ รวมถึงโครงการ Talent Mobility นั้นมีประโยชน์หรือไม่
                            </div>
                            <div class="col-md-3">
                                <div class="custom-control custom-radio">
                                    <input type="radio" id="SEL_5_01_01" name="OPTION_5_01" class="custom-control-input">
                                    <label class="custom-control-label" for="SEL_5_01_01">มีประโยชน์</label>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="custom-control custom-radio">
                                    <input type="radio" id="SEL_5_01_02" name="OPTION_5_01" class="custom-control-input">
                                    <label class="custom-control-label" for="SEL_3_01_02">ไม่มีประโยชน์</label>
                                </div>

                            </div>
                        </div>

                        <div class="row" style="margin-bottom: 15px">
                            <div class="col-md-6">
                                13. มหาวิทยาลัยคิดว่าหากมหาวิทยาลัยมีเครื่องมือ/โปรแกรม/แอพพลิเคชั่นระบบประเมินองค์กรเพื่อการแบ่งปันบุคลากรผู้เชี่ยวชาญทางด้านวิทยาศาสตร์ เทคโนโลยี และนวัตกรรม ระหว่างมหาวิทยาลัยและอุตสาหกรรม แล้วมหาวิทยาลัยต้องการใช้หรือไม่
                            </div>
                            <div class="col-md-3">
                                <div class="custom-control custom-radio">
                                    <input type="radio" id="SEL_5_02_01" name="OPTION_5_02" class="custom-control-input">
                                    <label class="custom-control-label" for="SEL_5_02_01">ต้องการ</label>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="custom-control custom-radio">
                                    <input type="radio" id="SEL_5_02_02" name="OPTION_5_02" class="custom-control-input">
                                    <label class="custom-control-label" for="SEL_5_02_02">ไม่ต้องการ</label>
                                </div>

                            </div>
                        </div>

                        14. โปรดให้คะแนนระดับความสนใจ
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th scope="col">หัวข้อ</th>
                                        <th scope="col" width="40%" style="text-align: center;">ระดับความสนใจ (1 = น้อยที่สุด, 5 = มากที่สุด)</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <tr>
                                        <td>ระดับความสนใจในการเข้าร่วมโครงการเคลื่อนย้ายบุคลากรด้านวิจัยจากมหาวิทยาลัยไปปฎิบัติงานในภาคอุตสาหกรรม (Talent Mobility) (1 = น้อยที่สุด, 5 = มากที่สุด)</td>
                                        <td style="text-align: center">
                                            <asp:HiddenField ID="TXT_5_3" runat="server" Visible="true" />
                                            <div class="btn-group-toggle" data-toggle="buttons">
                                                <label class="btn btn-light btn-circle">
                                                    <input type="radio" name="OPTION_5_3" value="1" id="SEL_5_301" onchange="changeTheText(this.value,'<%= TXT_5_3.ClientID %>')" autocomplete="off">1
                                                </label>
                                                <label class="btn btn-light btn-circle">
                                                    <input type="radio" name="OPTION_5_3" value="2" id="SEL_5_302" onchange="changeTheText(this.value,'<%= TXT_5_3.ClientID %>')" autocomplete="off">2
                                                </label>
                                                <label class="btn btn-light btn-circle">
                                                    <input type="radio" name="OPTION_5_3" value="3" id="SEL_5_303" onchange="changeTheText(this.value,'<%= TXT_5_3.ClientID %>')" autocomplete="off">3
                                                </label>
                                                <label class="btn btn-light btn-circle">
                                                    <input type="radio" name="OPTION_5_3" value="4" id="SEL_5_304" onchange="changeTheText(this.value,'<%= TXT_5_3.ClientID %>')" autocomplete="off">4
                                                </label>
                                                <label class="btn btn-light btn-circle">
                                                    <input type="radio" name="OPTION_5_3" value="5" id="SEL_5_305" onchange="changeTheText(this.value,'<%= TXT_5_3.ClientID %>')" autocomplete="off">5
                                                </label>
                                            </div>
                                        </td>
                                    </tr>




                                </tbody>
                            </table>
                        </div>



                    </div>
                </div>
            </div>

            <!-- 6 -->
            <div class="card" style="margin-bottom: 15px">
                <div class="card-header" id="HEAD_6">
                    <h5 class="mb-0"><strong>ส่วนที่ 6</strong> รูปแบบการแลกเปลี่ยนบุคลากรระหว่างมหาวิทยาลัยและอุตสาหกรรม</h5>
                </div>

                <div id="COLL_6" class="collapse show" aria-labelledby="HEAD_6" data-parent="#accordion">
                    <div class="card-body">
                        15. โปรดให้คะแนนกับรูปแบบต่าง ๆ ที่มหาวิทยาลัยเห็นว่ามีความสำคัญต่อการแลกเปลี่ยนบุคลากรของมหาวิทยาลัยกับอุตสาหกรรม (1 = สำคัญน้อยที่สุด ถึง 5 = สำคัญมากที่สุด) 
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th scope="col">หัวข้อ</th>
                                        <th scope="col" width="40%" style="text-align: center;">ระดับความสำคัญ (1 = น้อยที่สุด, 5 = มากที่สุด)</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <tr>
                                        <td>15.1 การให้คำปรึกษากับหน่วยงานภายนอก (Consultancy and Reach-Out)</td>
                                        <td style="text-align: center">
                                            <asp:HiddenField ID="TXT_6_1" runat="server" Visible="true" />
                                            <div class="btn-group-toggle" data-toggle="buttons">
                                                <label class="btn btn-light btn-circle">
                                                    <input type="radio" name="OPTION_6_1" value="1" id="SEL_6_101" onchange="changeTheText(this.value,'<%= TXT_6_1.ClientID %>')" autocomplete="off">1
                                                </label>
                                                <label class="btn btn-light btn-circle">
                                                    <input type="radio" name="OPTION_6_1" value="2" id="SEL_6_102" onchange="changeTheText(this.value,'<%= TXT_6_1.ClientID %>')" autocomplete="off">2
                                                </label>
                                                <label class="btn btn-light btn-circle">
                                                    <input type="radio" name="OPTION_6_1" value="3" id="SEL_6_103" onchange="changeTheText(this.value,'<%= TXT_6_1.ClientID %>')" autocomplete="off">3
                                                </label>
                                                <label class="btn btn-light btn-circle">
                                                    <input type="radio" name="OPTION_6_1" value="4" id="SEL_6_104" onchange="changeTheText(this.value,'<%= TXT_6_1.ClientID %>')" autocomplete="off">4
                                                </label>
                                                <label class="btn btn-light btn-circle">
                                                    <input type="radio" name="OPTION_6_1" value="5" id="SEL_6_105" onchange="changeTheText(this.value,'<%= TXT_6_1.ClientID %>')" autocomplete="off">5
                                                </label>
                                            </div>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>15.2 การทำวิจัยร่วมหรือรับจ้างทำงานวิจัยให้กับหน่วยงานภายนอก (Collaborative Research and Contract Research)</td>
                                        <td style="text-align: center">
                                            <asp:HiddenField ID="TXT_6_2" runat="server" Visible="true" />
                                            <div class="btn-group-toggle" data-toggle="buttons">
                                                <label class="btn btn-light btn-circle">
                                                    <input type="radio" name="OPTION_6_2" value="1" id="SEL_6_201" onchange="changeTheText(this.value,'<%= TXT_6_2.ClientID %>')" autocomplete="off">1
                                                </label>
                                                <label class="btn btn-light btn-circle">
                                                    <input type="radio" name="OPTION_6_2" value="2" id="SEL_6_202" onchange="changeTheText(this.value,'<%= TXT_6_2.ClientID %>')" autocomplete="off">2
                                                </label>
                                                <label class="btn btn-light btn-circle">
                                                    <input type="radio" name="OPTION_6_2" value="3" id="SEL_6_203" onchange="changeTheText(this.value,'<%= TXT_6_2.ClientID %>')" autocomplete="off">3
                                                </label>
                                                <label class="btn btn-light btn-circle">
                                                    <input type="radio" name="OPTION_6_2" value="4" id="SEL_6_204" onchange="changeTheText(this.value,'<%= TXT_6_2.ClientID %>')" autocomplete="off">4
                                                </label>
                                                <label class="btn btn-light btn-circle">
                                                    <input type="radio" name="OPTION_6_2" value="5" id="SEL_6_205" onchange="changeTheText(this.value,'<%= TXT_6_2.ClientID %>')" autocomplete="off">5
                                                </label>
                                            </div>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>15.3 การถ่ายทอดเทคโนโลยี (Technology Transfer)</td>
                                        <td style="text-align: center">
                                            <asp:HiddenField ID="TXT_6_3" runat="server" Visible="true" />
                                            <div class="btn-group-toggle" data-toggle="buttons">
                                                <label class="btn btn-light btn-circle">
                                                    <input type="radio" name="OPTION_6_3" value="1" id="SEL_6_301" onchange="changeTheText(this.value,'<%= TXT_6_3.ClientID %>')" autocomplete="off">1
                                                </label>
                                                <label class="btn btn-light btn-circle">
                                                    <input type="radio" name="OPTION_6_3" value="2" id="SEL_6_302" onchange="changeTheText(this.value,'<%= TXT_6_3.ClientID %>')" autocomplete="off">2
                                                </label>
                                                <label class="btn btn-light btn-circle">
                                                    <input type="radio" name="OPTION_6_3" value="3" id="SEL_6_303" onchange="changeTheText(this.value,'<%= TXT_6_3.ClientID %>')" autocomplete="off">3
                                                </label>
                                                <label class="btn btn-light btn-circle">
                                                    <input type="radio" name="OPTION_6_3" value="4" id="SEL_6_304" onchange="changeTheText(this.value,'<%= TXT_6_3.ClientID %>')" autocomplete="off">4
                                                </label>
                                                <label class="btn btn-light btn-circle">
                                                    <input type="radio" name="OPTION_6_3" value="5" id="SEL_6_305" onchange="changeTheText(this.value,'<%= TXT_6_3.ClientID %>')" autocomplete="off">5
                                                </label>
                                            </div>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>15.4 การอนุญาตให้ใช้สิทธิ (Licensing)</td>
                                        <td style="text-align: center">
                                            <asp:HiddenField ID="TXT_6_4" runat="server" Visible="true" />
                                            <div class="btn-group-toggle" data-toggle="buttons">
                                                <label class="btn btn-light btn-circle">
                                                    <input type="radio" name="OPTION_6_4" value="1" id="SEL_6_401" onchange="changeTheText(this.value,'<%= TXT_6_4.ClientID %>')" autocomplete="off">1
                                                </label>
                                                <label class="btn btn-light btn-circle">
                                                    <input type="radio" name="OPTION_6_4" value="2" id="SEL_6_402" onchange="changeTheText(this.value,'<%= TXT_6_4.ClientID %>')" autocomplete="off">2
                                                </label>
                                                <label class="btn btn-light btn-circle">
                                                    <input type="radio" name="OPTION_6_4" value="3" id="SEL_6_403" onchange="changeTheText(this.value,'<%= TXT_6_4.ClientID %>')" autocomplete="off">3
                                                </label>
                                                <label class="btn btn-light btn-circle">
                                                    <input type="radio" name="OPTION_6_4" value="4" id="SEL_6_404" onchange="changeTheText(this.value,'<%= TXT_6_4.ClientID %>')" autocomplete="off">4
                                                </label>
                                                <label class="btn btn-light btn-circle">
                                                    <input type="radio" name="OPTION_6_4" value="5" id="SEL_6_405" onchange="changeTheText(this.value,'<%= TXT_6_4.ClientID %>')" autocomplete="off">5
                                                </label>
                                            </div>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>15.5 นักวิชาการผู้ประกอบการ (Academic Entrepreneurship)</td>
                                        <td style="text-align: center">
                                            <asp:HiddenField ID="TXT_6_5" runat="server" Visible="true" />
                                            <div class="btn-group-toggle" data-toggle="buttons">
                                                <label class="btn btn-light btn-circle">
                                                    <input type="radio" name="OPTION_6_5" value="1" id="SEL_6_501" onchange="changeTheText(this.value,'<%= TXT_6_5.ClientID %>')" autocomplete="off">1
                                                </label>
                                                <label class="btn btn-light btn-circle">
                                                    <input type="radio" name="OPTION_6_5" value="2" id="SEL_6_502" onchange="changeTheText(this.value,'<%= TXT_6_5.ClientID %>')" autocomplete="off">2
                                                </label>
                                                <label class="btn btn-light btn-circle">
                                                    <input type="radio" name="OPTION_6_5" value="3" id="SEL_6_503" onchange="changeTheText(this.value,'<%= TXT_6_5.ClientID %>')" autocomplete="off">3
                                                </label>
                                                <label class="btn btn-light btn-circle">
                                                    <input type="radio" name="OPTION_6_5" value="4" id="SEL_6_504" onchange="changeTheText(this.value,'<%= TXT_6_5.ClientID %>')" autocomplete="off">4
                                                </label>
                                                <label class="btn btn-light btn-circle">
                                                    <input type="radio" name="OPTION_6_5" value="5" id="SEL_6_505" onchange="changeTheText(this.value,'<%= TXT_6_5.ClientID %>')" autocomplete="off">5
                                                </label>
                                            </div>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>15.6 โครงการเคลื่อนย้ายบุคลากร (Talent Mobility)</td>
                                        <td style="text-align: center">
                                            <asp:HiddenField ID="TXT_6_6" runat="server" Visible="true" />
                                            <div class="btn-group-toggle" data-toggle="buttons">
                                                <label class="btn btn-light btn-circle">
                                                    <input type="radio" name="OPTION_6_6" value="1" id="SEL_6_601" onchange="changeTheText(this.value,'<%= TXT_6_6.ClientID %>')" autocomplete="off">1
                                                </label>
                                                <label class="btn btn-light btn-circle">
                                                    <input type="radio" name="OPTION_6_6" value="2" id="SEL_6_602" onchange="changeTheText(this.value,'<%= TXT_6_6.ClientID %>')" autocomplete="off">2
                                                </label>
                                                <label class="btn btn-light btn-circle">
                                                    <input type="radio" name="OPTION_6_6" value="3" id="SEL_6_603" onchange="changeTheText(this.value,'<%= TXT_6_6.ClientID %>')" autocomplete="off">3
                                                </label>
                                                <label class="btn btn-light btn-circle">
                                                    <input type="radio" name="OPTION_6_6" value="4" id="SEL_6_604" onchange="changeTheText(this.value,'<%= TXT_6_6.ClientID %>')" autocomplete="off">4
                                                </label>
                                                <label class="btn btn-light btn-circle">
                                                    <input type="radio" name="OPTION_6_6" value="5" id="SEL_6_605" onchange="changeTheText(this.value,'<%= TXT_6_6.ClientID %>')" autocomplete="off">5
                                                </label>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <p></p>
        <asp:Button runat="server" Text="ส่งแบบประเมิน" CssClass="btn btn-primary" OnClick="Unnamed1_Click" />
    </div>

    <div class="modal fade" id="insertResult" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel2" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel2">ข้อความจากระบบ</h5>
                </div>
                <div class="modal-body">
                    <asp:PlaceHolder runat="server" ID="ErrorMessage_ins" Visible="true">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText_ins" />
                        </p>
                    </asp:PlaceHolder>

                    <asp:PlaceHolder runat="server" ID="SuccessMessage_ins" Visible="true">
                        <p class="text-success">
                            <asp:Literal runat="server" ID="SuccessText_ins" />
                        </p>
                    </asp:PlaceHolder>
                </div>
                <div class="modal-footer">
                    <asp:PlaceHolder runat="server" ID="FailBtn" Visible="true">
                        <button type="button" class="btn btn-primary" data-dismiss="modal">ปิดกล่องข้อความ</button>
                    </asp:PlaceHolder>
                    <asp:PlaceHolder runat="server" ID="SuccessBtn" Visible="true">
                        <a class="btn btn-primary" href="../Evaluation/ResultEval1">ดูผลประเมิน</a>
                    </asp:PlaceHolder>
                </div>
            </div>
        </div>
    </div>

    <script>
        function openModalInsert() {
            $('#insertResult').modal({
                backdrop: 'static',
                keyboard: false
            })

            $('#insertResult').modal('show');
        }

        switch (document.getElementById('<%= ANS_1B_00.ClientID %>').value.toString()) {
            case "UNIVA01": $("#SEL_1B_0101").prop("checked", true); break;
            case "UNIVA02": $("#SEL_1B_0102").prop("checked", true); break;
            case "UNIVA03": $("#SEL_1B_0103").prop("checked", true); break;
            case "UNIVA04": $("#SEL_1B_0104").prop("checked", true); break;
            case "UNIVA05": $("#SEL_1B_0105").prop("checked", true); break;
            case "UNIVA06": $("#SEL_1B_0106").prop("checked", true); break;
            case "UNIVA07": $("#SEL_1B_0107").prop("checked", true); break;
            case "UNIVA08": $("#SEL_1B_0108").prop("checked", true); break;
            case "UNIVA09": $("#SEL_1B_0109").prop("checked", true); break;

            case "UNIVB01": $("#SEL_1B_0201").prop("checked", true); break;
            case "UNIVB02": $("#SEL_1B_0202").prop("checked", true); break;
            case "UNIVB03": $("#SEL_1B_0203").prop("checked", true); break;
            case "UNIVB04": $("#SEL_1B_0204").prop("checked", true); break;
            case "UNIVB05": $("#SEL_1B_0205").prop("checked", true); break;

            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_01_01.ClientID %>').value)) {
            case 1: $('#SEL_4_1_0101').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_1_0102').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_1_0103').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_1_0104').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_1_0105').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_01_02.ClientID %>').value)) {
            case 1: $('#SEL_4_1_0201').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_1_0202').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_1_0203').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_1_0204').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_1_0205').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_01_03.ClientID %>').value)) {
            case 1: $('#SEL_4_1_0301').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_1_0302').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_1_0303').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_1_0304').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_1_0305').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_1_04.ClientID %>').value)) {
            case 1: $('#SEL_4_1_0401').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_1_0402').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_1_0403').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_1_0404').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_1_0405').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_1_05.ClientID %>').value)) {
            case 1: $('#SEL_4_1_0501').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_1_0502').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_1_0503').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_1_0504').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_1_0505').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_1_06.ClientID %>').value)) {
            case 1: $('#SEL_4_1_0601').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_1_0602').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_1_0603').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_1_0604').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_1_0605').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_1_07.ClientID %>').value)) {
            case 1: $('#SEL_4_1_0701').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_1_0702').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_1_0703').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_1_0704').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_1_0705').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_1_08.ClientID %>').value)) {
            case 1: $('#SEL_4_1_0801').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_1_0802').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_1_0803').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_1_0804').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_1_0805').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_1_09.ClientID %>').value)) {
            case 1: $('#SEL_4_1_0901').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_1_0902').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_1_0903').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_1_0904').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_1_0905').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_1_10.ClientID %>').value)) {
            case 1: $('#SEL_4_1_1001').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_1_1002').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_1_1003').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_1_1004').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_1_1005').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_1_11.ClientID %>').value)) {
            case 1: $('#SEL_4_1_1101').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_1_1102').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_1_1103').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_1_1104').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_1_1105').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_1_12.ClientID %>').value)) {
            case 1: $('#SEL_4_1_1201').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_1_1202').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_1_1203').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_1_1204').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_1_1205').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_1_13.ClientID %>').value)) {
            case 1: $('#SEL_4_1_1301').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_1_1302').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_1_1303').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_1_1304').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_1_1305').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_2_1.ClientID %>').value)) {
            case 1: $('#SEL_4_2_101').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_2_102').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_2_103').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_2_104').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_2_105').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_2_2.ClientID %>').value)) {
            case 1: $('#SEL_4_2_201').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_2_202').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_2_203').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_2_204').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_2_205').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_2_3.ClientID %>').value)) {
            case 1: $('#SEL_4_2_301').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_2_302').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_2_303').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_2_304').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_2_305').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_2_4.ClientID %>').value)) {
            case 1: $('#SEL_4_2_401').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_2_402').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_2_403').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_2_404').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_2_405').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_3_1.ClientID %>').value)) {
            case 1: $('#SEL_4_3_101').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_3_102').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_3_103').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_3_104').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_3_105').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_3_2.ClientID %>').value)) {
            case 1: $('#SEL_4_3_201').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_3_202').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_3_203').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_3_204').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_3_205').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_3_3.ClientID %>').value)) {
            case 1: $('#SEL_4_3_301').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_3_302').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_3_303').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_3_304').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_3_305').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_3_4.ClientID %>').value)) {
            case 1: $('#SEL_4_3_401').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_3_402').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_3_403').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_3_404').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_3_405').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_3_5.ClientID %>').value)) {
            case 1: $('#SEL_4_3_501').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_3_502').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_3_503').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_3_504').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_3_505').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_3_6.ClientID %>').value)) {
            case 1: $('#SEL_4_3_601').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_3_602').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_3_603').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_3_604').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_3_605').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_3_7.ClientID %>').value)) {
            case 1: $('#SEL_4_3_701').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_3_702').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_3_703').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_3_704').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_3_705').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_4_1.ClientID %>').value)) {
            case 1: $('#SEL_4_4_101').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_4_102').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_4_103').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_4_104').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_4_105').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_4_2.ClientID %>').value)) {
            case 1: $('#SEL_4_4_201').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_4_202').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_4_203').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_4_204').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_4_205').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_4_3.ClientID %>').value)) {
            case 1: $('#SEL_4_4_301').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_4_302').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_4_303').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_4_304').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_4_305').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_4_4.ClientID %>').value)) {
            case 1: $('#SEL_4_4_401').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_4_402').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_4_403').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_4_404').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_4_405').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_4_5.ClientID %>').value)) {
            case 1: $('#SEL_4_4_501').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_4_502').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_4_503').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_4_504').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_4_505').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_4_6.ClientID %>').value)) {
            case 1: $('#SEL_4_4_601').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_4_602').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_4_603').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_4_604').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_4_605').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_4_7.ClientID %>').value)) {
            case 1: $('#SEL_4_4_701').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_4_702').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_4_703').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_4_704').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_4_705').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_4_8.ClientID %>').value)) {
            case 1: $('#SEL_4_4_801').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_4_802').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_4_803').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_4_804').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_4_805').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_4_9.ClientID %>').value)) {
            case 1: $('#SEL_4_4_901').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_4_902').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_4_903').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_4_904').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_4_905').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_4_10.ClientID %>').value)) {
            case 1: $('#SEL_4_4_1001').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_4_1002').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_4_1003').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_4_1004').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_4_1005').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_4_11.ClientID %>').value)) {
            case 1: $('#SEL_4_4_1101').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_4_1102').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_4_1103').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_4_1104').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_4_1105').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_4_12.ClientID %>').value)) {
            case 1: $('#SEL_4_4_1201').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_4_1202').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_4_1203').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_4_1204').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_4_1205').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_4_13.ClientID %>').value)) {
            case 1: $('#SEL_4_4_1301').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_4_1302').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_4_1303').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_4_1304').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_4_1305').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_4_14.ClientID %>').value)) {
            case 1: $('#SEL_4_4_1401').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_4_1402').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_4_1403').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_4_1404').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_4_1405').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_4_15.ClientID %>').value)) {
            case 1: $('#SEL_4_4_1501').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_4_1502').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_4_1503').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_4_1504').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_4_1505').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_4_16.ClientID %>').value)) {
            case 1: $('#SEL_4_4_1601').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_4_1602').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_4_1603').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_4_1604').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_4_1605').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_4_17.ClientID %>').value)) {
            case 1: $('#SEL_4_4_1701').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_4_1702').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_4_1703').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_4_1704').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_4_1705').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_4_18.ClientID %>').value)) {
            case 1: $('#SEL_4_4_1801').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_4_1802').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_4_1803').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_4_1804').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_4_1805').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_4_19.ClientID %>').value)) {
            case 1: $('#SEL_4_4_1901').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_4_1902').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_4_1903').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_4_1904').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_4_1905').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_4_20.ClientID %>').value)) {
            case 1: $('#SEL_4_4_2001').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_4_2002').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_4_2003').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_4_2004').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_4_2005').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_4_21.ClientID %>').value)) {
            case 1: $('#SEL_4_4_2101').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_4_2102').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_4_2103').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_4_2104').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_4_2105').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_4_22.ClientID %>').value)) {
            case 1: $('#SEL_4_4_2201').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_4_2202').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_4_2203').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_4_2204').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_4_2205').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_4_23.ClientID %>').value)) {
            case 1: $('#SEL_4_4_2301').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_4_2302').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_4_2303').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_4_2304').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_4_2305').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_4_4_24.ClientID %>').value)) {
            case 1: $('#SEL_4_4_2401').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_4_4_2402').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_4_4_2403').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_4_4_2404').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_4_4_2405').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_5_3.ClientID %>').value)) {
            case 1: $('#SEL_5_301').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_5_302').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_5_303').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_5_304').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_5_305').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_6_1.ClientID %>').value)) {
            case 1: $('#SEL_6_101').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_6_102').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_6_103').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_6_104').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_6_105').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_6_2.ClientID %>').value)) {
            case 1: $('#SEL_6_201').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_6_202').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_6_203').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_6_204').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_6_205').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_6_3.ClientID %>').value)) {
            case 1: $('#SEL_6_301').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_6_302').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_6_303').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_6_304').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_6_305').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_6_4.ClientID %>').value)) {
            case 1: $('#SEL_6_401').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_6_402').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_6_403').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_6_404').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_6_405').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_6_5.ClientID %>').value)) {
            case 1: $('#SEL_6_501').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_6_502').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_6_503').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_6_504').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_6_505').parents('.btn').button('toggle'); break;
            default:
        }

        switch (parseInt(document.getElementById('<%= TXT_6_6.ClientID %>').value)) {
            case 1: $('#SEL_6_601').parents('.btn').button('toggle'); break;
            case 2: $('#SEL_6_602').parents('.btn').button('toggle'); break;
            case 3: $('#SEL_6_603').parents('.btn').button('toggle'); break;
            case 4: $('#SEL_6_604').parents('.btn').button('toggle'); break;
            case 5: $('#SEL_6_605').parents('.btn').button('toggle'); break;
            default:
        }

        function changeTheText(theValue, control) {
            //console.log(theValue)
            document.getElementById(control).value = theValue;
        }

    </script>

</asp:Content>
