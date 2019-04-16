<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ResultEval1.aspx.cs" Inherits="InnovationThesis.Evaluation.ResultEval1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="../Scripts/Chart.js"></script>
    <script src="../Scripts/Chart.RadialGauge.umd.min.js"></script>
    <div style="margin-top: 30px">
        <h2>ผลการประเมินแบบสอบถามนวัตกรรมระบบประเมินองค์กร</h2>
        <h3>เรื่อง การประเมินความต้องการและปัจจัยที่มีอิทธิพลต่อการตัดสินใจเข้าร่วมโครงการเคลื่อนย้ายบุคลากรด้านวิจัย
จากมหาวิทยาลัยไปปฎิบัติงานในภาคอุตสาหกรรมของประเทศไทย (Talent Mobility)
        </h3>
        <p></p>
        <div class="row">
            <div class="col-md-8 col-lg-5">
                <asp:HiddenField runat="server" ID="s_PointU1" Value="" />
                <asp:HiddenField runat="server" ID="s_PointU2" Value="" />
                <asp:HiddenField runat="server" ID="s_PointU3" Value="" />
                <asp:HiddenField runat="server" ID="s_PointU4" Value="" />
                <asp:HiddenField runat="server" ID="s_PointI1" Value="" />
                <asp:HiddenField runat="server" ID="s_PointI2" Value="" />
                <asp:HiddenField runat="server" ID="s_PointI3" Value="" />
                <asp:HiddenField runat="server" ID="s_PointI4" Value="" />
                <asp:HiddenField runat="server" ID="s_PointR1" Value="" />
                <asp:HiddenField runat="server" ID="s_PointR2" Value="" />
                <asp:HiddenField runat="server" ID="s_PointR3" Value="" />
                <asp:HiddenField runat="server" ID="s_PointR4" Value="" />

                <asp:HiddenField runat="server" ID="a_PointU1" Value="" />
                <asp:HiddenField runat="server" ID="a_PointU2" Value="" />
                <asp:HiddenField runat="server" ID="a_PointU3" Value="" />
                <asp:HiddenField runat="server" ID="a_PointU4" Value="" />
                <asp:HiddenField runat="server" ID="a_PointI1" Value="" />
                <asp:HiddenField runat="server" ID="a_PointI2" Value="" />
                <asp:HiddenField runat="server" ID="a_PointI3" Value="" />
                <asp:HiddenField runat="server" ID="a_PointI4" Value="" />
                <asp:HiddenField runat="server" ID="a_PointR1" Value="" />
                <asp:HiddenField runat="server" ID="a_PointR2" Value="" />
                <asp:HiddenField runat="server" ID="a_PointR3" Value="" />
                <asp:HiddenField runat="server" ID="a_PointR4" Value="" />

                <canvas id="myChart" height="250"></canvas>
                <p></p>
            </div>
            <div class="col-md-4 col-lg-6">
                <h4>วันที่ประเมิน:</h4>
                <h3><asp:Label runat="server" ID="lbDate"></asp:Label></h3>

                <h4>รายละเอียดผลการประเมิน</h4>
                <table class="table" style="font-size: 15px;">
                    <thead>
                        <tr>
                            <th scope="col">หัวข้อ</th>
                            <th scope="col">คำอธิบาย</th>
                            <th scope="col">คะแนนของท่าน</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">ปัจจัย-1</th>
                            <td>กลุ่มปัจจัยด้านองค์กร และการบริหารจัดการองค์กร
                                <br />
                                (Organizational Factor)
                            </td>
                            <td style="text-align: center">
                                <h4>
                                    <asp:Label ID="lblU1" runat="server">0</asp:Label></h4>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">ปัจจัย-2</th>
                            <td>กลุ่มปัจจัยด้านกระบวนการทำงานขององค์กร<br />
                                (Process Factor)
                            </td>
                            <td style="text-align: center">
                                <h4>
                                    <asp:Label ID="lblU2" runat="server">0</asp:Label></h4>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">ปัจจัย-3</th>
                            <td>กลุ่มปัจจัยภายในองค์กร<br />
                                (Internal Factor)
                            </td>
                            <td style="text-align: center">
                                <h4>
                                    <asp:Label ID="lblU3" runat="server">0</asp:Label></h4>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">ปัจจัย-4</th>
                            <td>กลุ่มปัจจัยด้านทรัพยากรบุคคล<br />
                                (Human Resources Factor)
                            </td>
                            <td style="text-align: center">
                                <h4>
                                    <asp:Label ID="lblU4" runat="server">0</asp:Label></h4>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="row">
            <div class="col-md-8 col-lg-5">

                <canvas id="chart-areaxx" height="150"></canvas>
                <p></p>
            </div>
            <div class="col-md-4 col-lg-6">
                <h4>ผลการประเมินรวม</h4>
                <p>
                    <div>
                        <asp:Label runat="server" ID="lbTotalDesc"></asp:Label>
                    </div>
                </p>
                <p>
                    <input type="button" class="btn btn-primary" onclick="window.print();" value="พิมพ์ผลการประเมิน" />
                    <asp:Button CssClass="btn btn-primary" ID="btnSendMail" runat="server" Text="ส่งผลประเมินทางอีเมล" OnClick="btnSendMail_Click" />
                </p>
            </div>
        </div>

        <div style="margin-top: 20px;">
            <h2>แบบสำรวจการยอมรับนวัตกรรม</h2>
            <p>
                ขอความกรุณาตอบแบบสอบถามเพื่อให้ทราบถึงคุณลักษณะของโปรแกรม เพื่อผู้วิจัยนำมาปรับปรุงให้มีประสิทธิภาพที่เหมาะสมกับกลุ่มเป้าหมายที่ต้องใช้งานโปรแกรม
            </p>
            <p>
                <a class="btn btn-secondary" target="_blank" href="https://forms.gle/r5UrrCJMwt8CZVyJ8">ทำแบบสำรวจ &raquo;</a>
            </p>
        </div>

        <script>
            var self_pointU1 = parseFloat(document.getElementById('<%= s_PointU1.ClientID %>').value);
            var self_pointU2 = parseFloat(document.getElementById('<%= s_PointU2.ClientID %>').value);
            var self_pointU3 = parseFloat(document.getElementById('<%= s_PointU3.ClientID %>').value);
            var self_pointU4 = parseFloat(document.getElementById('<%= s_PointU4.ClientID %>').value);
            var self_pointI1 = parseFloat(document.getElementById('<%= s_PointI1.ClientID %>').value);
            var self_pointI2 = parseFloat(document.getElementById('<%= s_PointI2.ClientID %>').value);
            var self_pointI3 = parseFloat(document.getElementById('<%= s_PointI3.ClientID %>').value);
            var self_pointI4 = parseFloat(document.getElementById('<%= s_PointI4.ClientID %>').value);
            var self_pointR1 = parseFloat(document.getElementById('<%= s_PointR1.ClientID %>').value);
            var self_pointR2 = parseFloat(document.getElementById('<%= s_PointR2.ClientID %>').value);
            var self_pointR3 = parseFloat(document.getElementById('<%= s_PointR3.ClientID %>').value);
            var self_pointR4 = parseFloat(document.getElementById('<%= s_PointR4.ClientID %>').value);

            var avg_pointU1 = parseFloat(document.getElementById('<%= a_PointU1.ClientID %>').value);
            var avg_pointU2 = parseFloat(document.getElementById('<%= a_PointU2.ClientID %>').value);
            var avg_pointU3 = parseFloat(document.getElementById('<%= a_PointU3.ClientID %>').value);
            var avg_pointU4 = parseFloat(document.getElementById('<%= a_PointU4.ClientID %>').value);
            var avg_pointI1 = parseFloat(document.getElementById('<%= a_PointI1.ClientID %>').value);
            var avg_pointI2 = parseFloat(document.getElementById('<%= a_PointI2.ClientID %>').value);
            var avg_pointI3 = parseFloat(document.getElementById('<%= a_PointI3.ClientID %>').value);
            var avg_pointI4 = parseFloat(document.getElementById('<%= a_PointI4.ClientID %>').value);
            var avg_pointR1 = parseFloat(document.getElementById('<%= a_PointR1.ClientID %>').value);
            var avg_pointR2 = parseFloat(document.getElementById('<%= a_PointR2.ClientID %>').value);
            var avg_pointR3 = parseFloat(document.getElementById('<%= a_PointR3.ClientID %>').value);
            var avg_pointR4 = parseFloat(document.getElementById('<%= a_PointR4.ClientID %>').value);
            //alert(x);
            Chart.defaults.global.defaultFontFamily = "'Kanit', sans-serif";
            Chart.defaults.global.defaultFontSize = 15;
            var ctx = document.getElementById('myChart').getContext('2d');
            var myRadarChart = new Chart(ctx, {
                type: 'radar',
                data: {
                    labels: ["U-1", "U-2", "U-3", "U-4"],
                    datasets: [{
                        label: "ผลประเมินของท่าน",
                        data: [self_pointU1, self_pointU2, self_pointU3, self_pointU4],
                        fill:true,
                        backgroundColor: [
                            'rgba(0, 173, 255, .2)',
                        ],
                        borderColor: [
                            'rgba(0, 173, 255, .7)',
                        ],
                        borderWidth: 2
                    },
                    {
                        label: "ผลประเมินเฉลี่ย",
                        data: [avg_pointU1, avg_pointU2, avg_pointU3, avg_pointU4],
                        backgroundColor: [
                            'rgba(255, 193, 7, .2)',
                        ],
                        borderColor: [
                            'rgba(255, 193, 7, .7)',
                        ],
                        borderWidth: 2
                    }
                    ]
                },
                options: {
                    responsive: true,
                    scale: {
                        ticks: {
                            beginAtZero: true,
                            max: 5
                        },
                        pointLabels: {
                            fontSize: 15
                        }
                    }
                },
                pointLabelFontSize: '50px'
            });

            var total = (self_pointU1 * 4) + (self_pointU2 * 3) + (self_pointU3 * 2) + (self_pointU4 * 1);
            total = total * 2;
            total = parseFloat(Math.round(total * 100) / 100).toFixed(2);
            var ctx2 = document.getElementById("chart-areaxx").getContext("2d");
            var gradientStroke = ctx2.createLinearGradient(500, 0, 100, 0);
            gradientStroke.addColorStop(1, "#92f480");
            gradientStroke.addColorStop(0, "#f49080");

            var config2 = {
                type: "radialGauge",
                data: {
                    labels: ["คะแนน"],
                    datasets: [
                        {
                            data: [total],
                            backgroundColor: [gradientStroke],
                            borderWidth: 0,
                            label: "คะแนนรวม"
                        }
                    ]
                },
                options: {
                    responsive: true,
                    legend: {},
                    title: {
                        display: true,
                        text: "คะแนนรวมของท่าน"
                    },
                    centerPercentage: 80
                }
            };

            var myRadarChart = new Chart(ctx2, config2);

        </script>
    </div>
</asp:Content>
