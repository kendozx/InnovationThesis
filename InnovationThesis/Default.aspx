<%@ Page Title="นวัตกรรมระบบประเมินมหาวิทยาลัย" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="InnovationThesis._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron bgimg">
        <div class="row">
            <div class="col-xl-6 col-lg-8 col-md-10">
                <h2 style="margin-bottom: 150px; margin-top: -10px; text-shadow: 1px 1px 0px whitesmoke;">นวัตกรรมระบบประเมินมหาวิทยาลัยเพื่อการแบ่งปันบุคลากรสู่อุตสาหกรรม </h2>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>แบบประเมินความพร้อมของมหาวิทยาลัย
</h2>
            <p>
                ขอความกรุณาตอบแบบประเมิน วัตถุประสงค์การวิจัยเพื่อประเมินความพร้อมของมหาวิทยาลัยในการเข้าร่วมโครงการเคลื่อนย้ายบุคลากรด้านวิจัยจากมหาวิทยาลัยไปปฎิบัติงานในภาคอุตสาหกรรมของประเทศไทย (Talent Mobility)
            </p>
            <p>
                <a class="btn btn-primary" target="_self" href="../Evaluation/EvaluationList">ทำแบบประเมิน &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>โครงการ Talent Mobility</h2>
            <p>
                โครงการ Talent Mobility หมายถึง โครงการส่งเสริมบุคลากรด้านวิทยาศาสตร์ เทคโนโลยี และนวัตกรรม จากมหาวิทยาลัยและสถาบันวิจัยของภาครัฐ ไปปฏิบัติงานเพื่อเพิ่มขีดความสามารถการแข่งขันในภาคเอกชน เพื่อการวิจัยและพัฒนา, การแก้ปัญหาเชิงเทคนิคและวิศวกรรม, การวิเคราะห์ทดสอบและระบบมาตรฐาน, และการจัดการเทคโนโลยีและนวัตกรรม 
            </p>
            <p>
                <a class="btn btn-default" href="#">อ่านรายละเอียดเพิ่มเติม &raquo;</a>
                <asp:Button runat="server" ID="xlsDl" Text="Excel" OnClick="xlsDl_Click" Visible="False" />
            </p>
        </div>
        <div class="col-md-4">
            <h2>ที่มาและความสำคัญ</h2>
            <p>
                วิทยาศาสตร์ เทคโนโลยี และนวัตกรรม มีบทบาทสำคัญอย่างยิ่งยวดในยุคปัจจุบัน ในการกำหนดทิศทางกระแสโลกาภิวัฒน์ และมีอิทธิพลมากขึ้นเรื่อย ๆ ต่อสังคมและเศรษฐกิจ ในการพัฒนาคุณภาพชีวิตของมนุษย์ อีกทั้งเป็นตัวขับเคลื่อนที่สำคัญทางเศรษฐกิจ สร้างความมั่งคั่ง และความได้เปรียบในการแข่งขันได้อย่างยั่งยืน
            </p>
            <p>
                <a class="btn btn-default" href="#">อ่านรายละเอียดเพิ่มเติม &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
