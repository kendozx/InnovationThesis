<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EvalResultList.aspx.cs" Inherits="InnovationThesis.Evaluation.EvalResultList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="../Scripts/Chart.js"></script>
    <script src="../Scripts/Chart.RadialGauge.umd.min.js"></script>
    <div style="margin-top: 30px">
        <h2>นวัตกรรมระบบประเมินมหาวิทยาลัย<br />
            เพื่อการแบ่งปันบุคลากรสู่อุตสาหกรรม</h2>
        <h3>ผลการประเมินย้อนหลัง</h3>
        <p></p>

        <div class="card" style="width: 18rem;">
            <img class="card-img-top" src="../images/research-sm.jpg">
            <div class="card-body">
                <h5 class="card-title">แบบสอบถามนวัตกรรมระบบประเมินองค์กร</h5>
                <div class="row">
                    <div class="col-md-7">
                        <p>วันประเมิน:<br />
                            <asp:Label runat="server" ID="lbDate"></asp:Label></p>
                    </div>
                    <div class="col-md-5">
                       <h2><asp:Label runat="server" ID="lbScore"></asp:Label></h2>
                    </div>
                </div>
                <a href="../Evaluation/ResultEval1" class="btn btn-primary">ดูแบบประเมิน</a>
            </div>
        </div>
    </div>
     
    <script>
            var total = 57
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
                        display: false,
                        text: "คะแนนรวมของท่าน"
                    },
                    centerPercentage: 80
                }
            };

            var myRadarChart = new Chart(ctx2, config2);

        </script>

</asp:Content>
