<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageEval.aspx.cs" Inherits="InnovationThesis.Evaluation.ManageEval" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div style="margin-top: 30px">
        <h2>นวัตกรรมระบบประเมินมหาวิทยาลัย<br />
            เพื่อการแบ่งปันบุคลากรสู่อุตสาหกรรม</h2>
        <h3>ส่งออกข้อมูลแบบประเมิน</h3>
        <p></p>

        <div class="card" style="width: 18rem;">
            <img class="card-img-top" src="../images/research-sm.jpg">
            <div class="card-body">
                <h5 class="card-title">แบบสอบถามนวัตกรรมระบบประเมินองค์กร</h5>
                <div class="row">
                    <div class="col">
                        <p>จำนวนรายการ:&nbsp;<asp:Label runat="server" ID="lbRow"></asp:Label></p>
                    </div>
                </div>
                <asp:LinkButton CssClass="btn btn-primary" runat="server" ID="xptXls" OnClick="xptXls_Click">ส่งออกข้อมูล</asp:LinkButton>
            </div>
        </div>

    </div>

</asp:Content>
