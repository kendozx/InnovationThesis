<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="InnovationThesis.Account.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div style="margin-top: 30px">

        <h2>จัดการข้อมูล</h2>
        <h5>ท่านสามารถแก้ไขข้อมูลทั่วไปได้และข้อมูลด้านความปลอดภัยได้ที่นี่</h5>


        <ul class="nav nav-tabs">
            <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#menu1">ข้อมูลทั่วไป</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#menu2">ข้อมูลด้านความปลอดภัย</a>
            </li>
        </ul>



        <!-- Tab panes -->
        <div class="tab-content">
            <div class="tab-pane container active" id="menu1">
                <p></p>
                <form>

                    <div class="form-group row">
                        <asp:Label runat="server" AssociatedControlID="eduASP" CssClass="col-sm-3  col-xl-2 col-lg-2 col-form-label">ระดับการศึกษา</asp:Label>
                        <div class="col-sm-9">
                            <asp:DropDownList runat="server" ID="eduASP" CssClass="form-control" >                              
                                <asp:ListItem Value="edu00">เลือกระดับการศึกษา</asp:ListItem>
                                <asp:ListItem Value="edu01">ปริญญาตรี</asp:ListItem>
                                <asp:ListItem Value="edu02">ปริญญาโท</asp:ListItem>
                                <asp:ListItem Value="edu03">ปริญญาเอก</asp:ListItem>
                                <asp:ListItem Value="edu04">สูงกว่าปริญญาเอก</asp:ListItem>
                            </asp:DropDownList> 
                            <asp:RequiredFieldValidator InitialValue="edu00"
                                ID="rfvDDL_Edu" Display="Dynamic"
                                ControlToValidate="eduASP"
                                runat="server" Text="กรุณาระบุระดับการศึกษา"
                                ErrorMessage="กรุณาระบุระดับการศึกษา"
                                CssClass="text-danger">
                            </asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group row">
                        <asp:Label runat="server" AssociatedControlID="profASP" CssClass="col-sm-3 col-xl-2 col-lg-2 col-form-label">ตำแหน่งทางวิชาการ</asp:Label>
                        <div class="col-sm-9">
                            <asp:DropDownList runat="server" ID="profASP" CssClass="form-control" >                              
                                <asp:ListItem Value="prf00">เลือกตำแหน่งทางวิชาการ</asp:ListItem>
                                <asp:ListItem Value="prf01">อาจารย์</asp:ListItem>
                                <asp:ListItem Value="prf02">ผู้ช่วยศาสตราจารย์ (ผศ.)</asp:ListItem>
                                <asp:ListItem Value="prf03">รองศาสตราจารย์ (รศ.)</asp:ListItem>
                                <asp:ListItem Value="prf04">ศาสตราจารย์ (ศ.)</asp:ListItem>
                                <asp:ListItem Value="prf045">อื่น ๆ</asp:ListItem>
                            </asp:DropDownList> 
                            <asp:RequiredFieldValidator InitialValue="prf00"
                                ID="pefValidate" Display="Dynamic"
                                ControlToValidate="profASP"
                                runat="server" Text="กรุณาระบุตำแหน่งทางวิชาการ"
                                ErrorMessage="กรุณาระบุตำแหน่งทางวิชาการ"
                                CssClass="text-danger">
                            </asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group row">
                        <asp:Label runat="server" AssociatedControlID="deptTxt" CssClass="col-sm-3 col-xl-2 col-lg-2 col-form-label">หน่วยงานที่สังกัด</asp:Label>
                        <div class="col-sm-9">
                            <asp:TextBox runat="server" ID="deptTxt" CssClass="form-control"  />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="deptTxt"
                                CssClass="text-danger" ErrorMessage="กรุณากรอกชื่อหน่วยงาน" Display="Dynamic" />
                        </div>
                    </div>

                    <div class="form-group row">
                        <asp:Label runat="server" AssociatedControlID="mgmtPos" CssClass="col-sm-3 col-xl-2 col-lg-2 col-form-label">ตำแหน่งทางการบริหาร</asp:Label>
                        <div class="col-sm-9">
                            <asp:TextBox runat="server" ID="mgmtPos" CssClass="form-control"  />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="mgmtPos"
                                CssClass="text-danger" ErrorMessage="กรุณากรอกตำแหน่งทางการบริหาร" Display="Dynamic" />
                        </div>
                    </div>

                    <div class="form-group row">
                        <asp:Label runat="server" AssociatedControlID="servYear" CssClass="col-sm-3  col-xl-2 col-lg-2 col-form-label">อายุงาน</asp:Label>
                        <div class="col-sm-9">
                            <asp:DropDownList runat="server" ID="servYear" CssClass="form-control" >                              
                                <asp:ListItem Value="sv00">เลือกอายุงาน</asp:ListItem>
                                <asp:ListItem Value="sv01">ไม่เกิน 5 ปี</asp:ListItem>
                                <asp:ListItem Value="sv02">5 – 10 ปี</asp:ListItem>
                                <asp:ListItem Value="sv03">10 – 15 ปี</asp:ListItem>
                                <asp:ListItem Value="sv04">15 ปีขึ้นไป</asp:ListItem>
                            </asp:DropDownList> 
                            <asp:RequiredFieldValidator InitialValue="sv00"
                                ID="RequiredFieldValidator1" Display="Dynamic"
                                ControlToValidate="servYear"
                                runat="server" Text="กรุณาระบุอายุงาน"
                                ErrorMessage="กรุณาระบุอายุงาน"
                                CssClass="text-danger">
                            </asp:RequiredFieldValidator>
                        </div>
                    </div>
                    
                    <div class="form-group row">
                        <div class="col-sm-10">
                            <asp:Button runat="server" Text="บันทึกข้อมูล" CssClass="btn btn-primary" />
                        </div>
                    </div>
                </form>

            </div>
            <div class="tab-pane container fade" id="menu2">
            </div>
        </div>
    </div>


</asp:Content>
