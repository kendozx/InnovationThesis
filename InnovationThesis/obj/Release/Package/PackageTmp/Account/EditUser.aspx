<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditUser.aspx.cs" Inherits="InnovationThesis.Account.EditUser" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.4.0/css/bootstrap4-toggle.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.4.0/js/bootstrap4-toggle.min.js"></script>

    <div style="margin-top: 30px">
        <h2>
            <asp:PlaceHolder runat="server" ID="phTitle"></asp:PlaceHolder>
        </h2>
        <h5>กรุณากรอกข้อมูลให้ครบทุกรายการ</h5>
        <p></p>

        <form>

            <div class="form-group row">
                <asp:Label runat="server" AssociatedControlID="txUser" CssClass="col-sm-3 col-xl-2 col-lg-2 col-form-label">ชื่อผู้ใช้งาน*</asp:Label>
                <div class="col-sm-9">
                    <asp:TextBox runat="server" ID="txUser" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txUser"
                        CssClass="text-danger" ErrorMessage="กรุณากรอกชื่อผู้ใช้งาน" Display="Dynamic" />
                </div>
            </div>

            <div class="form-group row">
                <asp:Label runat="server" AssociatedControlID="txName" CssClass="col-sm-3 col-xl-2 col-lg-2 col-form-label">ชื่อ*</asp:Label>
                <div class="col-sm-9">
                    <asp:TextBox runat="server" ID="txName" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txName"
                        CssClass="text-danger" ErrorMessage="กรุณากรอกชื่อ" Display="Dynamic" />
                </div>
            </div>

            <div class="form-group row">
                <asp:Label runat="server" AssociatedControlID="txEmail" CssClass="col-sm-3 col-xl-2 col-lg-2 col-form-label">อีเมล*</asp:Label>
                <div class="col-sm-9">
                    <asp:TextBox runat="server" ID="txEmail" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txEmail"
                        CssClass="text-danger" ErrorMessage="กรุณากรอกอีเมล" Display="Dynamic" />
                </div>
            </div>

            <asp:HiddenField runat="server" ID="switchToggle2" Value="" />
            <div class="form-group row">
                <asp:Label runat="server" CssClass="col-sm-3  col-xl-2 col-lg-2 col-form-label">สถานะผู้ใช้งาน*</asp:Label>
                <div class="col-sm-9">
                    <input id="switchActive" type="checkbox" checked data-toggle="toggle" data-on="ใช้งานได้" data-off="พักการใช้งาน" data-onstyle="success" data-offstyle="secondary">
                </div>
                <script>
                    $(function () {
                        var sToggle = document.getElementById('<%= switchToggle2.ClientID %>').value
                        if (sToggle == "true") {
                            $('#switchActive').bootstrapToggle('on');
                        } else {
                            $('#switchActive').bootstrapToggle('off');
                        }

                        $('#switchActive').change(function () {
                            document.getElementById('<%= switchToggle2.ClientID %>').value = $(this).prop('checked');
                        })
                    })
                </script>
            </div>

            <div class="form-group row">
                <asp:Label runat="server" AssociatedControlID="userType" CssClass="col-sm-3 col-xl-2 col-lg-2 col-form-label">ประเภทผู้ใช้งาน*</asp:Label>
                <div class="col-sm-9">
                    <asp:DropDownList runat="server" ID="userType" CssClass="form-control">
                        <asp:ListItem Value="">เลือกประเภทผู้ใช้งาน</asp:ListItem>
                        <asp:ListItem Value="user">ผู้ใช้งานทั่วไป</asp:ListItem>
                        <asp:ListItem Value="admin">ผู้ดูแลระบบ</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator InitialValue=""
                        ID="pefValidate" Display="Dynamic"
                        ControlToValidate="userType"
                        runat="server" Text="กรุณาระบุประเภทผู้ใช้งาน"
                        ErrorMessage="กรุณาระบุประเภทผู้ใช้งาน"
                        CssClass="text-danger">
                    </asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group row">
                <div class="col-sm-10">
                    <asp:Button ID="btnCreate" runat="server" Text="สร้างผู้ใช้ใหม่" CssClass="btn btn-primary" OnClick="btnCreate_Click" />
                    <asp:Button ID="btnUpdate" runat="server" Text="บันทึกข้อมูล" CssClass="btn btn-primary" OnClick="Unnamed9_Click" />
                    <asp:Button runat="server" Text="ย้อนกลับ" CssClass="btn btn-secondary" OnClick="Unnamed10_Click" CausesValidation="False" />
                </div>
            </div>
        </form>

    </div>

    <div class="modal fade" id="updateResult" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">ข้อความจากระบบ</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="true">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>

                    <asp:PlaceHolder runat="server" ID="SuccessMessage" Visible="true">
                        <p class="text-success">
                            <asp:Literal runat="server" ID="SuccessText" />
                        </p>
                    </asp:PlaceHolder>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-dismiss="modal">ปิดกล่องข้อความ</button>
                    <a class="btn btn-secondary" href="../Account/UserManagement">ย้อนกลับ</a>
                </div>
            </div>
        </div>
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
                    <a class="btn btn-secondary" href="../Account/UserManagement">ย้อนกลับ</a>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">

 
        function openModal() {
            $('#updateResult').modal('show');
        }

        function openModalInsert() {
            $('#insertResult').modal({
                backdrop: 'static',
                keyboard: false
            })

            $('#insertResult').modal('show');
        }
    </script>

</asp:Content>
