<%@ Page Title="ลงชื่อเข้าใช้งาน" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="InnovationThesis.Account.Login" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%-- Enable this once you have account confirmation enabled for password reset functionality
                    <asp:HyperLink runat="server" ID="ForgotPasswordHyperLink" ViewStateMode="Disabled">Forgot your password?</asp:HyperLink>
                    --%></h2>

    <div class="row" style="margin-top:30px">
        <div class="col-md-8">
            <section id="loginForm">
                <div class="form-horizontal">
                    <h4>กรุณากรอกข้อมูลเพื่อลงชื่อเข้าใช้งาน</h4>
                    <hr />
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Username" CssClass="col-md-3 control-label">ชื่อผู้ใช้งาน</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Username" CssClass="form-control"  />
                            <asp:RequiredFieldValidator Display="Dynamic" runat="server" ControlToValidate="Username"
                                CssClass="text-danger" ErrorMessage="กรุณากรอกชื่อผู้ใช้งาน" />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-3 control-label">รหัสผ่าน</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator Display="Dynamic" runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="กรุณากรอกรหัสผ่าน" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <asp:Button runat="server" Text="ลงชื่อเข้าใช้" CssClass="btn btn-primary" OnClick="loginClick" />
                        </div>
                    </div>
                </div>

                <p>
                    <%-- Enable this once you have account confirmation enabled for password reset functionality
                    <asp:HyperLink runat="server" ID="ForgotPasswordHyperLink" ViewStateMode="Disabled">Forgot your password?</asp:HyperLink>
                    --%>
                </p>
            </section>
        </div>

    </div>
</asp:Content>
