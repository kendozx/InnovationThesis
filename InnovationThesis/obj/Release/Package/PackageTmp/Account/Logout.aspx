<%@ Page Title="ออกจากระบบ" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="InnovationThesis.Account.Logout" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" style="margin-top:20px">
    <hgroup style="margin-top:30px">
        <h2>ออกจากระบบ</h2>
        <p>ออกจากระบบสำเร็จ</p>
        <asp:Button runat="server" Text="กลับสู่หน้าแรก" CssClass="btn btn-primary" OnClick="homeClick" />
    </hgroup>
</asp:Content>
