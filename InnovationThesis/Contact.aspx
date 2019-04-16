<%@ Page Title="ติดต่อนักวิจัย" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="InnovationThesis.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-top: 30px">
        <h2><%: Title %></h2>
        <h5>ท่านสามารถติดต่อนักวิจัยได้ทางช่องทางต่อไปนี้</h5>
        <address>
            One Microsoft Way<br />
            Redmond, WA 98052-6399<br />
            <abbr title="Phone">P:</abbr>
            425.555.0100
        </address>

        <address>
            <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
            <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
        </address>
    </div>
</asp:Content>
