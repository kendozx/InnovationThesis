<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EvaluationList.aspx.cs" Inherits="InnovationThesis.Evaluation.EvaluationList" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-top: 30px">
        <h2>นวัตกรรมระบบประเมินมหาวิทยาลัย<br />
            เพื่อการแบ่งปันบุคลากรสู่อุตสาหกรรม</h2>
        <h3>รายการประเมินใหม่</h3>
        <p></p>

        <div class="card" style="width: 18rem;">
            <img class="card-img-top" src="../images/research-sm.jpg">
            <div class="card-body">
                <h5 class="card-title">แบบสอบถามนวัตกรรมระบบประเมินองค์กร</h5>
                <div class="row">
                    <div class="col-md-7">
                        <p>วันสิ้นสุด:<br />
                            30 เมษายน 2562</p>
                    </div>
                    <div class="col-md-5">
                        <h2></h2>
                    </div>
                </div>
                <a href="../Evaluation/Eval1" class="btn btn-primary">ทำแบบประเมิน</a>
            </div>
        </div>
    </div>

</asp:Content>
